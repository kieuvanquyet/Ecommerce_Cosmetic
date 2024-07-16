
<?php

?>
<div class="form-container">
    <h2>Danh sách tài khoản</h2>
    
    <div class="contents">
        <div class="content">
            <table class="danhmuc">
                <tr>
                    
                    <th>ID</th>
                    <th>Tên Người Dùng</th>
                    <th>MẬT KHẨU</th>
                    <th>EMAIL</th>
                    <th>ĐỊA CHỈ</th>
                    <th>SỐ ĐIỆN THOẠI</th>
                    <th>VAI TRÒ</th>
                   
                </tr>
                <?php
                foreach ($listtk as $tk) {
                    extract($tk);

                    
                    $xoasp = "./index.php?act=deletetk&id=" . $id;
                    echo ' <tr>
                            <td>'.$id.'</td>
                            <td>'.$user.'</td>
                            <td>'.$pass.'</td>
                            <td>'.$email.'</td>
                            <td>'.$address.'</td>
                            <td>'.$tel.'</td>
                            <td>'.$role.'</td>
                            
                        </tr>';
                }
                
                
                ?>
            </table>
        </div>
        <!-- <input type="submit" class="submit" value="THÊM MỚI DANH MỤC"> -->
        

    </div>
</div>