<div class="dathangthanhcong">
    <img src="img/dathangthanhcong.png" alt="">
    <H4>Đặt hàng thành công</H4>
    <a href="index.php?act=home"><input type="submit" value="Quay về trang chủ"></a>
    <a href="index.php?act=donhang"><input type="submit" value="Xem đơn hàng của bạn"></a>
</div>

<h2>Gợi ý cho bạn</h2>
<section class="products">
    <?php
    foreach ($spgoiy as $sp) {
        extract($sp);
        $linksp = "index.php?act=sanphamct&idsp=" . $id;
        $hinh = $img_path . $hinh;
        echo '<div class="product">
                <div class="product-img-div"><a href="' . $linksp . '"><img src="' . $hinh . '" alt="Product 1"></a></div>
                <div class="product-description-div"><a class="product-description" href="' . $linksp . '">' . $name . '</a></div>
                <div class="product-price-div"> <p class="product-price"><del>' . $price . 'đ </del>' . $newprice . 'đ</p> </div>
                <div><button class="add-to-cart">Thêm vào giỏ hàng</button></div>
            </div>';
    }

    ?>


</section>