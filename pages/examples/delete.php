<?php   
    include "connect2.php";

    if(isset($_GET['User_ID'])){
        $id = $_GET['User_ID'];
        $query = "DELETE FROM users WHERE User_ID=$id";
        if ($conn->query($query) === TRUE){
            echo "<script>window.alert('Student Record Successfully Deleted!');</script>";
            echo "<script>window.location.assign('users.php');</script>";
        }
    } 
?>