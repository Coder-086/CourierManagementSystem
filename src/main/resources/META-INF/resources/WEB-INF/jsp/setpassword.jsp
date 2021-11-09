<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>COURIER</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="icon" href="../../static/pics/logo.png" type="image/x-icon">
	<link rel="stylesheet" href="../../static/css/forget.css">
	<link rel="icon" href="../../static/pics/logo.jpg" type="image/x-icon">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="../../static/js/domain.js"></script>
</head>
<body>

<br>
<br>
<br>
<br>
<div class="container height-100 d-flex justify-content-left align-items-center">
	<div class="card alert-danger " style="width: 28rem;">
		<h5 class="card-header">SET PASSWORD</h5>
		<div class="card-body">
			<form action="">
				<div class="inputBox " style="padding-left: 30px;" >
					<input   type="password" id="newpassword" name="New Password" required=""><br>
					<label for="">New Password</label>
				</div>
	
				<br>
				<div class="inputBox" style="padding-left: 30px;">
					<input  type="password" id = "confirmpassword" name="Confirm Password" required=""><br>
					<label for="">Confirm Password</label>
				</div>
	<br>
	<div class="button" style="padding-left: 30px;">
				<button  type="submit" name="" onclick="setpassword(event)" value="Save Changes" class="btn btn-success" style="width: 15rem;">Save Changes</button>
			</div>
			</form>
			<br>
		 
		</div>
	  </div>
	</div>
	
</body>
<script src="../../static/js/login.js"></script>
</html>