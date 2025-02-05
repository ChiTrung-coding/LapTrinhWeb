<?php
include 'header.php';
if (!empty($_SESSION['current_user'])) {
    ?>
<div class="main-content">
    <h1><?= !empty($_GET['id']) ? ((!empty($_GET['task']) && $_GET['task'] == "copy") ? "Copy nhân viên" : "Sửa nhân viên") : "Thêm nhân viên" ?>
    </h1>
    <div id="content-box">
        <?php
			if (isset($_GET['action']) && ($_GET['action'] == 'add' || $_GET['action'] == 'edit')) {
           
				if (isset($_POST['username']) && !empty($_POST['username']) 
					&& isset($_POST['password']) && !empty($_POST['password'])
					&& isset($_POST['re_password']) && !empty($_POST['re_password'])) {
					if (empty($_POST['username'])) {
						$error = "Bạn phải nhập tên đăng nhập";
					} elseif (empty($_POST['password'])) {
						$error = "Bạn phải nhập mật khẩu";
					} elseif (empty($_POST['re_password'])) {
						$error = "Bạn phải nhập xác nhận mật khẩu";
					} elseif ($_POST['password'] != $_POST['re_password']) {
						$error = "Mật khẩu xác nhận không khớp";
					}
					if (!isset($error)) {
                        
                        if ($_GET['action'] == 'edit' && !empty($_GET['id'])) { 
                            $result = mysqli_query($con, "UPDATE `user` SET `username` = '" . $_POST['username'] . "',
                            `fullname` =  '" . $_POST['fullname'] . "', `password` = " .  $_POST['password'] . ",`phone` = " .  $_POST['phone'] . ",
                              `created_time` = " . time()." ,`last_updated` = " . time() . 
                             " WHERE `user`.`id` = " . $_GET['id']);
                        } else { 
    
                            $checkExitsUser =  mysqli_query($con, "SELECT * FROM `user` WHERE `username`= '".$_POST['username'].
                            "'");
                        
                              if($checkExitsUser->num_rows != 0){ 
                    		$error = "Username đã tồn tại. Bạn vui lòng chọn username khác";
                              }else{
            
                            $result = mysqli_query($con, "INSERT INTO `user` (`id`, `username`, `fullname`, `password`, `phone`,
                             `created_time`, `last_updated`) VALUES (NULL, '".$_POST['username']."', '".$_POST['fullname']."', '".$_POST['password']."','".$_POST['phone']."'  ,'".time()."', '".time()."');");
                       
                    }

                    }
                        if (isset($result)&&empty($result))  { 
                            $error = "Có lỗi xảy ra trong quá trình thực hiện.";
                        } else { 
                            if (!empty($galleryImages)) {
                                $user_id = ($_GET['action'] == 'edit' && !empty($_GET['id'])) ? $_GET['id'] : $con->insert_id;
                                $insertValues = "";
                                foreach ($galleryImages as $path) {
                                    if (empty($insertValues)) {
                                        $insertValues = "(NULL, " . $user_id . ", '" . $path . "', " . time() . ", " . time() . ")";
                                    } else {
                                        $insertValues .= ",(NULL, " . $user_id . ", '" . $path . "', " . time() . ", " . time() . ")";
                                    }
                                }
                                $result = mysqli_query($con, "INSERT INTO `image_library` (`id`, `user_id`, `path`, `created_time`, `last_updated`) VALUES " . $insertValues . ";");
                            }
                        }
                    }
                } else {
                	$error = "Bạn chưa nhập thông tin nhân viên.";
                }
                ?>
        <div class="container">
            <div class="error"><?= isset($error) ? $error : "Cập nhật thành công" ?></div>
            <a href="user_listing.php">Quay lại danh sách sản phẩm</a>
        </div>
        <?php
            } else {
                if (!empty($_GET['id'])) {
                    $result = mysqli_query($con, "SELECT * FROM `user` WHERE `id` = " . $_GET['id']);
                    $user = $result->fetch_assoc();
                 
                }
                ?>
        <form id="editing-form" method="POST"
            action="<?= (!empty($users) && !isset($_GET['task'])) ? "?action=edit&id=" . $_GET['id'] : "?action=add" ?>"
            enctype="multipart/form-data">
            <input type="submit" title="Lưu nhân viên" value="" />
            <div class="clear-both"></div>
            <div class="wrap-field">
                <label>Tên đăng nhập: </label>
                <input type="text" name="username" value="<?= (!empty($user) ? $user['username'] : "") ?>" />
                <div class="clear-both"></div>
            </div>
            <div class="wrap-field">
                <label>Họ tên: </label>
                <input type="text" name="fullname" value="<?= (!empty($user) ? $user['fullname'] : "") ?>" />
                <div class="clear-both"></div>
            </div>
            <div class="wrap-field">
                <label>Mật khẩu: </label>
                <input type="password" name="password" value="" />
                <div class="clear-both"></div>
            </div>
            <div class="wrap-field">
                <label>Xác nhận mật khẩu: </label>
                <input type="password" name="re_password" value="" />
                <div class="clear-both"></div>
            </div>
            <div class="wrap-field">
                <label>Phone: </label>
                <input type="phone" name="phone" value="<?= (!empty($users) ? $user['phone'] : "") ?>" />
                <div class="clear-both"></div>
            </div>

            <?php } ?>
    </div>
</div>

<?php
}
include './footer.php';
?>