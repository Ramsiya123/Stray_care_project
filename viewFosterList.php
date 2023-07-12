<?php
include 'connect.php';
$office_id=$_POST['officeId'];
//  $office_id=1;
$data=mysqli_query($con,"SELECT collected_tb.collected_on,collected_tb.animal_id,collected_tb.status,animal_tb.description,animal_tb.gender,animal_tb.type,animal_tb.color,animal_tb.breed,animal_tb.image,collected_tb.office_id from collected_tb INNER JOIN animal_tb on collected_tb.animal_id=animal_tb.animal_id where collected_tb.office_id='$office_id' && collected_tb.status='fostering'");
$list=array();
if($data->num_rows>0){
    while($row=mysqli_fetch_assoc($data)){
     //   $list[]=$row;
    $myarray['description']=$row['description'];
    $myarray['gender']=$row['gender'];
    $myarray['type']=$row['type'];
    $myarray['color']=$row['color'];
    $myarray['breed']=$row['breed'];
    $myarray['image']=$row['image'];
    $myarray['status']=$row['status'];
    $myarray['office_id']=$row['office_id'];
    $myarray['animalID']=$row['animal_id'];

    // $myarray['date']=$row['collected_on'];
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
