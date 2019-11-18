<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            padding-right: 15px;
            padding-left: 15px;
            margin-left: 450px;
            margin-top: 90px;
        }
    </style>
</head>
<body style="margin-left: 70px; background-image:url('images/background.png'); background-size:auto;">
   <br />
    <h1 class="text-center"><b>SHOPPING CENTRE</b></h1> <br />
    <h4 class="text-center">GROUP 2</h4>
     <form id="form1" runat="server">
        <br/><br/><br/><br/><div style="text-align:center ">
            <asp:Label ID="Label1" runat="server" Text="Email  "></asp:Label>&nbsp
            <asp:TextBox ID="txtUserName" runat="server"  ></asp:TextBox> &nbsp &nbsp
            <asp:Button ID="Loginbtn" runat="server" Text="Login"   OnClick="Loginbtn_Click" />
            <br />
            <br />
            <asp:Label ID="errormessagelbl" runat="server"   Text="Invalid" ForeColor="Red"></asp:Label>
        
        
        



            <br/><br/><br/><br/>
        </div>
       
    </form>
</body>
</html>
