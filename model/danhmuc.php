<?php
function insert_danhmuc($tenloai){
    $sql = "insert into danhmuc(name) values('$tenloai')";
    pdo_execute($sql);
}

function delete_danhmuc($id){
    $sql = "DELETE FROM danhmuc WHERE id =".$id;     
    pdo_execute($sql);
}
function loadAll_danhmuc(){
    $sql = "SELECT * FROM danhmuc order by id desc";
    $listdanhmuc = pdo_query($sql);
    return $listdanhmuc;
}
function loadOne_danhmuc($id){
    $sql = "SELECT * FROM danhmuc WHERE id=".$id;

     $dm = pdo_query_one($sql);
     return $dm;
}
function update_danhmuc($id,$tenloai){
    $sql = "UPDATE danhmuc SET name='".$tenloai."' WHERE id =".$id;
    pdo_execute($sql);
}
?>