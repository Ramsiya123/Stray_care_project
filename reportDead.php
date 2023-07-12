<?php
include 'connect.php';
//$office_id=$_POST['officeId'];
$animal_id=$_POST['animalId'];
$died_on=$_POST['diedOn'];
$reason=$_POST['reason'];
$sql1= mysqli_query($con,"UPDATE collected_tb set  status='dead',died_on='$died_on', reason='$reason' where animal_id='$animal_id'");
if($sql1){
    $myarray['result']="success";
    $myarray['response']="done";
} else{
    $myarray['result']="failed";
   
}
echo json_encode($myarray);
?>