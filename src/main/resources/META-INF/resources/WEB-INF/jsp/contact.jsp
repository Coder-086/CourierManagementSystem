<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>COURIER</title>
	<link rel="icon" href="../../static/pics/logo.png" type="image/x-icon">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
          <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                      <a class="navbar-brand" href="#"><b>Courier Management System</b></a>
                      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>

                      <div class="collapse navbar-collapse" id="navbarSupportedContent">
                          <ul class="navbar-nav mr-auto">
                              <li class="nav-item active">
                                  <a class="nav-link" href="/main">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home</span></a>
                              </li>
                              <li class="nav-item active">
                                  <a class="nav-link" href="contact">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact Us</a>
                              </li>
                              <li class="nav-item active">
                                  <a class="nav-link" href="/main">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Billing</span></a>
                              </li>
                              <li class="nav-item active">
                                  <a class="nav-link" href="about">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About Us</span></a>
                              </li>
                              <li class="nav-item active">
                                  <a class="nav-link" href="setting">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Setting</a>
                              </li>
                          </ul>
                      </div>
                  </nav>

    <div class="container-fluid my-0 px-0 mb-3 ">
        <img src="http://www.3hmodelschooldhule.org.in/wp-content/uploads/2021/08/Contact.jpg" class="d-block w-100 mx-0" alt="..."> </div>
    <div class="container">
        <h2 class="text-center">Contact Us</h2>
        <form method="post" action="/contact">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="name" class="form-control" id="name" name="name" placeholder="Enter your Name">
            </div>
            <br>
            <div class="form-group">
                <label for="email">Email address</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter Your Email">
            </div>
            <br>
            <div class="form-group ">
                <label for="exampleFormControlInput1 ">Description</label>
                <input type="desc " class="form-control " id="desc" name="desc" placeholder=" Enter some Description about you ">
            </div>
            <br>
            <center><button class="btn btn-primary " type="submit" onclick="contact(event)">Submit</button></center>
    
        </form>
</body>
<script src="../../static/js/main.js"></script>
</html>
