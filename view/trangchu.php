<!-- begin main -->


<div class="slideshow-container">

    <div class="mySlides fade">
        <img src="./img/banner15.png" style="width:100%">
    </div>

    <div class="mySlides fade">
        <img src="./img/banner10.png" style="width:100%">
    </div>

    <div class="mySlides fade">
        <img src="./img/banner12.png" style="width:100%">
    </div>



    <a class="prev" onclick="plusSlides(-1)">❮</a>
    <a class="next" onclick="plusSlides(1)">❯</a>

</div>
<br>

<div style="text-align:center">
    <span class="dot" onclick="currentSlide(1)"></span>
    <span class="dot" onclick="currentSlide(2)"></span>
    <span class="dot" onclick="currentSlide(3)"></span>
</div>

<script>
    let slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        let dots = document.getElementsByClassName("dot");
        if (n > slides.length) {
            slideIndex = 1
        }
        if (n < 1) {
            slideIndex = slides.length
        }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace("active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
    }
</script>

<section class="products">
    <?php
    foreach ($spnew as $sp) {
        extract($sp);
        $linksp = "index.php?act=sanphamct&idsp=" . $id;
        $themgiohang = "index.php?act=themvaogiohang&idsp=" . $id;
        $hinh = $img_path . $hinh;
        echo '<div class="product">
                <div class="product-img-div"><a href="' . $linksp . '"><img src="' . $hinh . '" alt="Product 1"></a></div>
                <div class="product-description-div"><a class="product-description" href="' . $linksp . '"><p>' . $name . '</p></a></div> <br>

                <div class="product-price-div"> <p class="product-price">' . number_format($newprice) . '₫     <del>' . number_format($price) . '₫ </del></p>  </div>
                <div class="themgiohang"><a href=""><form action="'.$themgiohang.'" method="post" onsubmit="submitForm(event)"><button name="themgiohang" class="add-to-cart">Thêm vào giỏ hàng</button></form></a></div>

            </div>';
    }

    ?>
</section>

<div class="h2">
    <h2>DANH MỤC SẢN PHẨM</h2>
</div>
<div class="danhmuc">
    <?php
    $img = ['img/dm/daugoi.jpg', 'img/dm/suaruamat.jpg', 'img/dm/sap.jpg'];
    $i = 0;
    foreach ($dsdm as $dm) {
      
        extract($dm);
        $linkdm = "index.php?act=sanpham&iddm=" . $id;


        echo '
        <div class="product-boxdanhmuc">
            <div class="product-img-div"> <a href="' . $linkdm . '"><img src="' . $img[$i] . '" alt="Product 1"></a></div>
            <div class="product-name-dm"><p class="product-description">' . $name . '</p></div>
        </div>
    ';
        $i++;
    }
    ?>

</div>