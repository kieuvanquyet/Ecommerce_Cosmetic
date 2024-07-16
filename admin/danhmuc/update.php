<?php

if (array($dm)) {
    extract($dm);
}
?>
<div class="form-container">
    <h2>Chỉnh sửa danh mục</h2>
    <form action="index.php?act=updatedm" method="post">
        <label for="">ID:</label>
        <input type="text" name="maloai" placeholder="ID tự động tăng" disabled>

        <label for="">Name:</label>
        <input type="text" name="tenloai" value="<?php if (isset($name) && ($name != "")) echo $name ?>" required>
        <input type="hidden" name="id" value="<?php if (isset($id) && ($id > 0)) echo $id ?>">
        <div class="btn">
            <input type="reset" value="RESET">
            <input type="submit" name="capnhat" value="UPDATE DANH MỤC">
            <a href="index.php?act=listsp"><input type="" value="DANH SÁCH DANH MỤC"></a>
          

        </div>
        <div class="thongbao">
        <?php
        
        if (isset($thongbao) && ($thongbao != "")) {
            echo $thongbao;
        }
        ?>
        </div>
    </form>
</div>