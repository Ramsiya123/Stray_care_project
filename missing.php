<?php

include 'connect.php';

$User_id = $_POST['user_id'];
$Animal_type = $_POST['animalType'];
$Breed = $_POST['breed'];
$Name = $_POST['name'];
$Health_cond = $_POST['health'];
$Color = $_POST['color'];
$Lastseen_on = $_POST['lastSeenOn'];
$Report_date = $_POST['reported_date'];
$Mob_no = $_POST['contact'];
$Lastseen_at = $_POST['lastSeenAt'];

$Img=$_FILES['image']['name'];                  
$imagepath='missings/'.$Img;
$tmp_name=$_FILES['image']['tmp_name'];
move_uploaded_file($tmp_name,$imagepath);


$sql = mysqli_query($con, "INSERT into missing_tb( user_id,animal_type,health_cond,image,name,color,breed,lastseen_on,lastseen_at,mob_no,report_date)values ('$User_id','$Animal_type','$Health_cond','$Img','$Name','$Color','$Breed','$Lastseen_on','$Lastseen_at','$Mob_no','$Report_date');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>