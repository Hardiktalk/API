<?php

include "connection.php";

$sql="SELECT*FROM courses";
$result=mysqli_query($conn,$sql);
print_r($result);
if($result->num_rows>=1)
{
   while ($row=mysqli_fetch_assoc($result)) 
   {
     $data[]=$row;
   }
   $responce = [
    'status'=>200,
    'data'=> $data,
    'message'=> 'details shown'
   ];

}
else 
{
    $responce= [
        'status'=> 202,
        'data'=> '',
        'message'=>'details null'
    ];
}

print_r(json_encode($responce));






?>