user = localStorage.getItem("loggedUser");
userObj = JSON.parse(user);
console.log(userObj);

document.getElementById("loggeduser").innerHTML = userObj.username;

function logout(event){
    event.preventDefault();

    console.log('I am in Logout Function');
    swal("Great!", "Logout Successfully", "success");
    setTimeout(()=>{
      window.open("/", "_self");
    },1500)
}

function updateaccount(event){
    event.preventDefault();

    console.log('I am in Update Account');
    var logedmail = localStorage.getItem('loginEmail');

    var name = document.getElementById('name').value;
    var number = document.getElementById('number').value;
    var address = document.getElementById('address').value;

    console.log(name, number, address);

   fetch("http://localhost:8082/account" , {
       method: "POST",
   		headers: {
   			"Content-Type": "application/json"
   		},
   		body: JSON.stringify({
            username: name,
   			number: number,
   			address: address,
   			email: logedmail
   		})
   	}).then(data => data).then(res => {
   		if (res.status == 200) {
   			swal("Great!", "Updated Successfully", "success");
   			setTimeout(()=>{
   				window.open('setting', "_self");
   			},1500)
   		} else {
   			swal("OOPS!!!!!!", "Some Problem Occurred", "error");
   		}

   	})
   	.catch(err => {
   		swal("OOPS!!!!!!", "Some Problem Occurred", "error");
     })

}


function updatepassword(event){
    event.preventDefault();

    console.log('I am in update password');

    var email = localStorage.getItem('loginEmail');

    var oldpassword = document.getElementById('oldpassword').value;
    var newpassword = document.getElementById('newpassword').value;
    var confirmpassword = document.getElementById('confirmpassword').value;

    console.log(oldpassword, newpassword, confirmpassword);

    if(oldpassword == newpassword){
          swal("OOPS!!!!!!", "New Password Cannot be same as Old Password", "warning");
          return;
        }

        if(oldpassword == "" || newpassword == "" || confirmpassword == ""){
          swal("OOPS!!!!!!", "Fill Up All Columns", "warning");
          return;
        }

        if(newpassword == confirmpassword){
            fetch("http://localhost:8082/checkpassword", {
              method: "POST",
              headers: {
                "Content-Type": "application/json"
              },
              body: JSON.stringify({
                password: oldpassword,
                email: email
              })
            }).then(data => data).then(res => {
                if (res.status == 200) {
                   fetch("http://localhost:8082/updatepassword", {
                      method: "POST",
                      headers: {
                        "Content-Type": "application/json"
                      },
                      body: JSON.stringify({
                        password: newpassword,
                        email: email
                      })
                   }).then(data => data).then(res => {
                    if (res.status == 200) {
                      swal("Great!", "Password Updated Successfully", "success");
                      setTimeout(()=>{
                              window.open("/setting", "_self");
                      },1500)
                    } else {
                      swal("OOPS!!!!!!", "Old Password is Incorrect", "error")
                    }

                  })
                  .catch(err => {
                    swal("OOPS!!!!!!", "Some Problem Occured", "warning")
                  })
                } else {
                  swal("OOPS!!!!!!", "Old Password is Incorrect", "error")
                }

              })
              .catch(err => {
                swal("OOPS!!!!!!", "Account Exists", "warning")
              })
        }else{
          swal("OOPS!!!!!!", "Password Mis-match", "warning");
          return;
        }
}

function cancel(event){
    event.preventDefault();

    console.log('I am in cancel function');

    swal("Done", "Cancelled", "success");
    setTimeout(()=>{
        window.open("/setting", "_self");
    },1500)
}