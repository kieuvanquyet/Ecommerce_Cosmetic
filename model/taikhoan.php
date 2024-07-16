<?php 
    function insert_taikhoan($user,$pass,$email){
        $sql= "insert into nguoidung(user, pass ,email) values( '$user','$pass','$email')";
        // echo $sql;
        // die();
        pdo_execute($sql);
    }

    function check_user($user,$pass){
        $sql = "select *  from nguoidung where user='".$user."'AND pass='".$pass."'";
        $sp = pdo_query_one($sql);
        return  $sp;
    }

    function check_email($email){
        $sql = "select *  from nguoidung where email='".$email."'";
        $sp = pdo_query_one($sql);
        return  $sp;
    }

    function loadone_tk($id){
        $sql = "SELECT *FROM nguoidung WHERE id=" . $id;
        $tk = pdo_query_one($sql);
        return $tk;
    }

    function update_tk($id,$user,$pass,$email, $address,$tel)  {
       $sql =" UPDATE nguoidung SET user='$user',pass='$pass',email='$email',address='$address',tel='$tel' WHERE id=" .$id;
       pdo_execute($sql);
    }
    
    function delete_taikhoan($id){
        
        $sql = "DELETE FROM nguoidung WHERE id =" . $id;
        pdo_execute($sql);
        
    }

    function load_bl($id){
        $sql = "
        SELECT  binhluan.noidung, binhluan.ngaybinhluan, nguoidung.user from binhluan
        LEFT JOIN nguoidung ON binhluan.iduser = nguoidung.id
        LEFT JOIN sanpham ON binhluan.idpro = sanpham.id
        WHERE sanpham.id = $id LIMIT 0, 25;
    ";
    $result = pdo_query($sql);
    // print_r($result);
    // die();
    return $result;
    }

    function loadall_binhluan($idpro){
        $sql = " SELECT binhluan.id, binhluan.noidung, binhluan.ngaybinhluan, nguoidung.user, sanpham.name from binhluan
        LEFT JOIN nguoidung ON binhluan.iduser = nguoidung.id
        LEFT JOIN sanpham ON binhluan.idpro = sanpham.id
        WHERE 1";
        if($idpro > 0)
            $sql.=" AND idpro='".$idpro."'";
            $sql.=" order by id desc";
        $lisbl = pdo_query($sql);
        return $lisbl;
           
        
    }

    function loadall_tk(){

        $sql = "SELECT *FROM nguoidung WHERE 1";
        $tk = pdo_query($sql);
        return $tk;
    }

?>