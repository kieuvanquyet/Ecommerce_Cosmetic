<?php

?>
<main class="main-ctsp">
    <div class="container">
        <?php
        extract($onesp);
        $hinh = $img_path . $hinh;
        ?>

        <div class="pro">
            <img src="<?= $hinh ?>" alt="">
            <div class="detail">
                <div class="name">
                    <p><?= $name ?></p>
                </div>
                <div class="gia">
                    <div class="price"><?= number_format($newprice)  ?>₫</div>
                    <p>-</p>
                    <div class="oldprice"><del><?= number_format($price) ?></del>₫</div>
             
                </div>
                <div class="nguongoc">
                    <div class="conlai">Xuất xứ:<?= $xuatxu ?> </div>
                    <div class="conlai"><?= $soluong ?> sản phẩm có sẵn </div>
                </div>



                <div class="action">

                    <form method="post" action="index.php?act=themvaogiohang&idsp=<?= $id ?>" class="form-giohang" onsubmit="submitForm(event)">
                        <div class="quality">
                            <p>Số lượng</p>
                            <input type="number" name="soluong" value="1" min="1">
                        </div>
                        <input type="hidden" name="idsp" value="<?= $id ?>">
                        <input type="submit" name="themgiohang" value="Thêm Vào Giỏ Hàng">
                    </form>

                    <form action="index.php?act=muangay&idsp=<?= $id ?>" method="post" class="form-muangay">
                        <input type="hidden" name="idsp" value="<?= $id ?>">
                     
                        <input type="submit" name="thanhtoanmuangay" value="Mua Ngay">

                    </form>
                </div>

            </div>
        </div>




        <div class="description">
            <h2>Mô Tả</h2>
            <p><?php echo nl2br($mota); ?></p>
        </div>


        <div class="comment">
            <h2>Bình luận</h2>
            
            <table>
                <tr>
                    <th>Tài Khoản</th>
                    <th>Nội Dung</th>
                    <th>Ngày Bình Luận</th>
                </tr>

                <?php foreach ($binhluan as $bl) : ?>
                    <?php extract($bl) ?>
                    <tr >
                        <td > <strong> <?php echo  $bl['user'] ?> </strong> </td>
                        <td><?php echo $bl['noidung'] ?></td>
                        <td><?php echo date("d-m-y", strtotime($bl['ngaybinhluan'])) ?></td>
                    </tr>
                <?php endforeach; ?>
                </table>
                <form action="" method="POST">
                    <input type="hidden" name="idpro" value="<?= $_GET['idsp'] ?>">
                    <input type="hidden" name="iduser" value="<?= isset($_SESSION['user']['id']) ? $_SESSION['user']['id'] : '' ?>">

                    <?php if (!empty($_SESSION['user'])) : ?>
                        <input type="text" class="" name="noidung" placeholder="nội dung bình luận....">
                        <input type="submit" name="guibinhluan" value="Gửi bình luận" style="width: 300px; margin: auto;">
                    <?php
                    else :
                    ?>
                        <input type="text" class="" placeholder="Đăng nhập để thực hiện chức năng bình luận!" disabled width="600px">
                    <?php

                    endif; ?>
                </form>
            
        </div>
        <h2>Sản Phẩm Tương Tự</h2>
        <div class="samePro">

            <section class="productss">
                <?php

                // // echo $sp_cungloai;
                // echo '<pre>';
                // print_r($sp_cungloai);
                // echo '</pre>';
                // die();
                foreach ($sp_cungloai as $spcl) {
                    extract($spcl);
                    $themgiohang = "index.php?act=themvaogiohang&idsp=" . $id;
                    $linksp = "index.php?act=sanphamct&idsp=" . $id;
                    $hinh = $img_path . $hinh;
                    echo ' 
                    <div class="product">
                    <div class="product-img-div"><a href="' . $linksp . '"><img src="' . $hinh . '" alt="Product 1"></a></div>
                    <div class="product-description-div"><a class="product-description" href="' . $linksp . '">' . $name . '</a></div> <br>
                    <div class="product-price-div"> <p class="product-price">' . number_format($newprice) . 'đ <del>' . number_format($price) . 'đ </del></p> </div>
                    <div  class="themgiohang"><form action="'.$themgiohang.'" method="post" onsubmit="submitForm(event)" style="margin-right:px;"><button name="themgiohang" class="add-to-cart">Thêm vào giỏ hàng</button></form></div>
                </div>
                            
                        ';
                }
                ?>
            </section>
        </div>
    </div>
    </div>

</main>