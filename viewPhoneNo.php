<?php
include 'connect.php';
//$log_id=$_POST['userName_id'];


$data=mysqli_query($con,"SELECT * from office_tb");

$list=array();

if($data->num_rows>0){
    while($row=mysqli_fetch_assoc($data)){
       // $list[]=$row;
       $myarray['result']="success";

       $myarray['phone']=$row['ph_no'];
       $myarray['location']=$row['location'];
       $myarray['email']=$row['email'];
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
