<?php

include 'connect2.php';

    $id = $_POST['id'];
    $patientno = $_POST['patientno'];
    $appointmentno = $_POST['appointmentno'];
    $amountdue = $_POST['amountdue'];
    $dop = $_POST['dop'];
    $mop = $_POST['mop'];


    $query = "UPDATE payments SET User_ID='$patientno', Appointment_ID='$appointmentno', Amount='$amountdue', DOP='$dop', MOP='$mop' WHERE Payment_ID='$id'";


        if($conn->query($query) === TRUE) {
            echo "<script>window.alert('Ticket Successfully Updated!'); </script>";
            echo "<script>window.location.assign('payments.php');</script>";
        } else {
            echo '<script>window.alert("ERROR!")</script>';
        }



?>