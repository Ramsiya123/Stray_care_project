
<?php
include 'connect.php';
$log_id=$_POST['officeId'];


$data=mysqli_query($con,"SELECT adopt_request_tb.request_id,animal_tb.description,animal_tb.gender,animal_tb.type,animal_tb.color,animal_tb.breed,animal_tb.animal_id,animal_tb.image as animalImage,adopt_request_tb.adopted_date,registration_tb.name,registration_tb.place,adopt_request_tb.sender_id,registration_tb.phone From adopt_request_tb INNER JOIN animal_tb ON animal_tb.animal_id=adopt_request_tb.animal_id INNER JOIN registration_tb on adopt_request_tb.sender_id=registration_tb.log_id  WHERE adopt_request_tb.status='completed'&& adopt_request_tb.recipient_id='$log_id';");
$list=array();

if($data->num_rows>0){
    while($row=mysqli_fetch_assoc($data)){
        $myarray['result']="success";
        $myarray['reqId']=$row['request_id'];
        $myarray['adoptedOn']=$row['adopted_date'];
        $myarray['animalId']=$row['animal_id'];
        $myarray['description']=$row['description'];
        $myarray['gender']=$row['gender'];
        $myarray['animaltype']=$row['type'];
        $myarray['color']=$row['color'];
        $myarray['breed']=$row['breed'];
        $myarray['image']=$row['animalImage'];
        $myarray['userId']=$row['sender_id'];
        $myarray['adoptedBy']=$row['name'];
        $myarray['place']=$row['place'];
        $myarray['phone']=$row['phone'];
       // $list[]=$row;
       array_push($list,$myarray);

    }   

} 
else{
   $myarray['result']="failed";
   
    array_push($list,$myarray);
  //  $list='Failed';
 
}
echo json_encode($list);
?>
