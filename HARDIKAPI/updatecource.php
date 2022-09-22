<?php
include "connection.php";

$id=$_POST['c_id'];
$c_name=$_POST['c_name'];
$description=$_POST['description'];
$fees=$_POST['fees'];
$duration=$_POST['duration'];

$sql=  $sql1 = "Update courses set 
c_name = '$c_name',description='$description',fees='$fees',duration='$duration' where c_id='$id'";

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