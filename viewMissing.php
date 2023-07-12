
<?php
include 'connect.php';

$AnimalType=$_POST['animalType'];
$data=mysqli_query($con,"SELECT * FROM missing_tb where status='missing' and animal_type='$AnimalType' ");
$list=array();

if($data->num_rows>0){
    while($row=mysqli_fetch_assoc($data)){
      //  $list[]=$row;
    $myarray['breed']=$row['breed'];
    $myarray['missing_id']=$row['missing_id'];
    $myarray['name']=$row['name'];
    $myarray['health_cond']=$row['health_cond'];
    $myarray['color']=$row['color'];
    $myarray['lastseen_on']=$row['lastseen_on'];
    $myarray['lastseen_at']=$row['lastseen_at'];
    $myarray['report_date']=$row['report_date'];
    $myarray['mob_no']=$row['mob_no'];
    $myarray['image']=$row['image'];
    $myarray['animal_type']=$row['animal_type'];
    $myarray['status']=$row['status'];
    $myarray['user_id']=$row['user_id'];
    $myarray['result']='success';

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
