<?php
function insert_sanpham($tensp, $mota, $giasp,$giamoi, $hinh,$xuatxu,$soluong, $iddm)
{
    $sql = "INSERT INTO sanpham(name,mota,price,newprice,hinh,xuatxu,soluong,iddm) VALUES ('$tensp','$mota','$giasp','$giamoi','$hinh','$xuatxu','$soluong','$iddm')";
    pdo_execute($sql);
}
function loadall_sanpham($kyw = "", $iddm = 0)
{
    $sql = "SELECT sanpham.*, danhmuc.name AS danhmuc_name 
            FROM sanpham
            INNER JOIN danhmuc ON sanpham.iddm = danhmuc.id
            WHERE 1";

    if ($kyw != "") {
        $kywLower = strtolower($kyw);
        $sql .= " AND LOWER(sanpham.name) LIKE '%" . $kywLower . "%'";
    }

    if ($iddm > 0) {
        $sql .= " AND sanpham.iddm = " . $iddm;
    }

    $sql .= " ORDER BY sanpham.id DESC";

    $listsanpham = pdo_query($sql);
    return $listsanpham;
}
function  update_sanpham($id, $iddm, $tensp, $giasp,$giamoi, $mota, $hinh,$xuatxu,$soluong)
{
    if ($hinh != "") {

        $sql = "UPDATE sanpham SET iddm='" . $iddm . "' ,name='" . $tensp . "',price='" . $giasp . "',newprice='".$giamoi."', mota='" . $mota . "',hinh='" . $hinh . "' ,xuatxu='".$xuatxu."',soluong='".$soluong."' WHERE id=" . $id;
    } else {
        $sql = "UPDATE sanpham SET iddm='" . $iddm . "' ,name='" . $tensp . "',price='" . $giasp . "',newprice='".$giamoi."',mota='" . $mota . "', xuatxu='".$xuatxu."',soluong='".$soluong."' WHERE id=" . $id;
    }
    pdo_execute($sql);
}
function loadone_sanpham($id)
{
    $sql = "SELECT *FROM sanpham WHERE id=" . $id;
    $sp = pdo_query_one($sql);
    return $sp;
}
function delete_sanpham($id)
{
    $sql = "DELETE FROM sanpham WHERE id =" . $_GET['id'];
    pdo_execute($sql);
}

function loadall_sanpham_home(){
    $sql = "select * from sanpham where 1 order by id desc limit 0,15  ";    
    $listsanpham = pdo_query($sql);
    return  $listsanpham;
}
function load_sanpham_cungloai($id, $iddm)
{
    $sql = "SELECT *FROM sanpham WHERE iddm=" . $iddm . " AND id <>" . $id . " order by iddm desc limit 5";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}

function loadall_sanpham_goiy(){
    $sql = "select * from sanpham where 1 order by id desc limit 0,4 ";    
    $listsanpham = pdo_query($sql);
    return  $listsanpham;
}

// function loadall_sanpham_timkiem($kyw=" ", $iddm=0){
//     $sql = "select * from sanpham where 1 ";
//     if($kyw!= ""){
//         $sql.=" and name like '%".$kyw."%'";
//     }
//     if($iddm>0){
//         $sql.=" and iddm='".$iddm."'";
//     }

//     $sql.=" order by id desc";
//     $listdanhmuc = pdo_query($sql);
//     return  $listdanhmuc;
// }
