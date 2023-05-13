<?php   
    include "connect2.php";

    if(isset($_GET['Counselor_ID'])){
        $id = $_GET['Counselor_ID'];
        $query = "DELETE FROM counselors WHERE Counselor_ID=$id";
        if ($conn->query($query) === TRUE){
            echo "<script>window.alert('Counselor Data Successfully Deleted!');</script>";
            echo "<script>window.location.assign('counselors.php');</script>";
        }
    } 
?>