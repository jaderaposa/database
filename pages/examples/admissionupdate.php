<?php

include 'connect2.php';

    $id = $_POST['id'];
    $patientno = $_POST['patientno'];
    $staffno = $_POST['staffno'];
    $prefer = $_POST['prefer'];
    $doa = $_POST['date_of_admission'];
    $addes = $_POST['admission_description'];


    $query = "UPDATE admissions SET User_ID='$patientno', Staff_ID='$staffno', Preferred_Method='$prefer', Date_Admissioned='$doa', Admission_Description='$addes' WHERE Admission_ID='$id'";


        if($conn->query($query) === TRUE) {
            echo "<script>window.alert('Ticket Successfully Updated!'); </script>";
            echo "<script>window.location.assign('admissions.php');</script>";
        } else {
            echo '<script>window.alert("ERROR!")</script>';
        }



?>