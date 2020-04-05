<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BankingManagement.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
     <title>Finance Banking Managment  </title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


</head>
<body>


    
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">
    <h3>Finance Bank Management</h3>
  </a>
  
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="Index.aspx">Index</a>
    </li>
   
    <li class="nav-item">
      <a class="nav-link" href="Login.aspx">Login </a>
    </li>
       <li class="nav-item">
      <a class="nav-link" href="Contact.aspx">Contact </a>
    </li>
  </ul>
</nav>


    
         <div>
            <img src="https://www.indiaeducation.net/imagesvr_ce/7782/FIM.jpg" height="500px"; width="1000px"; ></img>
       
            </div>
<center>
    <form id="form1" runat="server">
        <div  class="container-fluid">
            <div class="row">
                <div class="col-md-12"><br/>
                    <h3>Admin Login Here</h3>
                    <br/>
                    <div class="form-group">
                        <label>Enter User Name </label>
                        <asp:TextBox ID="txtName" Class="form-control-lg" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="Enter User Name "></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label>Enter Password</label>
                        <asp:TextBox ID="txtPassword" Class="form-control-lg" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPassword" runat="server" ErrorMessage="Enter Password "></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <asp:Button ID="BtnSubmit" runat="server" Text="Login" OnClick="BtnSubmit_Click" />

                    </div>
                    <h1 id="display" runat="server"> </h1>
                </div>


            </div>

        </div>
    </form>
        </center>
</body>
</html>
