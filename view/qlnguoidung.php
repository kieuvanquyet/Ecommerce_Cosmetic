<!-- begin main -->

<section>
        <div class="item">
            <div class="item1"><a href="index.php?act=donhang">Đơn Hàng</a></div>
            <div class="item2">
                <?php 
               if( isset($_SESSION['user'])) {
                 echo '<a href="index.php?act=qltaikhoan">Tài Khoản</a>';  
                     }else{
                        echo '<a href="index.php?act=dangnhap">Tài Khoản</a>';
                     }
                 ?>
             </div>
            <!-- <div class="item3"><a href="#">Địa Chỉ</a></div>
            <div class="item4"><a href="#">CSKH</a></div> -->

        </div>
    </section>

    <!-- end main -->