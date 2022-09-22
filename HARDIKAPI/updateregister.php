<?php
include "connection.php";

$id            = $_POST['r_id'];
$r_name        = $_POST['r_name'];
$email         = $_POST['email'];
$adress        = $_POST['adress'];
$phone         = $_POST['phone'];
$adharcard     = $_POST['adharcard'];

$sql= "Update register set 
r_name = '$r_name',email='$email',adress='$adress',phone='$phone',adharcard='$adharcard' where r_id='$id'";

$result = mysqli_query($conn,$sql);
print_r($result);

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
        'status'=> 202,
        'data'=> '',
        'message' => 'data null'
   ];
}
print_r(json_encode($responce));

?>