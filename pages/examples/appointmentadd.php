<?php
include 'connect2.php';

$patientno = $_POST['patientno'];
$staffno = $_POST['staffno'];
$counselorno = $_POST['counselorno'];
$date_start = $_POST['date_start'];
$date_end = $_POST['date_end'];
$counseling_type = $_POST['counseling_type'];
$appointment_purpose = $_POST['appointment_purpose'];


$query = "INSERT INTO appointments (User_ID, Staff_ID, Counselor_ID, Date_Start, Date_End, Counseling_Type, Appointment_Purpose) VALUES ('$patientno', '$staffno', '$counselorno', '$date_start', '$date_end', '$counseling_type', '$appointment_purpose')";

if($conn->query($query) === TRUE) {
    echo "<script>window.alert('Appointment Ticket Successfully Created!'); </script>";
    echo "<script>window.location.replace('appointments.php');</script>";
} else {
    echo '<script>window.alert("ERROR!")</script>';
}
?>