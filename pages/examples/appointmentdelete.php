<?php   
    include "connect2.php";

    if(isset($_GET['Referral_ID'])){
        $id = $_GET['Referral_ID'];
        $query = "DELETE FROM referrals WHERE Referral_ID=$id";
        if ($conn->query($query) === TRUE){
            echo "<script>window.alert('Referral Data Successfully Deleted!');</script>";
            echo "<script>window.location.assign('referrals.php');</script>";
        }
    } 
?>