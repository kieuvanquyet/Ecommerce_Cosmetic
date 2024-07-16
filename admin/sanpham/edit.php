<?php
if (is_array($sanpham)) {
  extract($sanpham);
}
$hinhpath = "../upload/" . $hinh;
if (is_file($hinhpath)) {
  $hinh = "<img src ='" . $hinhpath . "' height='80'>";
} else {
  $hinh = 'no photo';
}
$mota_ban_dau = $mota;
?>
<div class="form-container">
    <h2>Chỉnh sửa sản phẩm</h2>
    <form action="index.php?act=updatesp" method="post" enctype="multipart/form-data">
        <label for="">Danh Mục:</label>
        <select name="iddm" id="" >
            <option value="0">--Chọn danh mục--</option>
            <?php 
                foreach($listdanhmuc as $danhmuc){
                    if ($iddm == $danhmuc['id']) {
                        $s = "selected";
                      } else {
                        $s = "";
                      }
                      echo '<option value="' . $danhmuc['id'] . '" ' . $s . '>' . $danhmuc['name'] . '</option>';
                }
            ?>
        </select>
        <!-- <label for="">ID:</label>
        <input type="text" name="maloai" placeholder="ID tự động tăng" disabled> -->

        <label for="">Tên Sản Phẩm:</label>
        <input type="text" name="tensp" value="<?=$name?>" >

        <label for="">Giá cũ:</label>
        <input type="text" name="giasp" value="<?=$price?>" >
        <label for="">Giá mới:</label>
        <input type="text" name="giamoi" value="<?=$newprice?>" >

        <label for="">Xuất xứ:</label>
        <input type="text" name="xuatxu" value="<?=$xuatxu?>" >

        <label for="">Số lượng:</label>
        <input type="text" name="soluong" value="<?=$soluong?>">
        <label for="">Hình Ảnh: </label>
        <input type="file" name="hinh"  value="<?= $hinh ?>">

        <label for="">Mô Tả:</label>
        <textarea name="mota" id="" cols="30" rows="10" ><?= $mota_ban_dau ?></textarea>
        <input type="hidden" name="id" value="<?= $id ?>">
       

        <div class="btn">
            <input type="reset" value="RESET">
            <input type="submit" name="capnhat" value="UPDATE SẢN PHẨM">
            <a href="index.php?act=listsp"><input type="submit" value="DANH SÁCH SẢN PHẨM"></a>
           
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