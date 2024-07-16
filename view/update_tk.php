<!-- begin main -->
<main>
            <h1 class="h1">CẬP NHẬT TÀI KHOẢN</h1>
            <div class="form-dn">
                <form action="index.php?act=updatetk" method="post">
                <div class="container">
                    <?php extract($tk) ?>
                   <input type="hidden" name="id" value="<?=$id?>">
                   <input type="hidden" name="pass" value="<?=$pass?>">
                    <label for="psw"><b>TÊN TÀI KHOẢN</b></label>
                    <input type="text" placeholder="Nhập tài khoản" name="user" value="<?=$user?>" required class="ip-text">

                    <label for="uname"><b>SỐ ĐIỆN THOẠI</b></label>
                    <input type="text" placeholder="Nhập số điện thoại" name="tel" value="0<?=$tel?>" required class="ip-text">

                    <label for="uname"><b>ĐỊA CHỈ</b></label>
                    <input type="text" placeholder="Nhập địa chỉ" name="address" value="<?=$address?>" required class="ip-text">

                    <label for="uname"><b>EMAIL</b></label>
                    <input type="text" placeholder="Nhập email " name="email" value="<?=$email?>" required class="ip-text">

                    <div class="btn-dn"> 
                        <input type="submit" value="Lưu thay đổi" name="luuthaydoi">                      
                    </div> 
                </div>

                <?php 
                  if(isset($tb) && $tb != ""){
                    echo $tb;
                  }
                ?>
                
                  <div class="container" style="background-color:#f1f1f1">
                    <button type="button" class="cancelbtn" id="backButton"><a href="#">Cancel</a></button>
                    
                  </div>
                </form>

            </div>



        </main>



    <!-- end main -->