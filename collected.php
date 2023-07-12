<?php

include 'connect.php';

$office_id = $_POST['office_id'];
//$Health_cond = $_POST['health_id'];
$description = $_POST['description'];//vet or stray
$collected_from = $_POST['collected_from'];//vet or stray
$collected_on = $_POST['collected_on'];
$gender=$_POST['gender'];
$animal_type=$_POST['animal_type'];
$animal_color=$_POST['animal_color'];
$breed=$_POST['breed'];

$img=$_FILES['image']['name'];                  //img--->php;    img1---->from flutter...use this in postman
$imagepath='reportCase/'.$img;
$tmp_name=$_FILES['image']['tmp_name'];
move_uploaded_file($tmp_name,$imagepath);
$sql1=mysqli_query($con,"INSERT INTO animal_tb(description,gender,type,color,breed,image)values('$description','$gender','$animal_type','$animal_color','$breed','$img')");
$animal_ID=mysqli_insert_id($con);
$sql2=mysqli_query($con,"INSERT INTO collected_tb(animal_id,office_id,collected_on,collect_from)values('$animal_ID','$office_id','$collected_on','$collected_from')");





if($sql1 && $sql2){

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>