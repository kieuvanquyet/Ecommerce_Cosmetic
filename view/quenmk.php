<!-- begin main -->
<main>
            <h1 class="h1">QUÊN MẬT KHẨU</h1>
            <div class="form-dn">
                <form action="index.php?act=quenmk" method="post">
                <div class="container">
                    <label for="uname"><b>Email</b></label>
                    <input type="email" placeholder="Nhập email của bạn" name="email" required class="ip-text">
                
                   <?php 
                   if(isset($thongbao_email)&&($thongbao_email!="")){
                    echo $thongbao_email.'<br>';

                    echo '<a href="index.php?act=dangnhap">Đăng nhập</a>';
                }
                   ?>

                    <!-- <label for="psw"><b> XÁC NHẬN EMAIL</b></label>
                    <input type="email" placeholder="Nhập email" name="psw" required class="ip-text"> -->

                    <div class="btn-dn"> 
                        
                        <input name="guiemail"  type="submit" value="GỬI"><br>
                    </div> 
                </div>
                
                  <div class="container" style="background-color:#f1f1f1">
                    <button type="button" class="cancelbtn"><a href="#">Cancel</a></button>
                    
                  </div>
                </form>

            </div>



        </main>



    <!-- end main -->