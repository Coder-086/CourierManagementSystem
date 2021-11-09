<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <link rel="stylesheet" href="../../static/css/main.css">
    <link rel="stylesheet" href="../../static/css/common.css">
	<title>COURIER</title>
	<link rel="icon" href="../../static/pics/logo.png" type="image/x-icon">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="../../static/js/domain.js"></script>
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
                      <li class="user">
                          <a class="nav-link" href="setting">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hello, </a>
                      </li>
                      <li class="nav-item active">
                           <p id="loggeduser">&nbsp;&nbsp;USER </p>
                      </li>

                 </ul>
             </div>
         </nav>
        <h5>
            <br>
            <marquee behavior="scroll" direction="left " id = "scroll">***WELCOME TO COURIER MANAGEMENT SYSTEM***</marquee>
        </h5>

        <div class="container my-3 ">
            <h1 class="my-4 text-center ">SELECT AMONG THIS</h1>
            <div class="row ">
                <div class="col-md-4 ">
                    <div class="card mb-4 shadow-sm ">
                        <img src="https://www.pngitem.com/pimgs/m/65-651102_home-logistics-branded-boxes-box-hd-png-download.png" class="d-block w-100 " alt="... ">
                        <div class="card-body ">
                            <p class="card-text ">Delivery-1</p>
                            <div class="d-flex justify-content-between align-items-center ">
                                <div class="btn-group ">
                                    <a href="#"><button type="button " class="btn btn-sm btn-outline-secondary ">View</button></a>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 ">
                    <div class="card mb-4 shadow-sm ">
                        <img src="https://www.pngitem.com/pimgs/m/65-651102_home-logistics-branded-boxes-box-hd-png-download.png" class="d-block w-100 " alt="... ">
                        <div class="card-body ">
                            <p class="card-text ">Delivery-2</p>
                            <div class="d-flex justify-content-between align-items-center ">
                                <div class="btn-group ">
                                    <a href="#"><button type="button " class="btn btn-sm btn-outline-secondary ">View</button></a>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 ">
                    <div class="card mb-4 shadow-sm ">
                        <img src="https://www.pngitem.com/pimgs/m/65-651102_home-logistics-branded-boxes-box-hd-png-download.png" class="d-block w-100 " alt="... ">
                        <div class="card-body ">
                            <p class="card-text ">Delivery-3</p>
                            <div class="d-flex justify-content-between align-items-center ">
                                <div class="btn-group ">
                                    <a href="#"><button type="button " class="btn btn-sm btn-outline-secondary ">View</button></a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 ">
                    <div class="card mb-4 shadow-sm ">
                     <img src="https://www.pngitem.com/pimgs/m/65-651102_home-logistics-branded-boxes-box-hd-png-download.png" class="d-block w-100 " alt="... ">
                        <div class="card-body ">
                            <p class="card-text ">Delivery-4</p>
                            <div class="d-flex justify-content-between align-items-center ">
                                <div class="btn-group ">
                                    <a href="#"><button type="button " class="btn btn-sm btn-outline-secondary ">View</button></a>

                                </div>
                                <small class="text-muted ">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 ">
                    <div class="card mb-4 shadow-sm ">
                        <img src="https://www.pngitem.com/pimgs/m/65-651102_home-logistics-branded-boxes-box-hd-png-download.png" class="d-block w-100 " alt="... ">
                        <div class="card-body ">
                            <p class="card-text ">Delivery-5</p>
                            <div class="d-flex justify-content-between align-items-center ">
                                <div class="btn-group ">
                                    <a href="#"><button type="button " class="btn btn-sm btn-outline-secondary ">View</button></a>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 ">
                    <div class="card mb-4 shadow-sm ">
                        <img src="https://www.pngitem.com/pimgs/m/65-651102_home-logistics-branded-boxes-box-hd-png-download.png" class="d-block w-100 " alt="... ">
                        <div class="card-body ">
                            <p class="card-text ">Delivery-6</p>
                            <div class="d-flex justify-content-between align-items-center ">
                                <div class="btn-group ">
                                    <a href="#"><button type="button " class="btn btn-sm btn-outline-secondary ">View</button></a>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <footer>
            <p>
                WE DELIVER YOUR TRUST...
            </p>
    </footer>
</body>
<script src="../../static/js/main.js"></script>
</html>