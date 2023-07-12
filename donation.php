<?php

include 'connect.php';

$User_id = $_POST['uid'];
$Amount = $_POST['amt'];
$Type = $_POST['method'];
$Date = $_POST['date'];


$sql = mysqli_query($con, "INSERT into donation_tb(user_id,amount,type,pay_date)values ('$User_id','$Amount','$Type','$Date');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>