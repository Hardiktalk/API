<?php
include "connection.php";

$id         =   $_POST['i_id'];
$i_name     =   $_POST['i_name'];
$date       =   $_POST['date'];
$remark     =   $_POST['remark'];
$phone      =   $_POST['phone'];
$course_id  =   $_POST['c_id'];

$sql=  $sql1 = "Update inquiry set 
i_name = '$i_name',date='$date',remark='$remark',phone='$phone' where i_id='$id'";

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