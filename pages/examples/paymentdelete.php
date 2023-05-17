<?php   
    include "connect2.php";

    if(isset($_GET['Payment_ID'])){
        $id = $_GET['Payment_ID'];
        $query = "DELETE FROM payments WHERE Payment_ID=$id";
        if ($conn->query($query) === TRUE){
            echo "<script>window.alert('Payment Data Successfully Deleted!');</script>";
            echo "<script>window.location.assign('payments.php');</script>";
        }
    } 
?>