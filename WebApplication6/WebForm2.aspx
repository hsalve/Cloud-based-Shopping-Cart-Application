<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication6.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>
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
    <form id="form1" runat="server">
        <div style="text-align: center">
            <br />

            <div>
                <br />
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click"  Text="View Item Table" />
                <br />
                <br />
                <div >Enter Item Number:&nbsp &nbsp 
                <asp:DropDownList ID="DropDownList1" runat="server"  AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="true">
                </asp:DropDownList></div>

                <br />
                <div >Enter quantity: &nbsp&nbsp<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                <br />
            </div>
            <br />
            <asp:Label ID="displayError" runat="server" Text="Invalid quantity"   ForeColor="Red"></asp:Label>
            <br />
            <br />
            <br />


            <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="Add to Cart" /> &nbsp &nbsp
            <asp:Button ID="Button2" runat="server"  Text="Checkout" OnClick="Button2_Click" />

            <br />
            <br />
            <div style="margin-left: 40%">
                <asp:GridView ID="GridView1" label="Cart" runat="server"  CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="black" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="white" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="white" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <br />
                <asp:GridView ID="GridView2" runat="server" CellPadding="4"  ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="black" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="white" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="white" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
