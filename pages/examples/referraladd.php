<?php
include 'connect2.php';

$patientno = $_POST['patientno'];
$staffno = $_POST['staffno'];
$counselorno = $_POST['counselorno'];
$date_of_referral = $_POST['date_of_referral'];
$referral_situation = $_POST['referral_situation'];
$referral_description = $_POST['referral_description'];


$query = "INSERT INTO referrals (User_ID, Staff_ID, Counselor_ID, Referral_Date, Referral_Situation, Referral_Description ) VALUES ('$patientno', '$staffno', '$counselorno', '$date_of_referral', '$referral_situation', '$referral_description')";

if($conn->query($query) === TRUE) {
    echo "<script>window.alert('Referral Ticket Successfully Created!'); </script>";
    echo "<script>window.location.replace('referrals.php');</script>";
} else {
    echo '<script>window.alert("ERROR!")</script>';
}
?>