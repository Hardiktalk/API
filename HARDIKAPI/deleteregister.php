<?php
include "connection.php";

$id=$_POST['r_id'];

$sql= "DELETE FROM register WHERE r_id='$id'";

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
        'status'=> 200,
        'data'=> '',
        'message' => 'data null'
   ];
}
print_r(json_encode($responce));

?>