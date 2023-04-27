<?php 
require_once("include/config.php");
if(!empty($_POST["patreg"])) {
	$patreg= $_POST["patreg"];
	
		$result =mysqli_query($con,"SELECT PatientReg FROM tblpatient WHERE PatientReg='$patreg'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> Reg.No already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:green'> Reg.No available for Registration .</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>
