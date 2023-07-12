
<?php
include 'connect.php';
//s$office_id=$_POST['officeId'];


$data=mysqli_query($con,"

SELECT collected_tb.animal_id,collected_tb.office_id,animal_tb.description,animal_tb.gender,animal_tb.type,animal_tb.color,animal_tb.breed,animal_tb.image,office_tb.location,office_tb.ph_no from collected_tb INNER JOIN animal_tb on collected_tb.animal_id=animal_tb.animal_id INNER JOIN office_tb on collected_tb.office_id=office_tb.login_id WHERE collected_tb.status='fostering'");
$list=array();

if($data->num_rows>0){
    while($row=mysqli_fetch_assoc($data)){
       // $list[]=$row;
       $myarray['animalID']=$row['animal_id'];
       $myarray['officeID']=$row['office_id'];
       $myarray['description']=$row['description'];
    $myarray['gender']=$row['gender'];
    $myarray['type']=$row['type'];
    $myarray['color']=$row['color'];
    $myarray['breed']=$row['breed'];
    $myarray['image']=$row['image'];
    $myarray['office']=$row['location'];
    $myarray['phone']=$row['ph_no'];
    // $myarray['user_id']=$row['user_id'];
    $myarray['result']="success";

    array_push($list,$myarray);

    }   

} 
else{
   // $list='Failed';
   $myarray['result']="failed";
   array_push($list,$myarray);
 
}
echo json_encode($list);
?>
