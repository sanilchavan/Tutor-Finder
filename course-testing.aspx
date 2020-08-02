<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="course-testing.aspx.cs" Inherits="newproject1.course_testing" %>

<!DOCTYPE html>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *Must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>We help you to find tutors!</title>

    <!-- Favicon -->
    <link rel="icon" href="tutor.PNG">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <!-- Preloader 
    <div id="preloader">
        <div class="spinner"></div>
    </div>-->

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        
        
        <!-- Navbar Area -->
        <div class="clever-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <!-- Menu -->
                <nav class="classy-navbar justify-content-between" id="cleverNav">

                    <!-- Logo -->
                    <a class="nav-brand" href="index.html"><img src="tutor.PNG" alt=""></a>

                    <!-- Navbar Toggler -->
                    <div class="classy-navbar-toggler">
                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                    </div>

                    <!-- Menu -->
                    <div class="classy-menu">

                        <!-- Close Button -->
                        <div class="classycloseIcon">
                            <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                        </div>

                        <!-- Nav Start -->
                        <div class="classynav">
                            <ul>
                                <li><a href="index.aspx">Home</a></li>
                                <li><a href="#">For Students</a>
                                    <ul class="dropdown">
                                                 <li><a href="savedtutors.aspx">Saved Tutor</a></li>

                                            
                                            
                                              <li><a href="login.aspx">Login</a></li>
                                               <li><a href="signup.aspx">Signup</a></li>
                                             <li><a href="take_appointment.aspx">Take Appointment</a></li>
                                       <li><a href="view_appointments.aspx">View Appointments</a></li>


                                        <li><a href="courses.aspx">Courses</a></li>
                                   <!--     <li><a href="single-course.aspx">Single Courses</a></li>-->
                                        <li><a href="regions.aspx">Regions</a></li>
                                        <li><a href="#">Teachers</a></li>



                                    <!--    <li><a href="blog-details.aspx">Blog details</a></li>-->

                                    <!--    <li><a href="regular-page.aspx">Regular Page</a></li>-->
                                    </ul>
                                </li>
                       
                               
                                <li><a href="courses.aspx">Courses</a></li>
                                <li><a href="tutors.aspx">Tutors</a>
                                   



                                </li>
                                <li><a href="blog.aspx">Blog</a></li>
                                <li><a href="contact.aspx">Contact</a></li>
                            </ul>
                            <!-- Search Button -->
                           

                            <!-- Register / Login -->
                           
                        <!-- Nav End -->
                         <div class="login-state d-flex align-items-center">
                                <div class="user-name mr-30">
                                    <div class="dropdown">
                                        <asp:Label ID="username" runat="server" class="dropdown-toggle"  Text="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></asp:Label>
                                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userName">
                                            <a class="dropdown-item" href="#">Profile</a>
                                            <a class="dropdown-item" href="#">Account Info</a>
                                            <a class="dropdown-item" href="index.aspx">Logout</a>
                                        </div>
                                    </div>
                                </div>
                               
                            </div>
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area">
        <!-- Breadcumb -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Courses</a></li>
                <li class="breadcrumb-item"><a href="#">Art &amp; Design</a></li>
                <li class="breadcrumb-item active" aria-current="page">English Grammer</li>
            </ol>
        </nav>
    </div>
    <!-- ##### Breadcumb Area End ##### -->


    <!-- ##### Single Course Intro Start ##### -->
    
    <!-- ##### Single Course Intro End ##### -->
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString1 %>" SelectCommand="SELECT * FROM [Courses] WHERE ([c_id] = @c_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="c_id" QueryStringField="cid" Type="String" />
        </SelectParameters>

    </asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="single-course-intro d-flex align-items-center justify-content-center" style="background-image: url(img/bg-img/bg3.jpg);margin-left:100px">
        <!-- Content -->
        <div class="single-course-intro-content text-center">
            <!-- Ratings -->
            <div class="ratings">
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star-o" aria-hidden="true"></i>
            </div>

            <asp:Label ID="Course_name" runat="server" Text='<%# Eval("c_name") %>' Font-Bold="True" Font-Size="XX-Large"></asp:Label>
            <div class="meta d-flex align-items-center justify-content-center">
                <asp:Label ID="teacher" runat="server" Text='<%# Eval("c_teacher") %>' Font-Size="Larger"></asp:Label>
              <asp:Label ID="Label2" class="fa fa-circle" runat="server" Text='<%# Eval("c_type") %>' aria-hidden="true" Font-Size="Larger"></asp:Label>

                
            </div>
            <asp:Label ID="fee" runat="server"  class="price" Text='<%# Eval("c_fee") %>'></asp:Label>
        </div>
    </div>
            <div class="single-course-content section-padding-100" style="margin-left:200px">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="course--content">

                        <div class="clever-tabs-content">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="tab--1" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false">Description</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="tab--2" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="true">Curriculum</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="tab--3" data-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="true">Reviews</a>
                                </li>
                               
                                <!--<li class="nav-item">
                                    <a class="nav-link" id="tab--5" data-toggle="tab" href="#tab5" role="tab" aria-controls="tab5" aria-selected="true">Forum</a>
                                </li>-->
                            </ul>

                            <div class="tab-content" id="myTabContent">
                                <!-- Tab Text -->
                                <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab--1">
                                    <div class="clever-description">

                                        <!-- About Course -->
                                        <div class="about-course mb-30">
                                            <h4>About this course</h4>
                                            <asp:Label ID="course_description" runat="server" Text='<%# Eval("c_description") %>'></asp:Label>
                                        </div>

                                        <!-- All Instructors -->
                                        <div class="all-instructors mb-30">
                                            <h4>All Instructors</h4>

                                            <div class="row">
                                                <!-- Single Instructor -->
                                                <div class="col-lg-6">
                                                    <div class="single-instructor d-flex align-items-center mb-30">
                                                        <div class="instructor-thumb">
                                                            <asp:Image ID="Image1" runat="server" ImageUrl='img/bg-img/t1.png' />
                                                            </div>
                                                        <div class="instructor-info">
                                                            <asp:Label ID="Label1" runat="server"  Font-Size="Large" Text='<%# Eval("c_teacher") %>' Font-Bold="True"></asp:Label><br />
                                                            <span>Teacher</span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- Single Instructor 
                                                <div class="col-lg-6">
                                                    <div class="single-instructor d-flex align-items-center mb-30">
                                                        <div class="instructor-thumb">
                                                            <img src="img/bg-img/t2.png" alt="">
                                                        </div>
                                                        <div class="instructor-info">
                                                            <h5>Sarah Parker</h5>
                                                            <span>Teacher</span>
                                                        </div>
                                                    </div>
                                                </div>-->

                                                <!-- Single Instructor 
                                                <div class="col-lg-6">
                                                    <div class="single-instructor d-flex align-items-center mb-30">
                                                        <div class="instructor-thumb">
                                                            <img src="img/bg-img/t3.png" alt="">
                                                        </div>
                                                        <div class="instructor-info">
                                                            <h5>Sarah Parker</h5>
                                                            <span>Teacher</span>
                                                        </div>
                                                    </div>
                                                </div>-->

                                                <!-- Single Instructor 
                                                <div class="col-lg-6">
                                                    <div class="single-instructor d-flex align-items-center mb-30">
                                                        <div class="instructor-thumb">
                                                            <img src="img/bg-img/t4.png" alt="">
                                                        </div>
                                                        <div class="instructor-info">
                                                            <h5>Sarah Parker</h5>
                                                            <span>Teacher</span>
                                                        </div>
                                                    </div>
                                                </div>-->
                                            </div>
                                        </div>

                                        <!-- FAQ -->
                                        <div class="clever-faqs">
                                            <h4>FAQs</h4>

                                            <div class="accordions" id="accordion" role="tablist" aria-multiselectable="true">

                                                <!-- Single Accordian Area -->
                                                <div class="panel single-accordion">
                                                    <h6><a role="button" class="" aria-expanded="true" aria-controls="collapseOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Can I just enroll in a single course? I'm not interested in the entire Specialization?
                                                    <span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                                    <span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                                    </a></h6>
                                                    <div id="collapseOne" class="accordion-content collapse show">
                                                        <p>Yes you can and also you can do a specific part of the course too</p>
                                                    </div>
                                                </div>

                                                <!-- Single Accordian Area -->
                                                <div class="panel single-accordion">
                                                    <h6>
                                                        <a role="button" class="collapsed" aria-expanded="true" aria-controls="collapseTwo" data-parent="#accordion" data-toggle="collapse" href="#collapseTwo">What is the refund policy?
                                                        <span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                                        <span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                                        </a>
                                                    </h6>
                                                    <div id="collapseTwo" class="accordion-content collapse">
                                                        <p>You can quickly request a refund by contacting our support team. You can also make a refund request by clicking on the ellipses at the top right-hand corner of the course player, and then by selecting Request a refund.</p>
                                                    </div>
                                                </div>

                                                <!-- Single Accordian Area -->
                                                <div class="panel single-accordion">
                                                    <h6>
                                                        <a role="button" aria-expanded="true" aria-controls="collapseThree" class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapseThree">What background knowledge is necessary?
                                                        <span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                                        <span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                                        </a>
                                                    </h6>
                                                    <div id="collapseThree" class="accordion-content collapse">
                                                        <p>Basic understanding of the language</p>
                                                    </div>
                                                </div>

                                                <!-- Single Accordian Area -->
                                                <div class="panel single-accordion">
                                                    <h6>
                                                        <a role="button" aria-expanded="true" aria-controls="collapseFour" class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapseFour">Do i need to take the courses in a specific order?
                                                        <span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                                        <span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                                        </a>
                                                    </h6>
                                                    <div id="collapseFour" class="accordion-content collapse">
                                                        <p>Yes , you have to take the course in order to understand the course content better.</p>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <!-- Tab Text -->
                                <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab--2">
                                    <div class="clever-curriculum">

                                        <!-- About Curriculum -->
                                        <div class="about-curriculum mb-30">
                                            <h4>Syllabus</h4>
                                            <p>Introduction to lines

RESOURCE: Quiz solutions for this section</br>
Naming simple geometric figures</br>
Naming simple geometric figures </br>

Naming simple geometric figures</br>
3 questions
Length of a line segment</br>
Length of a line segment </br>
Length of a line segment</br>
=Slope and midpoint of a line segment</br>
Slope and midpoint of a line segment </p>
                                        </div>

                                        <!-- Curriculum Level -->
                                       

                                        <!-- Curriculum Level -->
                                        
                                    </div>
                                </div>

                                <!-- Tab Text -->
                                <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="tab--3">
                                    <div class="clever-review">

                                        <!-- About Review -->
                                        <div class="about-review mb-30">
                                            <h4>Reviews</h4>
                                            <p>This is my 3rd course by Shubham and again it was a great one. I really enjoy her teaching style, pace and responsiveness and the fact that she is always improving her courses. Highly recommended, one more time.</p>
                                      </div>

                                        <!-- Ratings -->
                                        <div class="clever-ratings d-flex align-items-center mb-30">

                                            <div class="total-ratings text-center d-flex align-items-center justify-content-center">
                                                <div class="ratings-text">
                                                    <h2>4.5</h2>
                                                    <div class="ratings--">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                    </div>
                                                    <span>Rated 5 out of 3 Ratings</span>
                                                </div>
                                            </div>

                                            <div class="rating-viewer">
                                                <!-- Rating -->
                                                <div class="single-rating mb-15 d-flex align-items-center">
                                                    <span>5 STARS</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span>80%</span>
                                                </div>
                                                <!-- Rating -->
                                                <div class="single-rating mb-15 d-flex align-items-center">
                                                    <span>4 STARS</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span>20%</span>
                                                </div>
                                                <!-- Rating -->
                                                <div class="single-rating mb-15 d-flex align-items-center">
                                                    <span>3 STARS</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span>0%</span>
                                                </div>
                                                <!-- Rating -->
                                                <div class="single-rating mb-15 d-flex align-items-center">
                                                    <span>2 STARS</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span>0%</span>
                                                </div>
                                                <!-- Rating -->
                                                <div class="single-rating mb-15 d-flex align-items-center">
                                                    <span>1 STARS</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span>0%</span>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Single Review -->
                                        <div class="single-review mb-30">
                                            <div class="d-flex justify-content-between mb-30">
                                                <!-- Review Admin -->
                                                <div class="review-admin d-flex">
                                                    <div class="thumb">
                                                        <img src="img/bg-img/t1.png" alt="">
                                                    </div>
                                                    <div class="text">
                                                        <h6>Sarah Parker</h6>
                                                        <span>Sep 29, 2017 at 9:48 am</span>
                                                    </div>
                                                </div>
                                                <!-- Ratings -->
                                                <div class="ratings">
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Single Review -->
                                        <div class="single-review mb-30">
                                            <div class="d-flex justify-content-between mb-30">
                                                <!-- Review Admin -->
                                                <div class="review-admin d-flex">
                                                    <div class="thumb">
                                                        <img src="img/bg-img/t1.png" alt="">
                                                    </div>
                                                    <div class="text">
                                                        <h6>Sarah Parker</h6>
                                                        <span>Sep 29, 2017 at 9:48 am</span>
                                                    </div>
                                                </div>
                                                <!-- Ratings -->
                                                <div class="ratings">
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Tab Text -->
                               
                                <!-- Tab Text -->
                                <div class="tab-pane fade" id="tab5" role="tabpanel" aria-labelledby="tab--5">
                                    <div class="clever-review">

                                        <!-- About Review -->
                                        <div class="about-review mb-30">
                                            <h4>Reviews</h4>
                                            <p>Sed elementum lacus a risus luctus suscipit. Aenean sollicitudin sapien neque, in fermentum lorem dignissim a. Nullam eu mattis quam. Donec porttitor nunc a diam molestie blandit. Maecenas quis ultrices</p>
                                        </div>

                                        <!-- Ratings -->
                                        <div class="clever-ratings d-flex align-items-center mb-30">

                                            <div class="total-ratings text-center d-flex align-items-center justify-content-center">
                                                <div class="ratings-text">
                                                    <h2>4.5</h2>
                                                    <div class="ratings--">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                    </div>
                                                    <span>Rated 5 out of 3 Ratings</span>
                                                </div>
                                            </div>

                                            <div class="rating-viewer">
                                                <!-- Rating -->
                                                <div class="single-rating mb-15 d-flex align-items-center">
                                                    <span>5 STARS</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span>80%</span>
                                                </div>
                                                <!-- Rating -->
                                                <div class="single-rating mb-15 d-flex align-items-center">
                                                    <span>4 STARS</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span>20%</span>
                                                </div>
                                                <!-- Rating -->
                                                <div class="single-rating mb-15 d-flex align-items-center">
                                                    <span>3 STARS</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span>0%</span>
                                                </div>
                                                <!-- Rating -->
                                                <div class="single-rating mb-15 d-flex align-items-center">
                                                    <span>2 STARS</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span>0%</span>
                                                </div>
                                                <!-- Rating -->
                                                <div class="single-rating mb-15 d-flex align-items-center">
                                                    <span>1 STARS</span>
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span>0%</span>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Single Review -->
                                        <div class="single-review mb-30">
                                            <div class="d-flex justify-content-between mb-30">
                                                <!-- Review Admin -->
                                                <div class="review-admin d-flex">
                                                    <div class="thumb">
                                                        <img src="img/bg-img/t1.png" alt="">
                                                    </div>
                                                    <div class="text">
                                                        <h6>Sarah Parker</h6>
                                                        <span>Sep 29, 2017 at 9:48 am</span>
                                                    </div>
                                                </div>
                                                <!-- Ratings -->
                                                <div class="ratings">
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla, mollis eu metus in, sagittis.</p>
                                        </div>

                                        <!-- Single Review -->
                                        <div class="single-review mb-30">
                                            <div class="d-flex justify-content-between mb-30">
                                                <!-- Review Admin -->
                                                <div class="review-admin d-flex">
                                                    <div class="thumb">
                                                        <img src="img/bg-img/t1.png" alt="">
                                                    </div>
                                                    <div class="text">
                                                        <h6>Sarah Parker</h6>
                                                        <span>Sep 29, 2017 at 9:48 am</span>
                                                    </div>
                                                </div>
                                                <!-- Ratings -->
                                                <div class="ratings">
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla, mollis eu metus in, sagittis.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="course-sidebar">
                        <!-- Buy Course -->
                        <form runat="server">
                        <asp:Button ID="Button1" class="btn clever-btn mb-30 w-100" runat="server" Text="Buy Course" OnClick="Button1_Click" />
                        </form>
                        <!-- Widget -->
                        <div class="sidebar-widget">
                            <h4>Course Features</h4>
                            <ul class="features-list">
                                <li>
                                    <h6><i class="fa fa-clock-o" aria-hidden="true"></i> Duration</h6>
                                    <h6>2 Weeks</h6>
                                </li>
                                <li>
                                    <h6><i class="fa fa-bell" aria-hidden="true"></i> Lectures</h6>
                                    <h6>10</h6>
                                </li>
                                <li>
                                    <h6><i class="fa fa-file" aria-hidden="true"></i> Quizzes</h6>
                                    <h6>3</h6>
                                </li>
                                <li>
                                    <h6><i class="fa fa-thumbs-up" aria-hidden="true"></i> Pass Percentage</h6>
                                    <h6>60</h6>
                                </li>
                                <li>
                                    <h6><i class="fa fa-thumbs-down" aria-hidden="true"></i> Max Retakes</h6>
                                    <h6>5</h6>
                                </li>
                            </ul>
                        </div>

                        <!-- Widget -->
                        <div class="sidebar-widget">
                            <h4>Certification</h4>
                            <img src="img/bg-img/cer.png" alt="">
                        </div>

                        <!-- Widget -->
                        <div class="sidebar-widget">
                            <h4>You may like</h4>

                            <!-- Single Courses -->
                            <div class="single--courses d-flex align-items-center">
                                <div class="thumb">
                                    <img src="img/bg-img/yml.jpg" alt="">
                                </div>
                                <div class="content">
                                    <h5>English Grammar</h5>
                                    <h6>$20</h6>
                                </div>
                            </div>

                            <!-- Single Courses -->
                            <div class="single--courses d-flex align-items-center">
                                <div class="thumb">
                                    <img src="img/bg-img/yml2.jpg" alt="">
                                </div>
                                <div class="content">
                                    <h5>Expository writing</h5>
                                    <h6>$45</h6>
                                </div>
                            </div>

                            <!-- Single Courses -->
                            <div class="single--courses d-flex align-items-center">
                                <div class="thumb">
                                    <img src="img/bg-img/yml3.jpg" alt="">
                                </div>
                                <div class="content">
                                    <h5>Vocabulary</h5>
                                    <h6>$20</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


             </ItemTemplate>
    </asp:DataList>


    <!-- ##### Courses Content Start ##### -->
    
    <!-- ##### Courses Content End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <!-- Top Footer Area -->
        <div class="top-footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Footer Logo -->
                        <div class="footer-logo">
                            <a href="index.html"><img src="img/core-img/logo2.png" alt=""></a>
                        </div>
                        <!-- Copywrite -->
                       
                    </div>
                </div>
            </div>
        </div>

        <!-- Bottom Footer Area -->
       
    </footer>
    <!-- ##### Footer Area End ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>
