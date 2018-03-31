<?php
    $link  = mysqli_connect("localhost", "root", "", "2016270") ;
    if(mysqli_connect_error($link)){
        die ('ERROR: Unable to connect') ;
    }
?>