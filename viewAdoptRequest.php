
<?php
include 'connect.php';
$office_id=$_POST['officeId'];


$data=mysqli_query($con,"SELECT * FROM adopt_request_tb inner join animal_tb on adopt_request_tb.animal_id=animal_tb.animal_id where adopt_request_tb.recipient_id='$office_id' && adopt_request_tb.status='requested';");
$list=array();

if($data->num_rows>0){
    while($row=mysqli_fetch_assoc($data)){
       // $list[]=$row;
        $myarray['result']="success";
        $myarray['animalId']=$row['animal_id'];
      //  $myarray['description']=$data['description'];
     //   $myarray['gender']=$data['gender'];
     //   $myarray['animaltype']=$data['type'];
    //    $myarray['color']=$data['color'];
      //  $myarray['breed']=$data['breed'];
        $myarray['image']=$row['image'];
        $myarray['reqId']=$row['request_id'];
        $myarray['userId']=$row['sender_id'];
        $myarray['sendStatus']=$row['status'];
        $myarray['sendDate']=$row['send_date'];
        array_push($list,$myarray);
    
       
    }   

} 
else{
  //  $list['result']='Failed';
    $myarray['result']="failed";
    array_push($list,$myarray);
 
}
echo json_encode($list);
?>
