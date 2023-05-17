<?php
include 'connect2.php';

$patientno = $_POST['patientno'];
$appointmentno = $_POST['appointmentno'];
$amount_due = $_POST['amountdue'];
$dop = $_POST['dop'];
$mop = $_POST['mop'];


$query = "INSERT INTO payments (User_ID, Appointment_ID, Amount, DOP, MOP) VALUES ('$patientno', '$appointmentno', '$amount_due', '$dop', '$mop')";

if($conn->query($query) === TRUE) {
    echo "<script>window.alert('Payment Ticket Successfully Created!'); </script>";
    echo "<script>window.location.replace('payments.php');</script>";
} else {
    echo '<script>window.alert("ERROR!")</script>';
}
?>