 <!-- begin main -->
 <div class="content-tt">
     <div class="tt-thanhtoan">
         <form action="index.php?act=thanhtoan" method="post">
             <h2>Thông tin khách hàng</h2>

             <div class="ip-tt">
                 <?php extract($tk) ?>
                 <input type="hidden" name="id" id="" value="<?= $id ?>">
                 <input type="text" name="user" id="" value="<?= $user ?>">
                 <input type="text" name="email" id="" value="<?= $email ?>">

                 <input type="text" name="diachi" id="" value="<?= $address ?>" placeholder="Nhập địa chỉ">
                 <input type="text" name="tel" id="" placeholder="nhập số điện thoại" value="<?= $tel ?>">
             </div>
             <label for="" class="lb-tt">Ghi chú đơn hàng</label>
             <textarea name="ghichu" id="" cols="82%" rows="10"></textarea>


     </div>

     <div class="tt-donhang">
         <h2>Đơn Hàng Của Bạn</h2>
         <?php
            $i = 0;
            $tongsl = 0;
            $tonggia = 0;

            foreach ($listsanpham as $sp) {
                extract($sp);
                $tongsl += $sp['soluong'];
                $tonggia += $sp['soluong'] * $sp['newprice'];

            ?>
             <div class="box-sp-donhang">
                 <img src="upload/<?= $sp['hinh'] ?>" alt="">
                 <div class="tt-sp-donhang">
                     <p><strong><?= $sp['name'] ?></strong></p>
                     <p>Giá: <span><?= number_format($sp['newprice']) ?> ₫</span></p>
                     <p>Số lượng: <?= $sp['soluong'] ?></p>
                     <p>Tổng: <span><?= number_format($sp['soluong'] * $sp['newprice']) ?> ₫</span></p>
                 </div>
             </div>

         <?php
                $i++;
            }
            ?>

         <?php
            $phivc = 20000;
            echo '
            <div class="tamtinh">
            <p>Tạm tính: <strong style="color:#F09116">' . number_format($tonggia) . '₫</strong></p>
            </div>';
            ?>
         <hr>

         <div class="vanchuyen">
             <h4>Giao Hàng</h4>
             <p>Phí vận chuyển: 20.000₫</p>
             <div class="tong"><p>Tổng:<strong style="color:#F09116" > <?php echo number_format($phivc + $tonggia) ?>₫</strong></p></div>
             <input type="hidden" name="tongtien" value="<?= $phivc + $tonggia ?>">
         </div>
         <hr>
         <div class="ht-thanhtoan">
             <input type="radio" name="pttt" id="" value="Thanh toán bằng tiền mặt" checked> Thanh toán bằng tiền mặt <br>
             <input type="radio" name="pttt" id="" value="Thanh toán chuyển khoản"> Thanh toán chuyển khoản <br>
             <div class="btn-tt"><a href="index.php?act=dathangthanhcong"><input type="submit" name="dathang" id="" value="Thanh toán"></a></div>
         </div>
         </form>
     </div>
 </div>
 <!-- end main -->