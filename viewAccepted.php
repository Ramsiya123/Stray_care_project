
<?php
include 'connect.php';
$office_id=$_POST['officeId'];


$data=mysqli_query($con,"SELECT animal_tb.image as aniImage,adopt_request_tb.animal_id,adopt_request_tb.request_id,adopt_request_tb.sender_id,adopt_request_tb.status,adopt_request_tb.send_date,adopt_request_tb.reply_date,registration_tb.name,registration_tb.place FROM adopt_request_tb inner join animal_tb on adopt_request_tb.animal_id=animal_tb.animal_id inner join registration_tb on registration_tb.log_id=adopt_request_tb.sender_id where adopt_request_tb.recipient_id='$office_id' &&  adopt_request_tb.status='accepted';");
$list=array();

if($data->num_rows>0){
    while($row=mysqli_fetch_assoc($data)){
      //  $list[]=$row;
      $myarray['result']="success";
      $myarray['animalId']=$row['animal_id'];
    //  $myarray['description']=$data['description'];
   //   $myarray['gender']=$data['gender'];
   //   $myarray['animaltype']=$data['type'];
  //    $myarray['color']=$data['color'];
    //  $myarray['breed']=$data['breed'];
      $myarray['image']=$row['aniImage'];
      $myarray['reqId']=$row['request_id'];
      $myarray['userId']=$row['sender_id'];
      $myarray['Status']=$row['status'];
      $myarray['sendDate']=$row['send_date'];
      $myarray['replyDate']=$row['reply_date'];
      $myarray['Username']=$row['name'];
      $myarray['place']=$row['place'];

      array_push($list,$myarray);
    }   

} 
else{
   // $list['result']='Failed';
    $myarray['result']="failed";
    array_push($list,$myarray);
 
}
echo json_encode($list);
?>
