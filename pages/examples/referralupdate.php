<?php

include 'connect2.php';

    $id = $_POST['id'];
    $patientno = $_POST['patientno'];
    $staffno = $_POST['staffno'];
    $couselorno = $_POST['counselorno'];
    $dor = $_POST['date_of_referral'];
    $referral_situation = $_POST['referral_situation'];
    $referral_description = $_POST['referral_description'];


    $query = "UPDATE referrals SET User_ID='$patientno', Staff_ID='$staffno', Counselor_ID='$couselorno', Referral_Date='$dor', Referral_Situation='$referral_situation', Referral_Description='$referral_description' WHERE Referral_ID='$id'";


        if($conn->query($query) === TRUE) {
            echo "<script>window.alert('Ticket Successfully Updated!'); </script>";
            echo "<script>window.location.assign('referrals.php');</script>";
        } else {
            echo '<script>window.alert("ERROR!")</script>';
        }



?>