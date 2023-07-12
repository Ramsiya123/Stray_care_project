<?php
include 'connect.php';
$animal_id=$_POST['animalId'];
$user_id=$_POST['userId'];
$send_date=$_POST['sendDate'];
$office_id=$_POST['officeId'];
$send_status='requested';


$sql1=mysqli_query($con,"INSERT INTO adopt_request_tb(animal_id,sender_id,status,send_date,recipient_id)values('$animal_id','$user_id','$send_status','$send_date','$office_id')");
if($sql1){
    $myarray['result']="success";
    $myarray['response']="done";
} else{
    $myarray['result']="failed";
   
}
echo json_encode($myarray);
?>