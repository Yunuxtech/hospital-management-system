<?php
include('include/config.php');
include('include/checklogin.php');
check_login();
if(isset($_POST['submit']))
  {
    
    $vid=$_GET['viewid'];
    $bp=$_POST['bp'];
    $bs=$_POST['bs'];
    $weight=$_POST['weight'];
    $temp=$_POST['temp'];
    $con=$_POST['con'];
    $pres=$_POST['pres'];
    
    $query.=mysqli_query($con, "insert into tblmedicalhistory(PatientID,BloodPressure,BloodSugar,Weight,Temperature,MedicalCon,MedicalPres)VALUES('$vid','$bp','$bs','$weight','$temp','$con','$pres')");
    if($query){
      echo '<script>alert("Medicle history has been added.")</script>';
    //   echo "<script>window.location.href ='appointment-history.php'</script>";
    }
    else{
      echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }

  
}
