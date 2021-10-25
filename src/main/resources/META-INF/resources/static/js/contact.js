function contact(event){
    event.preventDefault();

    console.log('I am in contact page');

    var name = document.getElementById('name').value;
    var email = document.getElementById('email').value;
    var description = document.getElementById('desc').value;

    console.log(name, email, description);
}