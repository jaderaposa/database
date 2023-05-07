<?php   
    include "connect2.php";

    if(isset($_GET['Admission_ID'])){
        $id = $_GET['Admission_ID'];
        $query = "DELETE FROM admissions WHERE Admission_ID=$id";
        if ($conn->query($query) === TRUE){
            echo "<script>window.alert('Admission Data Successfully Deleted!');</script>";
            echo "<script>window.location.assign('admissions.php');</script>";
        }
    } 
?>