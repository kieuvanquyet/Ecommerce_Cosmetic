<?php
// include "../header.php";
// include "../footer.php";
?>
<div class="form-container">
    <h2>Thêm sản phẩm</h2>
    <form action="index.php?act=addsp" method="post" enctype="multipart/form-data">
        <label for="">Danh Mục:</label>
        <select name="iddm" id="" >
            <option value="0">--Chọn danh mục--</option>
            <?php 
                foreach($listdanhmuc as $danhmuc){
                    extract($danhmuc);
                    echo '<option value="'.$id.'">'.$name.'</option>';
                }
            ?>
        </select>
        <!-- <label for="">ID:</label>
        <input type="text" name="maloai" placeholder="ID tự động tăng" disabled> -->

        <label for="">Tên Sản Phẩm:</label>
        <input type="text" name="tensp" placeholder="Nhập tên sản phẩm..." required>

        <label for="">Giá Cũ:</label>
        <input type="text" name="giasp" placeholder="Nhập giá cũ sản phẩm..." required>
        <label for="">Giá Mới:</label>
        <input type="text" name="giamoi" placeholder="Nhập giá mới sản phẩm..." required>

        <label for="">Xuất xứ:</label>
        <input type="text" name="xuatxu" placeholder="Nhập giá xuất xứ sản phẩm..." required>

        <label for="">Số lượng:</label>
        <input type="text" name="soluong" placeholder="Nhập giá số lượng sản phẩm..." required>

        <label for="">Hình Ảnh:</label>
        <input type="file" name="hinh"  required>

        <label for="">Mô Tả:</label>
        <textarea name="mota" id="" cols="30" rows="10"></textarea>

       

        <div class="btn">
            <input type="reset" value="RESET">
            <input type="submit" name="themmoi" value="THÊM MỚI SẢN PHẨM">
            <a href="index.php?act=listsp"><input type="" value="DANH SÁCH SẢN PHẨM"></a>
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