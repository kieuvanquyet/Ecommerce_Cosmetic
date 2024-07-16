<?php
function insert_donhang($idtk, $tennguoinhan, $emailnguoinhan, $sdtnguoinhan, $diachinguoinhan, $pttt, $tongtien, $ngaydathang, $ghichu)
{
    $sql = "INSERT INTO donhang(idtk, tennguoinhan, emailnguoinhan, sdtnguoinhan, diachinguoinhan, pttt, tongtien, ngaydat,  ghichu)
         VALUES ($idtk, '$tennguoinhan', '$emailnguoinhan', '$sdtnguoinhan', '$diachinguoinhan', '$pttt', $tongtien, '$ngaydathang',  '$ghichu')";
    return pdo_execute2($sql);
}
function insert_donhangchitiet($donhang_id, $sanpham_id, $soluong, $gia_ban, $img, $name_sp)
{
    $sql = "INSERT INTO chitietdonhang(donhang_id,sanpham_id,soluong, gia_ban,img, name_sp)
        VALUES ('$donhang_id','$sanpham_id',$soluong, $gia_ban,'$img', '$name_sp')";
    echo $sql;
    pdo_execute($sql);
}

function loadlast_donhang_id()
{
    $sql = "select * from donhang order by id desc limit 0,1";
    $donhang = pdo_query($sql);
    return $donhang;
}

function loadall_donhang()
{
    $sql = "SELECT * from donhang ";
    $listdonhang = pdo_query($sql);
    return $listdonhang;
}
function loadall_donhang_admin()
{
    $sql = "SELECT donhang.id, tennguoinhan, sdtnguoinhan, diachinguoinhan, pttt, tongtien, ghichu, trangthai, ngaydat, id_trangthai 
            FROM donhang 
            JOIN trangthaidonhang ON trangthaidonhang.id = donhang.id_trangthai
            ORDER BY donhang.ngaydat DESC";
    $donhang = pdo_query($sql);
    return $donhang;
}

function update_donhang($id_trangthai, $id_donhang)
{
    $sql = "UPDATE donhang SET id_trangthai = $id_trangthai where id = $id_donhang";
    pdo_execute($sql);
}
function huy_donhang($id_donhang)
{
    $sql = "UPDATE donhang SET id_trangthai =4 where id = $id_donhang";
    pdo_execute($sql);
}
function load_donhang_chitiet($id_donhang)
{
    $sql = "SELECT
    chitietdonhang.id,
    donhang.id AS donhang_id,
    donhang.tennguoinhan,
    donhang.emailnguoinhan,
    donhang.sdtnguoinhan,
    donhang.diachinguoinhan,
    donhang.pttt,
    donhang.tongtien,
    donhang.ngaydat,
    donhang.ghichu,
    donhang.id_trangthai,
    chitietdonhang.soluong,
    chitietdonhang.gia_ban,
    chitietdonhang.img,
    chitietdonhang.name_sp
FROM
    chitietdonhang
JOIN
    donhang ON chitietdonhang.donhang_id = donhang.id
    WHERE donhang_id=$id_donhang";
    return pdo_query($sql);
}


function loadall_donhang_nguoidung($id)
{
    $sql = "SELECT donhang.id,  tennguoinhan, sdtnguoinhan, diachinguoinhan, pttt, tongtien, ghichu, trangthai, ngaydat, id_trangthai 
            FROM donhang 
            JOIN trangthaidonhang ON trangthaidonhang.id = donhang.id_trangthai
            JOIN nguoidung on nguoidung.id = donhang.idtk
            WHERE donhang.idtk = $id
            ORDER BY donhang.ngaydat DESC ";
    $donhang = pdo_query($sql);
    return $donhang;
}
