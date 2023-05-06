<?php 
    include "connect2.php";

      
    $fullname = $_POST['fullname'];
    $pronoun = $_POST['pronoun'];
    $address = $_POST['address'];
    $phoneno = $_POST['phoneno'];


    $query = "INSERT INTO users VALUES ('','$fullname', '$pronoun', '$address', '$phoneno')";


        if($conn->query($query) === TRUE) {
            echo "<script>window.alert('User Successfully Added!'); </script>";
            echo "<script>window.location.replace('users.php');</script>";
        } else {
            echo '<script>window.alert("ERROR!")</script>';
        }
                    
?>