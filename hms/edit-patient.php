<?php
session_start();
error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();

if(isset($_POST['submit']))
{	
	$eid=$_GET['editid'];
	$patname=$_POST['patname'];
	$patreg = $_POST['patreg'];
	$patdept = $_POST['patdept'];
	$patcontact=$_POST['patcontact'];
	$patage=$_POST['patage'];
	$pataddress=$_POST['pataddress'];
	$gender=$_POST['gender'];
	$kinname = $_POST['kinname'];
	$kincon = $_POST['kincon'];
	$kinrel = $_POST['kinrel'];
	$medhis=$_POST['medhis'];
$sql=mysqli_query($con,"update tblpatient set PatientName='$patname',PatientReg='$patreg',PatientDept='$patdept',PatientContno='$patcontact',PatientGender='$gender',PatientAdd='$pataddress',PatientAge=$patage,PatientMedhis='$medhis',KinName='$kinname',KinCon='$kincon',kinRel='$kinrel' where ID='$eid'");
if($sql)
{
echo "<script>alert('Patient info updated Successfully');</script>";
header('location:manage-patient.php');

}
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Receptionist | Edit Patient</title>
		
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
		<link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />


	</head>
	<body>
		<div id="app">		
<?php include('include/sidebar.php');?>
<div class="app-content">
<?php include('include/header.php');?>
						
<div class="main-content" >
<div class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
<section id="page-title">
<div class="row">
<div class="col-sm-8">
<h1 class="mainTitle">Patient | Edit Patient</h1>
</div>
<ol class="breadcrumb">
<li>
<span>Patient</span>
</li>
<li class="active">
<span>Edit Patient</span>
</li>
</ol>
</div>
</section>
<div class="container-fluid container-fullw bg-white">
<div class="row">
<div class="col-md-12">
<div class="row margin-top-30">
<div class="col-lg-8 col-md-12">
<div class="panel panel-white">
<div class="panel-heading">
<h5 class="panel-title">Edit Patient</h5>
</div>
<div class="panel-body">
<form role="form" name="" method="post">
<?php
 $eid=$_GET['editid'];
$ret=mysqli_query($con,"select * from tblpatient where ID='$eid'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
<div class="form-group">
		<label for="doctorname"> Full Name</label>
		<input type="text" name="patname" class="form-control"   value="<?php  echo $row['PatientName'];?>" placeholder="Enter Patient FullName" required="true">
</div>
<div class="form-group">
		<label for="fess">Registration No.</label>
		<input type="text" name="patreg" class="form-control"  value="<?php  echo $row['PatientReg'];?>" placeholder="Enter Patient Registration No." required="true" maxlength="16" readonly>
</div>
<div class="form-group">
		<label for="fess">Contact no</label>
		<input type="text" name="patcontact" class="form-control"  value="<?php  echo $row['PatientContno'];?>"placeholder="Enter Patient Contact no" required="true" maxlength="11">
</div>
<div class="form-group">
		<label for="fess">Department</label>
		<input type="text" name="patdept" class="form-control"  value="<?php  echo $row['PatientDept'];?>" placeholder="Enter Patient Department" required="true" maxlength="30">
</div>
<div class="form-group">
		<label for="fess">Age</label>
		<input type="text" name="patage" class="form-control" value="<?php  echo $row['PatientAge'];?>" placeholder="Enter Patient Age" required="true" pattern="[0-9]+">
</div>
<div class="form-group">
		<label for="address">Patient Address</label>
		<textarea name="pataddress" class="form-control"  placeholder="Enter Patient Address" required="true"><?php echo $row['PatientAdd']; ?></textarea>
</div>
<div class="form-group">
              <label class="control-label">Gender: </label>
              <?php  if($row['PatientGender']=="Female"){ ?>
              <input type="radio" name="gender" id="gender" value="Female" checked="true">Female
              <input type="radio" name="gender" id="gender" value="male">Male
              <?php } else { ?>
              <label>
              <input type="radio" name="gender" id="gender" value="Male" checked="true">Male
              <input type="radio" name="gender" id="gender" value="Female">Female
              </label>
             <?php } ?>
</div>
<p>Next of Kin Info</p>
<hr style="margin-top:0px;">
<div class="form-group">
		<label for="fess">Next of Kin</label>
		<input type="text" id="kinName" name="kinname" class="form-control" value="<?php  echo $row['KinName'];?>" placeholder="Enter Patient Next of Kin" required="true">
</div>
<div class="form-group">
		<label for="fess">Next of Kin Contact</label>
		<input type="text" id="kinCon" name="kincon" class="form-control" value="<?php  echo $row['KinCon'];?>" placeholder="Enter Patient Next of Kin contact" required="true">
</div>
<div class="form-group">
		<label for="fess">Relationship</label>
		<input type="text" id="kinCon" name="kinrel" class="form-control" value="<?php  echo $row['kinRel'];?>" placeholder="Enter Patient Next of Kin relationship" required="true">
</div>
<p>Patient Medical History</p>
<hr style="margin-top:0px;">
<div class="form-group">
		<label for="fess">Medical History</label>
		<textarea type="text" name="medhis" class="form-control" placeholder="Enter Patient Medical History(if any)" required="true"><?php  echo $row['PatientMedhis'];?></textarea>
</div>	
<div class="form-group">
<label for="fess">
 Creation Date
</label>
<input type="text" class="form-control"  value="<?php  echo $row['CreationDate'];?>" readonly='true'>
</div>
<?php } ?>
	<button type="submit" name="submit" id="submit" class="btn btn-o btn-primary">Update</button>
</form>
</div>
</div>
</div>
</div>
</div>
<div class="col-lg-12 col-md-12">
<div class="panel panel-white">
</div>
</div>
</div>
</div>
</div>
</div>				
</div>
</div>
</div>
			<!-- start: FOOTER -->
<?php include('include/footer.php');?>
			<!-- end: FOOTER -->
		
			<!-- start: SETTINGS -->
<?php include('include/setting.php');?>
			
			<!-- end: SETTINGS -->
		</div>
		<!-- start: MAIN JAVASCRIPTS -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
		<script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
		<script src="vendor/autosize/autosize.min.js"></script>
		<script src="vendor/selectFx/classie.js"></script>
		<script src="vendor/selectFx/selectFx.js"></script>
		<script src="vendor/select2/select2.min.js"></script>
		<script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		<script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: CLIP-TWO JAVASCRIPTS -->
		<script src="assets/js/main.js"></script>
		<!-- start: JavaScript Event Handlers for this page -->
		<script src="assets/js/form-elements.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->
	</body>
</html>
