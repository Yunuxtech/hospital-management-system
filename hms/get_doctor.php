<?php
include('include/config.php');
if(!empty($_POST["dutyid"])) 
{

 $sql=mysqli_query($con,"select doctorName,id from doctors where duty='".$_POST['dutyid']."'");?>
 <option selected="selected">Select Doctor </option>
 <?php
 while($row=mysqli_fetch_array($sql))
 	{?>
  <option value="<?php echo htmlentities($row['id']); ?>"><?php echo htmlentities($row['doctorName']); ?></option>
  <?php
}
}


if(!empty($_POST["reg"])) 
{

 $sql=mysqli_query($con,"select PatientName from tblpatient where PatientReg='".$_POST['reg']."'");
 while($row=mysqli_fetch_array($sql))
 	{?>
 <option value="<?php $row['ID']; ?>"><?php echo htmlentities($row['PatientName']); ?></option>
  <?php
}
}

?>

