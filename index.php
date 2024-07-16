
<?php
session_start();
include "model/pdo.php";
include "model/sanpham.php";
include "global.php";
include "model/danhmuc.php";
include "model/taikhoan.php";
include "model/giohang.php";
include "view/header.php";
include "model/donhang.php";
include "model/binhluan.php";

// if (isset($user['id'])) {
//     $id = $user['id'];
// }
date_default_timezone_set('Asia/Ho_Chi_Minh');
$spnew = loadall_sanpham_home();
$spgoiy = loadall_sanpham_goiy();
$dsdm = loadall_danhmuc();
if (isset($_GET['act'])) {
    $act = $_GET['act'];

    switch ($act) {
        case 'home':
            include "view/trangchu.php";
            break;


        case 'sanphamct':
            if (isset($_POST['guibinhluan'])) {
                extract($_POST);
                //var_dump($_POST);
                insert_binhluan($idpro, $noidung, $iduser);
            }
            if (isset($_GET['idsp']) && ($_GET > 0)) {
                $id = $_GET['idsp'];
                $onesp = loadone_sanpham($id);
                extract($onesp);
                $sp_cungloai = load_sanpham_cungloai($id, $iddm);
                $binhluan = load_bl($_GET['idsp']);
                include "view/chitietsanpham.php";
            } else {
                include "view/trangchu.php";
            }
            break;

        case "sanpham":
            if (isset($_POST['kyw']) && ($_POST['kyw'] != "")) {
                $kyw = $_POST['kyw'];
            } else {
                $kyw = "";
            }
            if (isset($_GET['iddm']) && $_GET['iddm'] > 0) {
                $iddm = $_GET['iddm'];
            } else {
                $iddm = 0;
            }
            $dssp = loadall_sanpham($kyw, $iddm);
            // $tendm= load_tendm($iddm);
            include "view/sanpham.php";

            break;

        case 'dangnhap':
            if (isset($_POST['dangnhap']) && ($_POST['dangnhap'])) {

                $user = $_POST['user'];
                $pass = $_POST['pass'];
                $checkuser = check_user($user, $pass);
                if (is_array($checkuser)) {
                    $_SESSION['user'] = $checkuser;
                    $thongbao = "Bạn đã đăng nhập thành công!";
                    // header('Location: index.php?act=home');
                    if ($checkuser['role'] == "admin") {
                        header('Location: admin/index.php?act=home');
                    } else {
                        header('Location: index.php?act=home');
                    }
                } else {
                    $thongbao = "Tài khoản không tồn tại! Vui lòng kiểm tra hoặc đăng kí tài khoản mới";
                }
            }
            include "view/dangnhap.php";
            break;



        case 'dangki':
            if (isset($_POST['dangki']) && ($_POST['dangki'])) {

                $user = $_POST['user'];
                $pass = $_POST['pass'];
                $email = $_POST['email'];
                insert_taikhoan($user, $pass, $email);
                $thongbao = "Đăng kí thành công, vui lòng đăng nhập để thực hiện các chức năng";
            }
            include "view/dangki.php";

            break;

        case "updatetk";
            if (isset($_SESSION['user']['id'])) {
                $tk = loadone_tk($_SESSION['user']['id']);
            }
            if (isset($_POST['luuthaydoi']) && ($_POST['luuthaydoi'])) {
                $user = $_POST['user'];
                $pass = $_POST['pass'];
                $email = $_POST['email'];
                $address = $_POST['address'];
                $tel = $_POST['tel'];
                $id = $_POST['id'];
                // var_dump($user, $pass, $email, $address, $tel);
                // die();
                update_tk($id, $user, $pass, $email, $address, $tel);
                $tb = "cập nhật thành công";
                $_SESSION['user'] = check_user($user, $pass);
                header('Location: index.php?act=updatetk');
            }
            include "view/update_tk.php";
            break;


        case "quenmk";
            if (isset($_POST['guiemail']) && ($_POST['guiemail'])) {
                $email = $_POST['email'];
                $checkemail = check_email($email);
                if (is_array($checkemail)) {
                    $thongbao_email = "Mật khẩu của bạn là: " . $checkemail['pass'];
                } else {
                    $thongbao_email = "Email này không tồn tại!";
                }
            }
            include "view/quenmk.php";
            break;

        case "thoat";
            session_unset();
            header('Location: index.php?act=home');
            break;

        case 'themvaogiohang':
            $idsp = isset($_GET['idsp']) ? $_GET['idsp'] : null;
            if (isset($_SESSION['user']['id'])) {
                $userid = $_SESSION['user']['id'];
                if (isset($_POST['themgiohang'])) {
                    $check = check_giohang($idsp, $userid);
                    $soluong = isset($_POST['soluong']) ? intval($_POST['soluong']) : 1;
                    if (!empty($check) && is_array($check)) {
                        $soluong = $soluong + $check['soluong'];
                        update_giohang($soluong, $check['id']);
                    } else {
                        insert_giohang($soluong, $userid, $idsp);
                    }
                    // echo '<script>alert("Sản phẩm đã được thêm vào giỏ hàng!");</script>';
                    echo '<script>window.history.back();</script>';
                    exit;
                }
            } else {
                header('Location: index.php?act=dangnhap');
            }
            break;

        case 'giohang':
            if (isset($_SESSION['user']['id'])) {
                $userid = $_SESSION['user']['id'];
                $listgiohang = loadall_giohang($userid);
                include "view/giohang.php";
            } else {
                header('Location: index.php?act=dangnhap');
            }
            break;

        case 'xoagiohang':
            if (isset($_GET['id_giohang']) && $_GET['id_giohang'] > 0) {
                $id_giohang = $_GET['id_giohang'];
                delete_giohang($_GET['id_giohang']);
                header("location:index.php?act=giohang");
            }
            break;
        case 'xoatatcagiohang':
            if (isset($_SESSION['user']['id'])) {
                $userid = $_SESSION['user']['id'];
                delete_all_giohang($userid);
                header("location:index.php?act=giohang");
            }
            break;

        case 'thanhtoan':
            if (isset($_SESSION['user']['id'])) {
                $userid = $_SESSION['user']['id'];
            }
            $tk = loadone_tk($userid);
            $listsanpham = loadall_giohang($userid);

            $donhang_id = "";
            if (isset($_POST['muatatca'])) {
                extract($listsanpham);
            }
            if (isset($_POST['dathang'])) {
                $idtk = $_POST['id'];
                $tennguoinhan = $_POST['user'];
                $emailnguoinhan = $_POST['email'];
                $sdtnguoinhan = $_POST['tel'];
                $diachinguoinhan = $_POST['diachi'];
                $pttt = $_POST['pttt'];
                $tongtien = $_POST['tongtien'];
                $ngaydathang = date('Y-m-d H:i:s');
                $ghichu = $_POST['ghichu'];
                $donhang_id = insert_donhang(
                    $idtk,
                    $tennguoinhan,
                    $emailnguoinhan,
                    $sdtnguoinhan,
                    $diachinguoinhan,
                    $pttt,
                    $tongtien,
                    $ngaydathang,
                    $ghichu
                );

                // lấy id đơn hàng mới nhất

                foreach ($listsanpham as $sp) {
                    extract($sp);

                    insert_donhangchitiet($donhang_id, $idsp, $soluong, $newprice, $hinh, $name);
                    //sau khi đặt hàng thành công thì xóa giỏ hàng
                    delete_giohang($id);
                }
                header("location:index.php?act=dathangthanhcong");
            }
            include "view/thanhtoan.php";
            break;



        case 'muangay':

            if (isset($_SESSION['user']['id'])) {
                $userid = $_SESSION['user']['id'];
                $tk = loadone_tk($userid);
                if (isset($_POST['idsp']) && ($_POST > 0)) {
                    $id = $_POST['idsp'];
                    $sp = loadone_sanpham($id);
                    if (isset($_POST['thanhtoanmuangay']) && ($_POST['thanhtoanmuangay'])) {
                        extract($sp);
                    }
                    $donhang_id = "";
                    if (isset($_POST['dathangmuangay'])) {
                        $idtk = $_POST['id'];
                        echo $idtk;
                        $tennguoinhan = $_POST['user'];
                        $emailnguoinhan = $_POST['email'];
                        $sdtnguoinhan = $_POST['tel'];
                        $diachinguoinhan = $_POST['diachi'];

                        $pttt = $_POST['pttt'];
                        $tongtien = $_POST['tongtien'];
                        $ngaydathang = date("Y-m-d H:i:s");
                        $ghichu = $_POST['ghichu'];
                        // $trangthai= 'Chờ xác nhận';

                        $donhang_id = insert_donhang(
                            $idtk,
                            $tennguoinhan,
                            $emailnguoinhan,
                            $sdtnguoinhan,
                            $diachinguoinhan,
                            $pttt,
                            $tongtien,
                            $ngaydathang,
                            $ghichu
                        );

                        if (isset($_POST['idsp'])) {
                            $spis = loadone_sanpham($_POST['idsp']);
                            $name = $spis['name'];
                            $hinh = $spis['hinh'];
                            $price = $spis['newprice'];
                            insert_donhangchitiet($donhang_id, $id, 1, $price, $hinh, $name);
                            header("location:index.php?act=dathangthanhcong");
                        }
                    }
                }
            } else {
                header('Location: index.php?act=dangnhap');
            }
            include "view/thanhtoanmuangay.php";
            break;

        case 'qlnguoidung':
            include "view/qlnguoidung.php";
            break;

        case 'dathangthanhcong':
            include "view/dathangthanhcong.php";
            break;

        case 'qlnguoidung':
            include "view/qlnguoidung.php";
            break;

        case 'qltaikhoan':
            if (isset($_SESSION['user']['id'])) {
                $tk = loadone_tk($_SESSION['user']['id']);
            }
            include "view/quanlitaikhoan.php";
            break;

        case 'thanhtoan':
            include "view/thanhtoan.php";
            break;

        case  'donhang':
            if (isset($_SESSION['user']['id'])) {
                $id_nguoidung = $_SESSION['user']['id'];
                $donhang =  loadall_donhang_nguoidung($id_nguoidung);
                if (empty($donhang)) { {
                        // echo"Người dùng chưa có đơn hàng nào";
                    }
                }
            }
            include "view/donhang.php";
            break;

        case  'donhangchitiet':
            if (isset($_GET['id_donhang'])) {
                $id_donhang = $_GET['id_donhang'];
                $list_dhct = load_donhang_chitiet($id_donhang);
                // print_r($list_dhct) ;
                // die();
            }
            include "view/donhangct.php";
            break;
        case 'chinhsachquydinh':
            include_once "view/chinhsachquydinh.php";
            break;

        default:
            // include "view/trangchu.php";
            break;
    }
} else {
    include "view/trangchu.php";
}

// include "trangchu.php";


include "view/footer.php";
?>
