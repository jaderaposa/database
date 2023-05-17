<?php   
    include "connect2.php";

    if(isset($_GET['Appointment_ID'])){
        $id = $_GET['Appointment_ID'];
        $query = "DELETE FROM appointments WHERE Appointment_ID=$id";
        if ($conn->query($query) === TRUE){
            echo "<script>window.alert('Appointment Data Successfully Deleted!');</script>";
            echo "<script>window.location.assign('appointments.php');</script>";
        }
    } 
?>