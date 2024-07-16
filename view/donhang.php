<div class="form-lsdh">
    <h2>Lịch sử đơn hàng</h2>
    <!-- <form action="index.php?act=listsp" class="form-locsp" method="POST">
        <input type="text" name="kyw" id="" placeholder="Tìm kiếm...">
        <select name="iddm" id="">
            <option value="0" selected>Tất cả</option>
            <?php

            ?>
        </select>
        <input type="submit" name="listok" value="GO">
    </form> -->
    
    <div class="contents">
        <div class="content">
        <?php if($donhang != []) {?>
            <table id="customers" >
                <thead>
                    <tr>   
                        <th>Tên khách hàng</th>                   
                        <th>Ngày đặt</th>
                        <th>Địa chỉ nhận</th>
                        <th>Số điện thoại</th>
                        <th>Ghi chú</th>
                        <th>Phương thức thanh toán</th>
                        <th>Tổng tiền</th>
                        <th>Trạng thái</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                   
                    foreach ($donhang as  $dh) :
                        extract($dh);
                        $formattedPhoneNumber = substr($sdtnguoinhan, 0, 1) === '0' ? $sdtnguoinhan : '0' . $sdtnguoinhan;
                       $dhct= "index.php?act=donhangchitiet&id_donhang=$id"
                      
                    ?>
                   
                        <tr>
                        <input type="hidden" value="<?=$id?>">
                            
                        <td><?=$tennguoinhan?></td>
                            <td><?=$ngaydat?></td>
                            <td><?=$diachinguoinhan?></td>
                            <td><?=$formattedPhoneNumber?></td>
                            <td><?=$ghichu?></td>
                            <td><?=$pttt?></td>
                            <td><?= number_format($tongtien)?>Đ</td>
                           <?php $class_ttdh = "";
                        switch ($trangthai) {
                            case 'Chờ xử lý':
                                $class_ttdh ="btn-color-vang";
                                break;
                            case 'Đã xác nhận':
                                $class_ttdh ="btn-color-xanhblue";
                                break;
                            case 'Đã hoàn thành':
                                $class_ttdh = "btn-color-xanhgreen";
                                break;
                            case 'Đã hủy':
                                $class_ttdh = "btn-color-red";
                                break;
                        }
                        ?>
                            <td><p class="<?=$class_ttdh?>"><?=$trangthai?></p></td>
                            <td><a class="xemchitiet" href="<?=$dhct?>">Xem chi tiết</a></td>

                        </tr>
                        
                    <?php  endforeach; ?>
                </tbody>
            </table>
            <?php }else{
                echo "Người dùng chưa có đơn hàng nào";
                }?>
        </div>
        
        <!-- <input type="submit" class="submit" value="THÊM MỚI DANH MỤC"> -->
        <!-- <a href=""  ><input type="button" class="submit" value="THÊM MỚI SẢN PHẨM"></a> -->

    </div>
    
</div>