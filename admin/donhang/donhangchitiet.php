<div class="form-container">
    <h2>Chi tiết đơn hàng</h2>
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
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Khách hàng</th>
                        <th>email</th>
                        <th>Ngày tạo</th>
                        <th>Địa chỉ nhận</th>
                        <th>Hình ảnh</th>
                        <th>Sản phẩm</th>
                        <th>Số lượng</th>
                        <th>Tổng tiền</th>

                    </tr>
                </thead>
                <tbody>
                    <?php
                    foreach ($list_dhct as  $dhct) :
                        extract($dhct);
                       

                    ?>
                        <tr>
                            <td><?=$donhang_id?></td>
                            <td><?=$tennguoinhan?></td>
                            <td><?=$emailnguoinhan?></td>
                            <td><?=$ngaydat?></td>
                            <td><?=$diachinguoinhan?></td>
                            <td><img style="width: 100px; height: 100px;"  src="../upload/<?= $img ?>" alt=""></td>
                            <td><?=$name_sp?></td>
                            <td><?=$soluong?></td>
                            <td><?=number_format( $tongtien); echo "₫"?></td>
                        </tr>
                        
                    <?php break; endforeach; ?>
                </tbody>
            </table>
        </div>
        <!-- <input type="submit" class="submit" value="THÊM MỚI DANH MỤC"> -->
        <!-- <a href=""  ><input type="button" class="submit" value="THÊM MỚI SẢN PHẨM"></a> -->

    </div>
</div>