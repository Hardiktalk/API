<?php
include "connection.php";

$c_name=$_POST['c_name'];
$description=$_POST['description'];
$fees=$_POST['fees'];
$duration=$_POST['duration'];

$sql= "INSERT INTO courses (c_name,description,fees,duration) 
       values ('$c_name','$description','$fees','$duration')";

$result = mysqli_query($conn,$sql);

if ($result == 1) 
{
    $responce=[
         'status'=> 200,
         'data'=> '',
         'message' => 'data added successfully'
    ];
}
else {
    $responce=[
        'status'=> 200,
        'data'=> '',
        'message' => 'data null'
   ];
}
print_r(json_encode($responce));

?>