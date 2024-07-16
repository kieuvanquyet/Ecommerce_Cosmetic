<?php
// include "../header.php";
// include "../footer.php";
?>
<div class="form-container">
    <h2>Thêm danh mục</h2>
    <form action="index.php?act=adddm" method="post">
        <label for="">ID:</label>
        <input type="text" name="maloai" placeholder="ID tự động tăng" disabled>

        <label for="">Name:</label>
        <input type="text" name="tenloai" placeholder="Nhập tên danh mục cần tạo..." required>

        <div class="btn">
            <input type="reset" value="RESET">
            <input type="submit" name="themmoi" value="THÊM MỚI DANH MỤC">
            <a href="index.php?act=listsp"><input type="submit" value="DANH SÁCH DANH MỤC"></a>
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