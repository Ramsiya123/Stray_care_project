<?php
include 'connect.php';
//$office_id=$_POST['officeId'];
$missing_id=$_POST['missing_id'];
$sql1= mysqli_query($con,"UPDATE missing_tb set  status='found' where missing_id='$missing_id'");
if($sql1){
    $myarray['result']="success";
    $myarray['response']="done";
} else{
    $myarray['result']="failed";
   
}
echo json_encode($myarray);
?>