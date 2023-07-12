<?php
include 'connect.php';
//$office_id=$_POST['officeId'];
$request_id=$_POST['requestId'];
$status=$_POST['status'];
$adopt_date=$_POST['adoptDate'];
$sql1= mysqli_query($con,"UPDATE adopt_request_tb set status='$status',adopted_date='$adopt_date'where request_id='$request_id';");
if($sql1){
    $myarray['result']="success";
    $myarray['response']="done";
} else{
    $myarray['result']="failed";
   
}
echo json_encode($myarray);
?>