<?php
include 'connect.php';
//$office_id=$_POST['officeId'];
$request_id=$_POST['requestId'];
$reply=$_POST['reply'];
$reply_date=$_POST['replyDate'];

$sql1= mysqli_query($con,"UPDATE adopt_request_tb set  status='$reply',reply_date='$reply_date'where request_id='$request_id'");
// $sql2=mysqli_query($conn,"INSERT INTO adopted_tb(req_id,status) VALUES('$request_id','$status')");
if($sql1){
    $myarray['result']="success";
    $myarray['response']="done";
} else{
    $myarray['result']="failed";
   
}
echo json_encode($myarray);
?>