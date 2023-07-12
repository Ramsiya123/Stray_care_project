<?php

include 'connect.php';

$Code = $_POST['code'];
$Password = $_POST['password'];
$Authority_type = $_POST['type'];

$sql = mysqli_query($con, "SELECT *  From authority_login_tb where code='$Code'&& password = '$Password' && authority_type='$Authority_type';");

if($sql -> num_rows> 0 ) {

    while($row = mysqli_fetch_assoc($sql)) {
        $myarray['result'] = 'Success';
        $myarray['log_id'] =$row['log_id'];


    }

}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>