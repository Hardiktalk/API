<?php
include "connection.php";
$sql="SELECT*FROM courses";
$result=mysqli_query($conn,$sql);
//print_r($result);
if($result->num_rows>=1)
{
    while ($row=mysqli_fetch_assoc($result)) 
    {
        $data[]=$row;
    }
}
//print_r($data);

$i_name     =   $_POST['i_name'];
$date       =   $_POST['date'];
$remark     =   $_POST['remark'];
$phone      =   $_POST['phone'];
$course_id  =   $_POST['c_id'];

$sql1= "INSERT INTO inquiry (i_name,date,remark,phone,c_id)
       VALUES ('$i_name','$date','$remark','$phone','$course_id')";

$result1 = mysqli_query($conn,$sql1);
print_r($result1);

if($result1 == 1) 
{
    $responce=[
        'status'=>200,
        'data'=>'',
        'message'=>'details added',   
    ];
}
else {
    $responce=[
        'status'=>202,
        'data'=>'',
        'message'=>'details null',   
    ];
}

print_r(json_encode($responce));

?> 