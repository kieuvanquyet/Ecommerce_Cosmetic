 <!-- begin main -->
 <main>
            <h1 class="h1">ĐĂNG KÍ TÀI KHOẢN</h1>
            <div class="form-dn">
                <form action="index.php?act=dangki" method="post" class="form-dkidn">
                <div class="container">
                    <label for="uname"><b>TÊN ĐĂNG NHẬP</b></label>
                    <input type="text" placeholder="Nhập tên đăng nhập" name="user" required class="ip-text">
                
                    <label for="psw"><b>MẬT KHẨU</b></label>
                    <input type="password" placeholder="Nhập mật khẩu" name="pass" required class="ip-text">

                    <label for="psw"><b>EMAIL</b></label>
                    <input type="email" placeholder="Nhập email" name="email" required class="ip-text">

                    <div class="btn-dn" > 
                        <input type="submit" value="Đăng kí" name="dangki"> <br>
                        <a href="index.php?act=dangnhap">Đăng nhập?</a>
                        
                    </div> 
                </div>
                
                  <div class="container" style="background-color:#f1f1f1">
                    <button type="button" class="cancelbtn"><a href="index.php?act=qlnguoidung">Cancel</a></button>
                    
                  </div>
                </form>
                <h6 style="color: green;">
                <?php
            
                    if(isset($thongbao)&&($thongbao!="")){
                        echo $thongbao;
                    }
                ?>
        </h6>
            </div>



        </main>



    <!-- end main -->