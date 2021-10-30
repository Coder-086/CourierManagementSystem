function contact(event){
    event.preventDefault();

    console.log('I am in contact page');

    var name = document.getElementById('name').value;
    var email = document.getElementById('email').value;
    var description = document.getElementById('desc').value;

    console.log(name, email, description);

    fetch("http://localhost:8082/contactdetails", {
        method: "POST",
        headers: {
            "Content-type": "application/json"
        },
        body: JSON.stringify({
            name: name,
            email: email,
            description: desc;
        })
    }).then(data => data).then(res => {
        if(res.status == 200){
            swal("Great", "Your Query is Being Sent", "success");
        }else{
            swal("OOPS!!", "Email is not Registered with us", "warning")
        }
    }).catch(err => {
        swal("OOPS!!", "Some Problem Occurred", "warning");
        })
    })else{
        swal("OOPS!!!!" , "Please Specify Details!!!" , "warning")
    }
}