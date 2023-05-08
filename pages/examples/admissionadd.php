<?php
include 'connect2.php';

$patientno = $_POST['patientno'];
$staffno = $_POST['staffno'];
$prefer = $_POST['prefer'];
$date_of_admission = $_POST['date_of_admission'];
$admission_description = $_POST['admission_description'];


$query = "INSERT INTO admissions (User_ID, Staff_ID, Preferred_Method, Date_Admissioned, Admission_Description ) VALUES ('$patientno', '$staffno', '$prefer', '$date_of_admission', '$admission_description')";

if($conn->query($query) === TRUE) {
    echo "<script>window.alert('Admission Ticket Successfully Created!'); </script>";
    echo "<script>window.location.replace('admissions.php');</script>";
} else {
    echo '<script>window.alert("ERROR!")</script>';
}
?>