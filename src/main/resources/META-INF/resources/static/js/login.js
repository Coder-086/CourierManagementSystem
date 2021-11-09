const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");

const domain = getDomain();
console.log(domain);


sign_up_btn.addEventListener("click", () => {
  container.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener("click", () => {
  container.classList.remove("sign-up-mode");
});

function login(event){
    event.preventDefault();

    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;

    if(email == "" || password==""){
        swal("OOPS!!!!!!", "Fill Up all the Columns", "warning");
    	return;
    }
    console.log(email, password);

    fetch(`${domain}/login`, {
    	method: "POST",
    	headers: {
    		"Content-Type": "application/json"
    	},
    		body: JSON.stringify({
    		    email: email,
    		    password:  password})
    	}).then(data => {
          		if (data.status == 200) {
          			return data.json();
          		} else {
          			swal("OOPS!!!!!!", "Username or Password Incorrect", "error");
          			return;
          		}
          	})
          	.then(res => {
          		if(res) {
          			swal("Great!", "LoggedIn Successfully", "success");

          			localStorage.setItem('loggedUser', JSON.stringify(res));
          			console.log(res);
          			setTimeout(()=>{
          				window.open('main', "_self");
          			},500);
          		}
          	})
          	.catch(err => {
          		swal("OOPS!!!!!!", "Account Does't Exist", "error");
          	})
}

function signup(event){
    event.preventDefault();

    const user_name = document.getElementById("Username").value;
    const email_id  = document.getElementById("Email").value;
    var number = document.getElementById("number").value;
    const password  = document.getElementById("Password").value;
    const confirm_password = document.getElementById("confirm_password").value;

    console.log('Length of the Number is :::::: ' + number.length);
    console.log(user_name, email_id, number, password, confirm_password);

    if(user_name == "" || email_id=="" || number == "" || password=="" || confirm_password==""){
        swal("OOPS!!!!!!", "Fill Up all the Columns", "warning");
        return;
    }

    if(number.length != 10){
        swal("OOPS!!!!!!", "Please Provide Correct Number", "warning");
        return;
    }

    if(password.length < 6){
        swal("OOPS!!!!!!", "Password Should be minimum of 6 Characters", "warning");
        return;
    }

    if(password == confirm_password){
           fetch(`${domain}/signup` , {
           			method: "POST",
           			headers: {
           				"Content-Type": "application/json"
           			},
           			body: JSON.stringify({
           				username: user_name,
           				email: email_id,
           				number: number,
           				password: password
           			})
           		}).then(data => data).then(res => {
                  	console.log(res);
               		if (res.status == 200) {
                  			swal("Good job!", "SignedUp Successfully", "success");
                  		    setTimeout(()=>{
                                window.open("/", "_self");
                            },1500)
                  	} else {
                  			swal("OOPS!!!!!!", "Email Already Exist's with us", "error");
                  	}
                }).catch(err => {
                  		swal("OOPS!!!!!!", "User Registration Failed", "error");
                })
    }else{
            swal("OOPS!!!!!!", "Password Mis-match", "error");
    }

}

function forget(event){
    event.preventDefault();
    const otp_mail = document.getElementById("email").value;

    console.log(otp_mail);

    	if(otp_mail == ""){
    		swal("OOPS!!!!!!", "Fill Up all the Columns", "warning");
    		return;
    	}
    	fetch(`${domain}/sendotp`, {
    		method: "POST",
    		headers: {
    			"Content-Type": "application/json"
    		},
    		body: JSON.stringify({
    			email: otp_mail
    		})
    	}).then(data => data).then(res => {
    		if (res.status == 200) {
    			swal({
    				title: 'OPT sent Successfully',
    				buttons: false
    			  });

    			setTimeout(()=>{
    				window.open(`otp?email=${otp_mail}`, "_self");
    			},1500)
    		} else {
    			swal("OOPS!!!!!!", "Email is not Registered with Us", "error");
    		}

    	}).catch(err => {
    		swal("OOPS!!!!!!", "Account Does not Exist", "error");
    	})

}

function Otp(event){
    event.preventDefault();

	console.log('I am in OTP');

	const user_otp = document.getElementById('otp').value;
	console.log(user_otp);

	const url = new URL(window.location.href);
	const email = url.searchParams.get("email");

	if (email === '' || email === null) {
		window.location.replace('/');
		return;
	}

	console.log(">>>>>>>>>>>", email);

	if(user_otp == ""){
		swal("OOPS!!!!!!", "Please Enter the OTP", "warning");
		return;
	}
	fetch(`${domain}/checkotp`, {
		method: "POST",
		headers: {
			"Content-Type": "application/json"
		},
		body: JSON.stringify({
			otp: user_otp,
			email: email
		})
	}).then(data => data).then(res => {
		if (res.status == 200) {
			window.open(`setpassword?email=${email}`, "_self");
		} else {
			swal("OOPS!!!!!!", "Incorrect OTP", "error");
		}

	}).catch(err => {
		swal("OOPS!!!!!!", "Incorrect OTP", "error");
	})
}

function setpassword(event){
	event.preventDefault();

	console.log("I am in setpassword");

	const password = document.getElementById('newpassword').value;
	const confirm_password = document.getElementById('confirmpassword').value;

	const url = new URL(window.location.href);
	const email = url.searchParams.get("email");

	console.log(password, confirm_password);
	if(password == ""){
		swal("OOPS!!!!!!", "Fill the Columns", "error");
		return;
	}

	if(password != confirm_password){
		swal("OOPS!!!!!!", "Passsword Mis-match", "warning");
		return;
	}

	fetch(`${domain}/setpassword`, {
		method: "POST",
		headers: {
			"Content-Type": "application/json"
		},
		body: JSON.stringify({
			password: password,
			email: email
		})
	}).then(data => data).then(res => {
		if (res.status == 200) {
			 swal("Great", "Password Reset Successfully", "success");
			 setTimeout(()=>{
				window.open("/", "_self")
			},1000)

		} else {
			swal("OOPS!!!!!!", "Password Reset Failed", "error");
		}

	}).catch(err => {
		swal("OOPS!!!!!!", "Password Reset Failed", "error");
	})
}