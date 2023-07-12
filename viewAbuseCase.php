
<?php
include 'connect.php';
//$log_id=$_POST['userName_id'];


$data=mysqli_query($con,"SELECT report_tb.description,report_tb.image,report_tb.location,report_tb.lati,report_tb.longi,reported_Date,registration_tb.name,registration_tb.phone FROM report_tb INNER JOIN registration_tb on registration_tb.log_id=report_tb.user_id where case_type = 'abuse';");

$list=array();

if($data->num_rows>0){
    while($row=mysqli_fetch_assoc($data)){
       // $list[]=$row;

       $myarray['description']=$row['description'];
       $myarray['image']=$row['image'];
       $myarray['location']=$row['location'];
       $myarray['lati']=$row['lati'];
       $myarray['longi']=$row['longi'];
       $myarray['reportedOn']=$row['reported_Date'];
       $myarray['phone']=$row['phone'];
       $myarray['reporter']=$row['name'];
       $myarray['result']="success";
       array_push($list,$myarray);
    }   

} 
else{
    $myarray['result']="failed";
    array_push($list,$myarray);
   // $list='Failed';
 
}
echo json_encode($list);
?>
