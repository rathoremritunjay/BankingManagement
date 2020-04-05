<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactList.aspx.cs" Inherits="BankingManagement.ContactList" %>

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
    <center>  <h2>Contact Queries </h2></center><br/>
    <form id="form1" runat="server">
        <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
                            <AlternatingItemTemplate>
                                <tr style="background-color: #FFFFFF;color: #284775;">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    </td>
                                    <td>
                                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="MsgLabel" runat="server" Text='<%# Eval("Msg") %>' />
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
                                        <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="MsgTextBox" runat="server" Text='<%# Bind("Msg") %>' />
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
                                    <td>
                                        <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="MsgTextBox" runat="server" Text='<%# Bind("Msg") %>' />
                                    </td>
                                </tr>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <tr style="background-color: #E0FFFF;color: #333333;">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    </td>
                                    <td>
                                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="MsgLabel" runat="server" Text='<%# Eval("Msg") %>' />
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
                                                    <th runat="server">Contact</th>
                                                    <th runat="server">Email</th>
                                                    <th runat="server">Msg</th>
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
                                    </td>
                                    <td>
                                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="MsgLabel" runat="server" Text='<%# Eval("Msg") %>' />
                                    </td>
                                </tr>
                            </SelectedItemTemplate>
                        </asp:ListView>


                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BankLoanConnectionString7 %>" DeleteCommand="DELETE FROM [Query] WHERE [id] = @id" InsertCommand="INSERT INTO [Query] ([id], [Name], [Contact], [Email], [Msg]) VALUES (@id, @Name, @Contact, @Email, @Msg)" SelectCommand="SELECT * FROM [Query] ORDER BY [id] DESC" UpdateCommand="UPDATE [Query] SET [Name] = @Name, [Contact] = @Contact, [Email] = @Email, [Msg] = @Msg WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Contact" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Msg" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Contact" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Msg" Type="String" />
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
