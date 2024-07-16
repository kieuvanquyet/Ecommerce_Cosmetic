
<?php

?>
<div class="form-container">
    <h2>Danh sách bình luận</h2>
    
    <div class="contents">
        <div class="content">
            <table class="danhmuc">
                <tr>
                    
                    <th>ID</th>
                    <th>Tên Người Dùng</th>
                    <th>Sản phẩm</th>
                    <th>Nội dung</th>
                    <th>Ngày bình luận</th>
                    
                   
                </tr>
                <?php
                foreach ($listbl as $bl) {
                    extract($bl);
                    $xoasp = "./index.php?act=deletetk&id=" . $id;
                    echo ' <tr>
                            <td>'.$id.'</td>
                            <td>'.$user.'</td>
                            <td>'.$name.'</td>
                            <td>'.$noidung.'</td>
                            <td>'.date("d-m-y", strtotime($ngaybinhluan)).'</td>
                            
                            
                        </tr>';
                }
                
                
                ?>
            </table>
        </div>
        <!-- <input type="submit" class="submit" value="THÊM MỚI DANH MỤC"> -->
        

    </div>
</div>