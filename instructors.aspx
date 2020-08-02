<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="instructors.aspx.cs" Inherits="newproject1.instructors" %>



<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *Must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title> We help you to find tutors</title>

    <!-- Favicon -->
    <link rel="icon" href="tutor.PNG">
    <style>

        .OrderHistory_RowSeparator { margin: 0px 0px 5px 0px; }
    </style>

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <form id="form1" runat="server">
    <!-- Preloader -->
    
    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area 
        <div class="top-header-area d-flex justify-content-between align-items-center">
            <div class="contact-info">
                <a href="#"><span>Phone:</span> +44 300 303 0266</a>
                <a href="#"><span>Email:</span> info@clever.com</a>
            </div>
            <div class="follow-us">
                <span>Follow us</span>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
        </div>-->

        <!-- Navbar Area -->
        <div class="clever-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <!-- Menu -->
                <nav class="classy-navbar justify-content-between" id="cleverNav">

                    <!-- Logo -->
                    <a class="nav-brand" href="index.aspx"><img src="tutor.PNG" alt=""></a>

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
                                                 <li><a href="#">Saved Tutor</a></li>

                                            
                                            
                                              <li><a href="login.aspx">Login</a></li>
                                               <li><a href="signup.aspx">Signup</a></li>
                                        <li><a href="courses.aspx">Courses</a></li>
                                   <!--     <li><a href="single-course.aspx">Single Courses</a></li>-->
                                        <li><a href="regions.aspx">Regions</a></li>
                                        <li><a href="#">Teachers</a></li>


                                    <!--    <li><a href="blog-details.aspx">Blog details</a></li>-->

                                    <!--    <li><a href="regular-page.aspx">Regular Page</a></li>-->
                                    </ul>
                                </li>
                                 <li><a href="#">For Tutors</a>
                                    <ul class="dropdown">

                                            
                                            
                                              <li><a href="login-tutor.aspx">Login</a></li>
                                               <li><a href="signup-tutor.aspx">Signup</a></li>
                                   <!--     <li><a href="single-course.aspx">Single Courses</a></li>-->
                                        <li><a href="jobs-tutor.aspx">Jobs</a></li>
                                        <li><a href="tutor-help.aspx">help</a></li>


                                    <!--    <li><a href="blog-details.aspx">Blog details</a></li>-->

                                    <!--    <li><a href="regular-page.aspx">Regular Page</a></li>-->
                                    </ul>
                                </li>
                                
                                <li><a href="courses.aspx">Courses</a></li>
                                <li><a href="instructors.aspx">Tutors</a>
                                   



                                </li>
                                <li><a href="blog.aspx">Blog</a></li>
                                <li><a href="contact.aspx">Contact</a></li>
                            </ul>

                           

                            <!-- Register / Login -->
                            <div class="register-login-area">
                                <a href="#" class="btn">Register</a>
                                <a href="index-login.html" class="btn active">Login</a>
                            </div>

                        </div>
                        <!-- Nav End -->

                            

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
                <li class="breadcrumb-item active" >Art &amp; Design</li>
            </ol>
        </nav>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Catagory ##### -->
    <div class="clever-catagory bg-img d-flex align-items-center justify-content-center p-3" style="background-image: url(img/bg-img/bg2.jpg);">
        <h3>Courses </h3>

    </div>



                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString1 %>" SelectCommand="SELECT * FROM [Tutors]">
                                </asp:SqlDataSource>
                                

            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal"  RepeatColumns="3" Width="1350px" Height="143px" CssClass="mr-0" BorderWidth="0px">
                <ItemTemplate>
                    <section class="popular-courses-area section-padding-30">
                   <div class="container">
                       <div class="row">
                     <!--  <div class="col-xs-4">-->
                       <div class=" col-xs-4"  style="margin-left:20%;margin-top:10%">
                    <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="250ms">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' width="400" Height="300"/>
                        <!-- Course Content col-md-6 col-lg-4-->
                        <div class="course-content">
                            <asp:Label ID="name" runat="server" Font-Size="XX-Large" Text='<%# Eval("name") %>'></asp:Label>

                            <div class="meta d-flex align-items-center">
                                <asp:Label ID="subjects" runat="server"  Font-Size="Large" Font-Bold="True" Text='<%# Eval("subject") %>'></asp:Label>
                                <span><i class="fa fa-circle" aria-hidden="true"></i></span>
                                <asp:Label ID="type" runat="server" Font-Size="Large" Font-Bold="True" Text='<%# Eval("type") %>'></asp:Label>
                            </div>
                            <asp:Label ID="desc" runat="server"  Font-Size="Small" Text='<%# Eval("description") %>'></asp:Label>
                        </div>
                        <!-- Seat Rating Fee -->
                        <div class="seat-rating-fee d-flex justify-content-between">
                            <div class="seat-rating h-100 d-flex align-items-center">
                                <div class="seat">
                                    <asp:Label ID="seats"  class="fa fa-user" runat="server"  aria-hidden="true" Height="16px" Font-Size="Small" Text='<%# Eval("location") %>'></asp:Label>
                                </div>
                                
                                     <asp:Label ID="rating"  class="fa fa-star" runat="server"  aria-hidden="true" Font-Size="Small" Text='<%# Eval("education") %>'></asp:Label>

                              
                            </div>
                            <div class="course-fee h-100">
                                <asp:HyperLink ID="fees1" runat="server" class="free" Text='<%# Eval("fees") %>' ></asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
                           </div>
                      
                    <br />
                        </section>  
                </ItemTemplate>
                <SeparatorTemplate>
                    <table width="30">
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                </SeparatorTemplate>
                                </asp:DataList>

    <!-- ##### Popular Course Area Start ##### -->
    
    <!-- ##### Popular Course Area End ##### -->

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
        <div class="bottom-footer-area d-flex justify-content-between align-items-center">
            <!-- Contact Info -->
            <div class="contact-info">
                <a href="#"><span>Phone:</span> +44 300 303 0266</a>
                <a href="#"><span>Email:</span> info@clever.com</a>
            </div>
            <!-- Follow Us -->
            <div class="follow-us">
                <span>Follow us</span>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
        </div>
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
    </form>
</body>

</html>


