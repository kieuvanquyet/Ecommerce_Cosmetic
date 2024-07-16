<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DỰ ÁN 1</title>
    <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap"> -->
    <link rel="stylesheet" href="./css/formadd.css">
    <link rel="stylesheet" href="./css/css.css">
    <link rel="stylesheet" href="./css/dmsp.css">
    <link rel="stylesheet" href="./css/Ctsp.css">
    <link rel="stylesheet" href="./css/giohang.css">
    <link rel="stylesheet" href="./css/login.css">
    <link rel="stylesheet" href="./css/thanhtoan.css">
    <link rel="stylesheet" href="./css/slideshow.css">
    <link rel="stylesheet" href="./css/qltk.css">
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY4Nl+RTtXScMQlL5PaV/PBExl5DO5I5qLGWUp" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="./css/dathangthanhcong.css">
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
    <!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"> -->
    <link rel="stylesheet" href="./css/donhang.css">
</head>

<body>
    <!-- begin header -->
    <header>
        <div class="logo">
            <a href="index.php"><img src="img/logo.png" alt=""></a>
        </div>

        <div class="search">

            <form action="index.php?act=sanpham" method="post">
                <input type="text" placeholder="Tìm kiếm sản phẩm..." required class="ip-search" name="kyw">
                <button class="buttonn" type="submit" name="timkiem"> <a class="buttonn">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
                        </svg></a></button>
            </form>
        </div>

        <div class="login">
            <a href="index.php?act=qlnguoidung"><img src="img/user.png" alt="" class="btn-button"></a>
        </div>
        <div class="giohang">
            <a href="index.php?act=giohang"><img src="img/cart.png" alt="" class="btn-button"></a>
        </div>
    </header>


    <div class="placeholder"></div>
    <nav class="menu">
        <ul>

            <li><a href="index.php?act=home">TRANG CHỦ</a></li>
            <li><a href="index.php?act=sanpham&iddm=4">TÓC</a></li>
            <li><a href="index.php?act=sanpham&iddm=5">DA MẶT</a></li>
            <li><a href="index.php?act=sanpham&iddm=6">CƠ THỂ</a></li>



        </ul>
    </nav>
    <!-- end header -->