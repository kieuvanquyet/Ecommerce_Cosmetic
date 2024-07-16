<?php 

function insert_binhluan($idpro, $noidung,$iduser){
        
    $ngaybinhluan = date("d-m-y");
        $sql = "INSERT INTO binhluan(noidung, iduser, idpro, ngaybinhluan)
         VALUES ('$noidung','$iduser','$idpro','$ngaybinhluan')";
    pdo_execute($sql);
}

?>