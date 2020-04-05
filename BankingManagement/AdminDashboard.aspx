<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="BankingManagement.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   


     <title>Finance Bank Managment  </title>
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




    <form id="form1" runat="server">
        <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Wel Come to the Admin Dashboard </h1>
                        <hr />
                        <h3><a href="Employee.aspx" class="btn btn-warning">Employee Details </a></h3>
                        <h3><a href="LoanRecord.aspx" class="btn btn-warning">Loan Details </a></h3>
                        <h3><a href="Installment.aspx" class="btn btn-warning">Installment Details </a></h3>
                        <h3><a href="ContactList.aspx" class="btn btn-warning">Query Details </a></h3>
                    </div>


                </div>
        </div>
    </form>
</body>
</html>
