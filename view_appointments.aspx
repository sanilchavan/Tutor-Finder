<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_appointments.aspx.cs" Inherits="newproject1.view_appointments" %>





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
        .auto-style1 {
            margin-left: 42px;
        }
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
                                                 <li><a href="savedtutors.aspx">Saved Tutor</a></li>

                                            
                                            
                                              <li><a href="login.aspx">Login</a></li>
                                               <li><a href="signup.aspx">Signup</a></li>
                                        <li><a href="saved_courses.aspx">Saved Courses</a></li>
                                   <!--     <li><a href="single-course.aspx">Single Courses</a></li>-->
                                        <li><a href="tutors.aspx">Teachers</a></li>


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
        <h3>APPOINTMENTS</h3>

    </div>



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString1 %>" SelectCommand="SELECT * FROM [Appointment] WHERE ([u_name] = @u_name)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Appointment] WHERE [Id] = @original_Id"  InsertCommand="INSERT INTO [Appointment] ([u_name], [t_name], [email], [location], [type], [time], [message], [date], [gender], [status]) VALUES (@u_name, @t_name, @email, @location, @type, @time, @message, @date, @gender, @status)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Appointment] SET [u_name] = @u_name, [t_name] = @t_name, [email] = @email, [location] = @location, [type] = @type, [time] = @time, [message] = @message, [date] = @date, [gender] = @gender, [status] = @status WHERE [Id] = @original_Id AND (([u_name] = @original_u_name) OR ([u_name] IS NULL AND @original_u_name IS NULL)) AND (([t_name] = @original_t_name) OR ([t_name] IS NULL AND @original_t_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([location] = @original_location) OR ([location] IS NULL AND @original_location IS NULL)) AND (([type] = @original_type) OR ([type] IS NULL AND @original_type IS NULL)) AND (([time] = @original_time) OR ([time] IS NULL AND @original_time IS NULL)) AND (([message] = @original_message) OR ([message] IS NULL AND @original_message IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_u_name" Type="String" />
                <asp:Parameter Name="original_t_name" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_location" Type="String" />
                <asp:Parameter Name="original_type" Type="String" />
                <asp:Parameter Name="original_time" Type="String" />
                <asp:Parameter Name="original_message" Type="String" />
                <asp:Parameter Name="original_date" Type="String" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter Name="original_status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="u_name" Type="String" />
                <asp:Parameter Name="t_name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="time" Type="String" />
                <asp:Parameter Name="message" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="u_name" SessionField="uname" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="u_name" Type="String" />
                <asp:Parameter Name="t_name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="time" Type="String" />
                <asp:Parameter Name="message" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_u_name" Type="String" />
                <asp:Parameter Name="original_t_name" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_location" Type="String" />
                <asp:Parameter Name="original_type" Type="String" />
                <asp:Parameter Name="original_time" Type="String" />
                <asp:Parameter Name="original_message" Type="String" />
                <asp:Parameter Name="original_date" Type="String" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter Name="original_status" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>       
                                

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="294px" Width="1458px" CssClass="auto-style1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="t_name" HeaderText="Teacher Name" SortExpression="t_name" />
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

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


