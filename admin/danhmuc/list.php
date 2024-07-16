
<?php
// include "../header.php";
// include "../footer.php";
?>
<div class="form-container">
    <h2>danh sách danh mục</h2>
    <div class="contents">
        <div class="content">
            <table class="danhmuc">
                <tr>
                    
                    <th>Mã loại</th>
                    <th>Tên loại</th>
                    <th>Tùy chỉnh</th>
                </tr>
                <?php
                foreach ($listdanhmuc as $danhmuc) {
                    extract($danhmuc);
                    $suadm = "index.php?act=suadm&id=" . $id;
                    $xoadm = "index.php?act=deletedm&id=" . $id;
                    echo ' <tr>
                            
                            
                            <td>'.$id.'</td>
                            <td>'.$name.'</td>
                            <td><a href ="' . $suadm . '"> <input type="button" value="Sửa"></a> 
                            <a href ="' . $xoadm . '"> <input type="button" value="Xóa"></a></td>
                            
                        </tr>';
                }
                
                ?>
            </table>
        </div>
        <!-- <input type="submit" class="submit" value="THÊM MỚI DANH MỤC"> -->
        <a href="index.php?act=adddm"  ><input type="button" class="submit" value="THÊM MỚI DANH MỤC"></a>

    </div>
</div>