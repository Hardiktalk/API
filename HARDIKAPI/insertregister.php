<?php
include "connection.php";

$r_name=$_POST['r_name'];
$email=$_POST['email'];
$adress=$_POST['adress'];
$phone=$_POST['phone'];
$adharcard=$_POST['adharcard'];

$sql= "INSERT INTO register (r_name,email,adress,phone,adharcard) 
       values ('$r_name','$email','$adress','$phone','$adharcard')";

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