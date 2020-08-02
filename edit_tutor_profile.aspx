<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit_tutor_profile.aspx.cs" Inherits="newproject1.edit_tutor_profile" %>

<!DOCTYPE html>



`
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <style>
    body {
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

/* style the container */
.container {
  position: relative;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px 0 30px 0;
} 

/* style inputs and link buttons */
input,
.btn{
  width: 100%;
  padding: 12px;
  border: none;
  border-radius: 4px;
  margin: 5px 0;
  opacity: 0.85;
  display: inline-block;
  font-size: 17px;
  line-height: 20px;
  text-decoration: none; /* remove underline from anchors */
}
 .button {
     width: 30%;
  padding: 12px;
  border: none;
  border-radius: 4px;
  margin: 5px 0;
  opacity: 0.85;
  display: inline-block;
  font-size: 17px;
  line-height: 20px;
  text-decoration: none; /* remove underline from anchors */

            }

input:hover,
.btn:hover {
  opacity: 1;
}

/* add appropriate colors to fb, twitter and google buttons */
.fb {
  background-color: #3B5998;
  color: white;
}

.twitter {
  background-color: #55ACEE;
  color: white;
}

.google {
  background-color: #dd4b39;
  color: white;
}

/* style the submit button */
.submitbtn {
  background-color: #4CAF50;
  color: white;
  cursor: pointer;
}

.submitbtn {
  background-color: #45a049;
}
.cancelbtn {
  background-color: #f44336;
  color: white;
  cursor: pointer;
}

.cancelbtn {
   background-color: #f44336;

}
.label {

     width: 100%;
  padding: 12px;
  border: none;
  border-radius: 4px;
  margin: 5px 0;
  opacity: 0.85;
  display: inline-block;
  font-size: 17px;
  line-height: 10px;
  text-decoration: none;

        }
/* Two-column layout */
.col {
  float: left;
  width: 50%;
  margin: auto;
  padding: 0 50px;
  margin-top: 6px;
}
 .column {
      float: left;
  width: 30%;
  margin: auto;
  padding: 0 50px;
  margin-top: 6px;
        }

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* vertical line */


/* text inside the vertical line */


/* hide some text on medium and large screens */

/* bottom container */
.bottom-container {
  text-align: center;
  background-color: #666;
  border-radius: 0px 0px 4px 4px;
}

/* Responsive layout - when the screen is less than 650px wide, make the two columns stack on top of each other instead of next to each other */
        @media screen and (max-width: 650px) {
            .col {
                width: 100%;
                margin-top: 0;
            }
            /* hide the vertical line */
            .vl {
                display: none;
            }
            /* show the hidden text on small screens */
        }
  
</style>
    <!-- The above 4 meta tags *Must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Clever - Education &amp; Courses Template | Contact</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
<script type="text/javascript">

    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {

                $('#imgview').attr('src', e.target.result);

            };
            reader.readAsDataURL(input.files[0]);



        }


    }





</script>

</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="spinner"></div>
    </div>

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
                                        <li><a href="saved_courses.aspx">Saved Courses</a></li>
                                   <!--     <li><a href="single-course.aspx">Single Courses</a></li>-->
                                        <li><a href="regions.aspx">Regions</a></li>
                                        <li><a href="#">Teachers</a></li>


                                    <!--    <li><a href="blog-details.aspx">Blog details</a></li>-->

                                    <!--    <li><a href="regular-page.aspx">Regular Page</a></li>-->
                                    </ul>
                                </li>
                                 <li><a href="#">For Tutors</a>
                                    <ul class="dropdown">

                                            
                                            
                                              <li><a href="tutor-login.aspx">Login</a></li>
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
                                <a href="login.aspx" class="btn active">Login</a>
                            </div>

                        </div>
                        <!-- Nav End -->
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

   
    <!-- ##### Contact Area Start ##### -->
    <div class="container">
        <form id="form1" runat="server">
    <div class="row">
     
      <div class="col">
          <asp:Label ID="Label1" class="label" runat="server" Text="First Name"></asp:Label>
                     <asp:TextBox ID="firstname" runat="server"  placeholder="" ></asp:TextBox>

                 

          <asp:Label ID="Label5" class="label" runat="server" Text="Email"></asp:Label>
                     <asp:TextBox ID="email" runat="server"  placeholder="abc@def.com" ></asp:TextBox>

           <asp:Label ID="Label7" class="label" runat="server" Text="Contact"></asp:Label>
                    <asp:TextBox ID="contact" runat="server"  placeholder="878779797" ></asp:TextBox>
           <asp:Label ID="Label10" class="label" runat="server" Text="Fees"></asp:Label>
                    <asp:TextBox ID="fees" runat="server"  placeholder="eg. $5,$10" ></asp:TextBox>
                     <asp:Label ID="Label11" class="label" runat="server" Text="Description"></asp:Label>
                              <asp:TextBox ID="desc" runat="server"  placeholder="eg.Description in 100 words" ></asp:TextBox>
          
           <asp:Label ID="Label12" class="label" runat="server" Text="Gender"></asp:Label>
                              <asp:TextBox ID="gender" runat="server"  placeholder="eg.Male,Female" ></asp:TextBox>
          
           <asp:Label ID="Label14" class="label" runat="server" Text="Education"></asp:Label>
                              <asp:TextBox ID="education" runat="server"  placeholder="eg.Bsc,Msc" style="margin-bottom:20px"></asp:TextBox>
          



                    <asp:Button ID="Button3" runat="server" class="submitbtn" Text="Update" OnClick="Button3_Click" />



        
      </div>

      <div class="col">
        <div class="hide-md-lg">
        </div>
                              <asp:Label ID="Label3" class="label" runat="server" Text="Password"></asp:Label>

          <asp:TextBox ID="password"  runat="server"  placeholder="Password"  ></asp:TextBox>
                  
          <asp:Label ID="Label6" class="label" runat="server" Text="Subjects"></asp:Label>
            <asp:TextBox ID="subjects" runat="server"  placeholder="eg. English, Maths, Chemistry" ></asp:TextBox>

          <asp:Label ID="Label8" class="label" runat="server" Text="Location"></asp:Label>
          <asp:TextBox ID="location" runat="server"  placeholder="eg. Mumbai[E], Mumbai[W]" ></asp:TextBox>
                   <asp:Label ID="Label9" class="label" runat="server" Text="type"></asp:Label>
                    <asp:TextBox ID="type" runat="server"  placeholder="eg. Online,Classroom" ></asp:TextBox>
                     <asp:Label ID="Label13" class="label" runat="server" Text="Photo"></asp:Label>
         
          
          <asp:Image ID="imgview" runat="server"   Height="200px" Width="200px"/>


          <asp:FileUpload ID="FileUpload1" runat="server" onchange="readURL(this);"/>

                                  
                                  

           <asp:Button ID="Button2" runat="server" class="cancelbtn" Text="Clear"   />

        
      </div>
      
    </div>
        </form>
</div>

<!--<div class="bottom-container">
  <div class="row">
    <div class="col">
      <a href="#" style="color:white" class="button" >Sign up</a>
    </div>
    <div class="col">
      <a href="#" style="color:white" class="button">Forgot password?</a>
    </div>
  </div>
</div>-->
    <!-- ##### Contact Area End ##### class="button"-->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <!-- Top Footer Area -->
        <div class="top-footer-area">
           
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
    <!-- Google Maps -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwuyLRa1uKNtbgx6xAJVmWy-zADgegA2s"></script>
    <script src="js/google-map/map-active.js"></script>

    
</body>

</html>



