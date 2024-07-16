<?php

?>
<div class="form-container">
    <h2>Danh sách đơn hàng</h2>
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
            <table class="danhmuc">
                <tr>

                    <th>ID</th>
                    <th>Khách hàng</th>
                    <th>Ngày đặt hàng</th>
                    <th>Tổng tiền</th>
                    <th>Ghi chú</th>
                    <th>Trạng thái</th>
                    <th>Tùy chỉnh</th>

                </tr>
                <?php
                foreach ($listdonhang as $donhang) :
                    extract($donhang);
                    $dhct= "index.php?act=donhangchitiet&id_donhang=$id";
                ?>

                    <tr>
                        <td><?= $id ?></td>
                        <td><?= $tennguoinhan ?></td>
                        <td><?= $ngaydat ?></td>
                        <td> <?=number_format( $tongtien); echo'₫'; ?></td>
                        <td><?= $ghichu ?></td>
                        <?php
                        $class_ttdh = "";
                        switch ($trangthai) {
                            case 'Chờ xử lý':
                                $class_ttdh ="btn-outline-warning";
                                break;
                            case 'Đã xác nhận':
                                $class_ttdh ="btn-outline-info";
                                break;
                            case 'Đã hoàn thành':
                                $class_ttdh = "btn-outline-success";
                                break;
                            case 'Đã hủy':
                                $class_ttdh = "btn-outline-danger";
                                break;
                        }
                        $noidung = '" Bạn chắn chắn muốn thay đổi trạng thái đơn hàng chứ ?"';
                        $kiemtra = "onclick='return confirm(" . $noidung . ")'";
                        if ($id_trangthai == 3) {
                            $noidung = '"Đơn hàng đã hoàn thành"';
                            $kiemtra = "onclick='return alert(" . $noidung . ")'";
                        } else if ($id_trangthai == 4) {
                            $noidung = '"Đơn hàng đã bị hủy"';
                            $kiemtra = "onclick='return alert(" . $noidung . ")'";
                        }
                        $huy = "index.php?act=huy-don-hang&id_donhang=$id";
                        ?>
                        <td><a <?= $kiemtra ?> href="index.php?act=thay-doi-trang-thai&id_donhang=<?= $id ?>&id_trangthai=<?= $id_trangthai ?>"><span class="btn <?=$class_ttdh?>"><?= $trangthai ?></span></a></td>
                        <td>
                            <a class="btn btn-success" href="<?=$dhct?>">Chi tiết</a>
                            <a class="btn btn-danger" onclick="return confirm('Bạn chắc chắn muốn hủy đơn hàng chứ ?')" href="<?= $huy ?>">Hủy</a>
                        </td>
                    </tr>
                <?php endforeach; ?>


                ?>
            </table>
        </div>
        <!-- <input type="submit" class="submit" value="THÊM MỚI DANH MỤC"> -->
        <!-- <a href=""  ><input type="button" class="submit" value="THÊM MỚI SẢN PHẨM"></a> -->

    </div>
</div>