
<?php

?>
<div class="form-container">
    <h2>Danh sách sản phẩm</h2>
    <form action="index.php?act=listsp" class="form-locsp" method="POST">
        <input type="text" name="kyw" id="" placeholder="Tìm kiếm...">
        <select name="iddm" id="">
            <option value="0" selected>Tất cả</option>
            <?php
            foreach ($listdanhmuc  as $danhmuc) {
                extract($danhmuc);
                echo ' <option value="' . $id . '">' . $name . '</option>';
            }
            ?>
        </select>
        <input type="submit" name="listok" value="GO">
    </form>
    <div class="contents">
        <div class="content">
             <a href="index.php?act=addsp"  ><input type="button" class="submit" value="THÊM MỚI SẢN PHẨM"></a>
            <table class="danhmuc">
                <tr>
                    
                    <th>Mã loại</th>
                    <th>Tên sản phẩm</th>
                    <th>Hình ảnh</th>
                    <th>Giá cũ</th>
                    <th>Giá mới</th>
                    <th>Xuất xứ</th>
                    <th>Số lượng</th>
                    <th>Danh mục</th>
                    <th>Tùy chỉnh</th>
                </tr>
                <?php
                foreach ($listsanpham as $sanpham) {
                    extract($sanpham);

                    $suasp = "index.php?act=suasp&id=" . $id;
                    $xoasp = "index.php?act=deletesp&id=" . $id;
                    $hinhpath = "../upload/" . $hinh;
                    if(is_file($hinhpath)){
                        $hinh = "<img src ='" . $hinhpath . "' height='80'>";
                    }else{
                        $hinh = "no photo";
                    }
                    echo ' <tr>
                            <td>'.$id.'</td>
                            <td>'.$name.'</td>
                            <td>'.$hinh.'</td>
                            <td>'.$price.'</td>
                            <td>'.$newprice.'</td>
                            <td>'.$xuatxu.'</td>
                            <td>'.$soluong.'</td>
                            <td>'.$danhmuc_name.'</td>
                            <td><a href ="' . $suasp . '"> <input type="button" value="Sửa"></a> 
                            <a href ="' . $xoasp . '"> <input type="button" value="Xóa"></a>
                            </td>
                            
                        </tr>';
                }
                
                
                ?>
            </table>
        </div>
        <!-- <input type="submit" class="submit" value="THÊM MỚI DANH MỤC"> -->
       

    </div>
</div>