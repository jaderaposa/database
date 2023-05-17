<?php

include 'connect2.php';

    $id = $_POST['id'];
    $patientno = $_POST['patientno'];
    $staffno = $_POST['staffno'];
    $couselorno = $_POST['counselorno'];
    $date_start = $_POST['date_start'];
    $date_end = $_POST['date_end'];
    $counseling_type = $_POST['counseling_type'];
    $appointment_purpose = $_POST['appointment_purpose'];


    $query = "UPDATE appointments SET User_ID='$patientno', Staff_ID='$staffno', Counselor_ID='$couselorno', Date_Start='$date_start', Date_End='$date_end', Counseling_Type='$counseling_type', Appointment_Purpose='$appointment_purpose' WHERE Appointment_ID='$id'";


        if($conn->query($query) === TRUE) {
            echo "<script>window.alert('Ticket Successfully Updated!'); </script>";
            echo "<script>window.location.assign('appointments.php');</script>";
        } else {
            echo '<script>window.alert("ERROR!")</script>';
        }



?>