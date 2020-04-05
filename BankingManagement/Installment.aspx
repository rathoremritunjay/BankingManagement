<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Installment.aspx.cs" Inherits="BankingManagement.Installment" %>

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
     <center>  <h2>Installment  data </h2></center><br/>
    <form id="form1" runat="server">
        <div class="container">
                <div class="row">
                    <div class="col-md-12">

                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                            <AlternatingItemTemplate>
                                <tr style="background-color: #FFFFFF;color: #284775;">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                    </td>
                                    <td>
                                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="LoanTypeLabel" runat="server" Text='<%# Eval("LoanType") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="PaymentDateLabel" runat="server" Text='<%# Eval("PaymentDate") %>' />
                                    </td>
                                </tr>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <tr style="background-color: #999999;">
                                    <td>
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                    </td>
                                    <td>
                                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="LoanTypeTextBox" runat="server" Text='<%# Bind("LoanType") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="PaymentDateTextBox" runat="server" Text='<%# Bind("PaymentDate") %>' />
                                    </td>
                                </tr>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                    <tr>
                                        <td>No data was returned.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="LoanTypeTextBox" runat="server" Text='<%# Bind("LoanType") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="PaymentDateTextBox" runat="server" Text='<%# Bind("PaymentDate") %>' />
                                    </td>
                                </tr>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <tr style="background-color: #E0FFFF;color: #333333;">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                    </td>
                                    <td>
                                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="LoanTypeLabel" runat="server" Text='<%# Eval("LoanType") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="PaymentDateLabel" runat="server" Text='<%# Eval("PaymentDate") %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                                    <th runat="server"></th>
                                                    <th runat="server">id</th>
                                                    <th runat="server">Name</th>
                                                    <th runat="server">LoanType</th>
                                                    <th runat="server">Amount</th>
                                                    <th runat="server">PaymentDate</th>
                                                </tr>
                                                <tr id="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                            <asp:DataPager ID="DataPager1" runat="server">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                                </Fields>
                                            </asp:DataPager>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                    </td>
                                    <td>
                                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="LoanTypeLabel" runat="server" Text='<%# Eval("LoanType") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="PaymentDateLabel" runat="server" Text='<%# Eval("PaymentDate") %>' />
                                    </td>
                                </tr>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BankLoanConnectionString6 %>" DeleteCommand="DELETE FROM [Installment] WHERE [id] = @id" InsertCommand="INSERT INTO [Installment] ([Name], [LoanType], [Amount], [PaymentDate]) VALUES (@Name, @LoanType, @Amount, @PaymentDate)" SelectCommand="SELECT * FROM [Installment] ORDER BY [id] DESC" UpdateCommand="UPDATE [Installment] SET [Name] = @Name, [LoanType] = @LoanType, [Amount] = @Amount, [PaymentDate] = @PaymentDate WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="LoanType" Type="String" />
                                <asp:Parameter Name="Amount" Type="String" />
                                <asp:Parameter Name="PaymentDate" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="LoanType" Type="String" />
                                <asp:Parameter Name="Amount" Type="String" />
                                <asp:Parameter Name="PaymentDate" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>


                </div>
        </div>
    </form>
     <a href="AdminDashboard.aspx" class="btn btn-primary">Back to Working Zone </a>
</body>
</html>
