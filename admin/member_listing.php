<?php
include 'header.php';
$config_name = "member";
$config_title = "thành viên";
if (!empty($_SESSION['current_user'])) {
    if(!empty($_GET['action']) && $_GET['action'] == 'search' && !empty($_POST)){
        $_SESSION[$config_name.'_filter'] = $_POST;
        header('Location: '.$config_name.'_listing.php');exit;
    }
    if(!empty($_SESSION[$config_name.'_filter'])){
        $where = "";
        foreach ($_SESSION[$config_name.'_filter'] as $field => $value) {
            if(!empty($value)){
                switch ($field) {
                    case 'username':
                    $where .= (!empty($where))? " AND "."`".$field."` LIKE '%".$value."%'" : "`".$field."` LIKE '%".$value."%'";
                    break;
                    default:
                    $where .= (!empty($where))? " AND "."`".$field."` = ".$value."": "`".$field."` = ".$value."";
                    break;
                }
            }
        }
        extract($_SESSION[$config_name.'_filter']);
    }
    $item_per_page = (!empty($_GET['per_page'])) ? $_GET['per_page'] : 10;
    $current_page = (!empty($_GET['page'])) ? $_GET['page'] : 1;
    $offset = ($current_page - 1) * $item_per_page;
    if(!empty($where)){
        $totalRecords = mysqli_query($con, "SELECT * FROM `member` where (".$where.")");
    }else{
        $totalRecords = mysqli_query($con, "SELECT * FROM `member`");
    }
    $totalRecords = $totalRecords->num_rows;
    $totalPages = ceil($totalRecords / $item_per_page);
    if(!empty($where)){
        $members = mysqli_query($con, "SELECT * FROM `member` where (".$where.") ORDER BY `id` DESC LIMIT " . $item_per_page . " OFFSET " . $offset);
    }else{
        $members = mysqli_query($con, "SELECT * FROM `member` ORDER BY `id` DESC LIMIT " . $item_per_page . " OFFSET " . $offset);
    }
    mysqli_close($con);
    ?>
<div class="main-content">
    <h1>Danh sách <?=$config_title?></h1>
    <div class="listing-items">
        <?php if (checkPrivilege($config_name.'_editing.php')) { ?>
        <div class="buttons">
            <a href="./<?=$config_name?>_editing.php">Thêm <?=$config_title?></a>
        </div>
        <?php } ?>
        <div class="listing-search">
            <form id="<?=$config_name?>-search-form" action="<?=$config_name?>_listing.php?action=search" method="POST">
                <fieldset>
                    <legend>Tìm kiếm <?=$config_title?>:</legend>
                    ID: <input type="text" name="id" value="<?=!empty($id)?$id:""?>" />
                    Tên <?=$config_title?>: <input type="text" name="username" value="<?=!empty($name)?$name:""?>" />
                    <input type="submit" value="Tìm" />
                </fieldset>
            </form>
        </div>
        <div class="total-items">
            <span>Có tất cả <strong><?=$totalRecords?></strong> <?=$config_title?> trên
                <strong><?=$totalPages?></strong> trang</span>
        </div>
        <ul>
            <li class="listing-item-heading">
                <div class="listing-prop listing-name">Email đăng nhập</div>
                <div class="listing-prop listing-name">Tên <?=$config_title?></div>
                <?php if (checkPrivilege($config_name.'_delete.php?id=0')) { ?>
                <div class="listing-prop listing-button">
                    Xóa
                </div>
                <?php } ?>

                <?php if (checkPrivilege($config_name.'_editing.php?id=0')) { ?>
                <div class="listing-prop listing-button">
                    Sửa
                </div>
                <?php } ?>
                <div class="listing-prop listing-time">Ngày tạo</div>
                <div class="listing-prop listing-time">Ngày cập nhật</div>
                <div class="clear-both"></div>
            </li>
            <?php
                while ($row = mysqli_fetch_array($members)) {
                    ?>
            <li>
            <div class="listing-prop listing-name"><?= $row['email'] ?></div>
                <div class="listing-prop listing-name"><?= $row['username'] ?></div>
                <?php if (checkPrivilege($config_name.'_delete.php?id='.$row['id'])) { ?>
                <div class="listing-prop listing-button">
                    <a href="./<?=$config_name?>_delete.php?id=<?= $row['id'] ?>">Xóa</a>
                </div>
                <?php } ?>
                <?php if (checkPrivilege($config_name.'_editing.php?id='.$row['id'])) { ?>
                <div class="listing-prop listing-button">
                    <a href="./<?=$config_name?>_editing.php?id=<?= $row['id'] ?>">Sửa</a>
                </div>
                <?php } ?>
                <div class="listing-prop listing-time"><?= date('d/m/Y H:i', $row['created_time']) ?></div>
                <div class="listing-prop listing-time"><?= date('d/m/Y H:i', $row['last_updated']) ?></div>
                <div class="clear-both"></div>

            </li>
            <?php } ?>
        </ul>
        <?php
            include './pagination.php';
            ?>
        <div class="clear-both"></div>
    </div>
</div>
<?php
}
include './footer.php';
?>