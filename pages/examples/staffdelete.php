<?php   
    include "connect2.php";

    if(isset($_GET['Staff_ID'])){
        $id = $_GET['Staff_ID'];
        $query = "DELETE FROM staffs WHERE Staff_ID=$id";
        if ($conn->query($query) === TRUE){
            echo "<script>window.alert('Staff Data Successfully Deleted!');</script>";
            echo "<script>window.location.assign('staffs.php');</script>";
        }
    } 
?>