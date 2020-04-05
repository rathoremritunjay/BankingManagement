<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BankingManagement.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  

     <title>Finance Bank Management</title>
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
        <i><h3>Send a Message to admin</h3></i>
    <form id="form1" runat="server">
       
         <div  class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label>Enter User Name </label>
                        <br />
                        <asp:TextBox ID="txtName" Class="form-control-lg" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="Enter User Name "></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label>Enter Contact</label><br />
                        <asp:TextBox ID="txtContact" Class="form-control-lg" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtContact" runat="server" ErrorMessage="Enter Contact "></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label>Enter Email</label><br />
                        <asp:TextBox ID="txtEmail" Class="form-control-lg" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtEmail" runat="server" ErrorMessage="Enter Email-Id "></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label>Enter Message</label><br />
                        <asp:TextBox ID="txtMessage" Class="form-control-lg" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtMessage" runat="server" ErrorMessage="Enter Message "></asp:RequiredFieldValidator>
                    </div>


                    <div class="form-group">
                        <asp:Button ID="BtnSubmit" runat="server" Text="Send Message" class="btn btn-warning" OnClick="BtnSubmit_Click" />

                    </div>
                    <h1 id="display" runat="server"> </h1>
                </div>


            </div>

        </div>



    </form>
    </center>
</body>
</html>
