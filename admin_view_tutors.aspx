<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_view_tutors.aspx.cs" Inherits="newproject1.admin_view_tutors" %>




<!DOCTYPE html>
<html lang="en">
  
<head>
    <style>
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
    </style>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *Must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>We Help You To Find Tutors!</title>

    <!-- Favicon -->
    <link rel="icon" href="tutor.PNG">
    <style>

        .OrderHistory_RowSeparator { margin: 0px 0px 5px 0px; }
        .auto-style1 {
            margin-left: 40px;
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
                                <li><a href="#">For Admin</a>
                                    <ul class="dropdown">
                                                 <li><a href="admin_view_tutors.aspx">View Tutor</a></li>

                                            
                                            
                                              
                                        <li><a href="admin_view_courses.aspx">View  Courses</a></li>
                                   <!--     <li><a href="single-course.aspx">Single Courses</a></li>-->


                                    <!--    <li><a href="blog-details.aspx">Blog details</a></li>-->

                                    <!--    <li><a href="regular-page.aspx">Regular Page</a></li>-->
                                    </ul>
                                </li>
                                


                                    <!--    <li><a href="blog-details.aspx">Blog details</a></li>-->

                                    <!--    <li><a href="regular-page.aspx">Regular Page</a></li>-->
                                    </ul>
                               




                           

                            <!-- Register / Login -->
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
                                <div class="userthumb">
                                </div>
                            </div>
                                </>
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
        <h3>Tutors </h3>

    </div>



                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString1 %>" SelectCommand="SELECT [email], [contact ] AS contact_, [education], [fees], [subject], [name], [description], [location], [status] FROM [Tutors]">
                                </asp:SqlDataSource>
                                

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="344px" Width="1458px" CssClass="auto-style1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="contact_" HeaderText="contact_" SortExpression="contact_" />
                <asp:BoundField DataField="education" HeaderText="education" SortExpression="education" />
                <asp:BoundField DataField="fees" HeaderText="fees" SortExpression="fees" />
                <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                <asp:TemplateField HeaderText="status" SortExpression="status">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("status") %>' style="border-top-left-radius: 20px;
            border-top-right-radius: 20px;
            border-bottom-left-radius: 20px;
            border-bottom-right-radius: 20px;
            border-bottom:20px;">
                            <asp:ListItem>pending</asp:ListItem>
                            <asp:ListItem>confirmed</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:Button ID="Button1" runat="server" class="btn"  OnClick="Button1_Click" Text="Update" Style="margin-left:42px;width:350px"  BackColor="#8EA9E6"/>
    </form>
</body>

</html>


