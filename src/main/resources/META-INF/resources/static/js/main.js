
function contact(event){
    event.preventDefault();
  
    console.log('I am submitting now');
    swal("Great!", "Query Sent Successfully", "success");
    setTimeout(()=>{
      window.open("/main", "_self");
    },1500)
}

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
    const logemail = localStorage.getItem('loginEmail');
    const name = document.getElementById('name').value;
}

function updatepassword(event){
    event.preventDefault();

    console.log('I am in update password');
}