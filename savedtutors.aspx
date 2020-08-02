<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="savedtutors.aspx.cs" Inherits="newproject1.savedtutors" %>




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
                                                 <li><a href="savedtutors">Saved Tutor</a></li>

                                            
                                            
                                              <li><a href="login.aspx">Login</a></li>
                                               <li><a href="signup.aspx">Signup</a></li>
                                        <li><a href="saved_courses.aspx">Saved Courses</a></li>
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
                <li class="breadcrumb-item active" >Art &amp; Design</li>
            </ol>
        </nav>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Catagory ##### -->
    <div class="clever-catagory bg-img d-flex align-items-center justify-content-center p-3" style="background-image: url(img/bg-img/bg2.jpg);">
        <h3>Tutors </h3>

    </div>



                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString1 %>" SelectCommand="SELECT * FROM [selected_tutors] WHERE ([username] = @username)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="username" SessionField="uname" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                

            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal"  RepeatColumns="3" Width="1450px" Height="402px" CssClass="mr-0" BorderWidth="0px"  >
                <ItemTemplate>
                    <section class="popular-courses-area section-padding-30">
                   <div class="container">
                       <div class="row">
                     <!--  <div class="col-xs-4">-->
                       <div class=" col-xs-4" style="margin-left:20%;margin-top:5%;width:350px">
                    <div class="single-popular-course mb-100 wow fadeInUp" data-wow-delay="250ms">
                        <asp:Image ID="Image1" runat="server" Width="350" Height="250" ImageUrl='<%# Eval("t_image") %>'/>
                        <!-- Course Content col-md-6 col-lg-4-->
                        <div class="course-content">
                            <asp:Label ID="title" runat="server" Text='<%# Eval("t_name") %>' Font-Size="XX-Large"></asp:Label>

                           
                            <asp:Label ID="desc" runat="server" Text='<%# Eval("t_description") %>' Font-Size="Small" Height="131px"></asp:Label>
                        </div>
                        <!-- Seat Rating Fee -->
                        <div class="seat-rating-fee d-flex justify-content-between">
                            <div class="seat-rating h-100 d-flex align-items-center">
                                <div class="seat">
                                    <asp:Label ID="seats"  class="fa fa-user" runat="server" Text='<%# Eval("location") %>' aria-hidden="true" Height="16px" Font-Size="Small"></asp:Label>
                                </div>
                                
                                     <asp:Label ID="rating"  class="fa fa-star" runat="server" Text='<%# Eval("education") %>' aria-hidden="true" Font-Size="Small"></asp:Label>
           <asp:Button ID="add_course" runat="server" Text="DELETE " class="btn btn-primary" style="margin-left:30px" CommandName="delete tutor" />

                              
                            </div>
                            <div class="course-fee h-100">
                                
                                <asp:HyperLink ID="fees1" runat="server" class="free" Text='<%# Eval("fees") %>'></asp:HyperLink>
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

    <!-- ##### Popular Course Area Start #####                  <asp:Button ID="add_tutor" runat="server" Text="ADD COURSE" class="btn btn-primary"  CommandName="add_course" CommandArgument='<%#Eval("c_id")+","+ Eval("c_name")+","+ Eval("c_teacher")+","+Eval("c_type")+","+Eval("c_description")+","+Eval("c_rating")+" ,"+Eval("c_fee")+","+Eval("c_participants")%>'  />
-->
    
    <!-- ##### Popular Course Area End ##### -->

    <!-- ##### Footer Area Start ##### 
    <footer class="footer-area">
        <div class="top-footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="footer-logo">
                            <a href="index.html"><img src="img/core-img/logo2.png" alt=""></a>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>-->

        <!-- Bottom Footer Area 
        <div class="bottom-footer-area d-flex justify-content-between align-items-center">
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
        </div>
    </footer>-->
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


