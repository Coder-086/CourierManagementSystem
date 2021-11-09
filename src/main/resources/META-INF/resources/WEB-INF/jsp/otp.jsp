<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>COURIER</title>
	<link rel="icon" href="../../static/pics/logo.png" type="image/x-icon">
	<link rel="stylesheet" href="../../static/css/otp.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="../../static/js/domain.js"></script>
</head>
<body>
	
	<div id="app">
		<div class="container height-100 d-flex justify-content-center align-items-center">
			<div class="position-relative">
				<div class="card alert-danger text-center">
					<h6>Please enter the one time password <br> </h6>
					<div class="inputBox">
                    				<input type="text" id = "otp" name="OTP" required="">
                    				<label for="">OTP</label>
                    </div>
 					<div class="mt-4"> <button class="btn btn-danger px-4 validate" onclick="Otp(event)" >Validate</button> </div>
					<div class="mt-3 content d-flex justify-content-center align-items-center"> <span>Didn't get the code</span> <a href="#" class="text-decoration-none ms-3">Resend(1/3)</a> </div>
				</div>
			</div>
		</div>
	</div>
	
	
	

			
		</form>
	</div>










	
</body>
<script src="../../static/js/login.js"></script>
</html>