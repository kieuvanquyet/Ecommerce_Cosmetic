 <!-- begin main -->
 <div class="content-tt">
     <div class="tt-thanhtoan">
         <form action="index.php?act=muangay" method="post">
             <h2>Thông tin khách hàng</h2>

             <div class="ip-tt">
                 <?php extract($tk) ?>
                 <input type="hidden" name="id" id="" value="<?= $id ?>">
                 <input type="text" name="user" id="" value="<?= $user ?>">
                 <input type="text" name="email" id="" value="<?= $email ?>">

                 <input type="text" name="diachi" id="" value="<?= $address ?>" placeholder="Nhập địa chỉ">
                 <input type="text" name="tel" id="" placeholder="nhập số điện thoại" value="<?= $tel ?>">
             </div>
             <label for="" class="lb-tt">Ghi chú đơn hàng</label> <br>
             <textarea name="ghichu" id="" cols="82.5%" rows="10"></textarea>


     </div>

     <div class="tt-donhang">
         <h2>Đơn Hàng Của Bạn</h2>
         <?php

            
            $tonggia = 0;


            extract($sp);

            $tonggia = $soluong * $newprice;
            $soluong = 1;
            ?>
         <input type="hidden" name="idsp" value="<?= $id ?>">

         <div class="box-sp-donhang">
             <img src="upload/<?= $hinh ?>" alt="">
             <div class="tt-sp-donhang">
                 <p><strong><?= $name ?></strong></p>
                 <p>Giá:<?= number_format($newprice) ?> ₫</p>
                 <p>Số lượng: <?= $soluong ?></p>
                 <p>Tổng: <?= number_format($soluong * $newprice) ?> ₫</p>
             </div>
         </div>

         <?php


            ?>

         <?php
            $phivc = 20000;
            echo '
            <div class="tamtinh">
                Tạm tính: <strong>' . number_format($newprice) . 'Đ</strong>
            </div>';
            ?>
         <hr>

         <div class="vanchuyen">
             <h4>Giao Hàng</h4>
             <p>Phí vận chuyển: 20.000Đ</p>
             <div class="tong"><strong>Tổng: <?php echo number_format($phivc + $newprice) ?>Đ</strong></div>
             <input type="hidden" name="tongtien" value="<?= $phivc + $newprice ?>">
         </div>
         <hr>
         <div class="ht-thanhtoan">
             <input type="radio" name="pttt" value="Thanh toán bằng tiền mặt" id="" checked> Thanh toán bằng tiền mặt <br>
             <input type="radio" name="pttt" value="Thanh toán chuyển khoản" id=""> Thanh toán chuyển khoản <br>
             <!-- </form> -->

            <input type="hidden" name="name" value="<?= $name?>">
            <input type="hidden" name="hinh" value="<?= $hinh?>">
            <input type="hidden" name="newprice" value="<?= $newprice?>">
         <div class="btn-tt"><a href="index.php?act=dathangthanhcong"><input type="submit" name="dathangmuangay" id="" value="Thanh toán"></a></div> 
         </div>

     </div>
     </form>
 </div>
 </div>
 <!-- end main -->