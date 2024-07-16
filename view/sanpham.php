<section class="products">
    <?php
    foreach ($dssp as $sp) {
        extract($sp);
        $linksp = "index.php?act=sanphamct&idsp=".$id; 
        $hinh = $img_path . $hinh;
        echo '<div class="product">
                <div class="product-img-div"><a href="' . $linksp . '"><img src="' . $hinh . '" alt="Product 1"></a></div>
                <div class="product-description-div"><a class="product-description" href="'.$linksp.'">' . $name . '</a></div>
                <div class="product-price-div"> <p class="product-price"><del>' . number_format($price) . 'đ </del>'.number_format($newprice).'đ</p> </div>
                <div><button class="add-to-cart">Thêm vào giỏ hàng</button></div>
            </div>';
    }

    ?>

    
</section>