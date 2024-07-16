<style>
   
    .container {
        /* max-width: 80%; */
        
      width: 100%;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    .order-details {
        border-bottom: 1px solid #ddd;
        margin-bottom: 20px;
        padding-bottom: 20px;
    }

    .order-item {
        display: flex;
        margin-bottom: 20px;
        border-bottom: 1px solid #ddd;
        padding-bottom: 10px;
    }

    .order-item img {
        width: 130px;
        height: 130px;
        margin-right: 10px;
    }

    .order-item-details {
        flex-grow: 1;
    }

    .order-item-details p {
        margin: 0;
        margin-bottom: 10px;
    }

    .total {
        text-align: right;
        font-size: 18px;
        margin-top: 20px;
    }

    .tong {
        margin-bottom: 10px;
        display: flex;
    }

    .tong .tongtien {
        margin-left: 700px;
        margin-bottom: 10px;
    }
    .box{
        max-width: 80%;
        margin: 20px auto;
        background-color: #fff;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    
</style>
<div class="container">
<div class="box">
    <h1>Chi tiết đơn hàng</h1>
    
    <div class="order-details">
        <?php foreach ($list_dhct as  $dhct)
            // print_r($dhct);
        ?>
        <p><strong>ID Đơn hàng:</strong> DH<?= $dhct['donhang_id'] ?></p>
        <p><strong>Ngày đặt hàng:</strong> <?= $dhct['ngaydat'] ?></p>

    </div>
    <?php
    $tien1sp = 0;
    $tonggia = 0;
    $tongtien = 0;
    foreach ($list_dhct as  $dhct) :
        extract($dhct);
        $tonggia += $gia_ban * $soluong;
        $tien1sp = $gia_ban * $soluong;
        $tonggia += $tien1sp;
    ?>


        <div class="order-item">
            <img src="./upload/<?= $img ?>" alt="Product 1">
            <div class="order-item-details">
                <p><strong>Tên sản phẩm:</strong> <?= $name_sp ?></p>
                <p><strong>Giá:</strong> <?= number_format($gia_ban) ?>Đ</p>
                <p><strong>Số lượng:</strong> <?= $soluong ?></p>
                <p><strong>Tổng:</strong> <?= number_format($gia_ban * $soluong) ?>Đ</p>
            </div>
        </div>
    <?php endforeach; ?>
    <div class="tong">
        <p>Phí vận chuyển: 20,000Đ</p>

        <?php  ?>
        <?php
        function tinhTongTien($list_dhct)
        {
            $tongTien = 0;

            foreach ($list_dhct as $dhct) {
                extract($dhct);
                $tongTien += $gia_ban * $soluong;
            }

            // Phí vận chuyển
            $tongTien += 20000;

            return $tongTien;
        }

        // Sử dụng hàm để tính tổng số tiền
        $tongTien = tinhTongTien($list_dhct);
        ?>
        <p class="tongtien"><strong>Tổng: <?= number_format($tongTien) ?>Đ</strong></p>
    </div>
    </div>
    <hr>
</div>
