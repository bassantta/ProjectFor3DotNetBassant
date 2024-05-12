<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign Up.aspx.cs" Inherits="FristProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #0000FF;
            font-size: larger;
        }
        .auto-style2 {
            color: #000000;
        }
        .auto-style3 {
            color: #663300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="text-align: center">
            <strong><span class="auto-style3">Sign Up</span><br class="auto-style3" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-VSUOIB8;Initial Catalog=Bank;Integrated Security=True;" ProviderName="<%$ ConnectionStrings:BankConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Users]" InsertCommand="insert into Users (name ,password ) values (@name,@password)">
                <InsertParameters>
                    <asp:ControlParameter ControlID="name" Name="name" PropertyName="Text" />
                    <asp:ControlParameter ControlID="password" Name="password" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <span class="auto-style2">Name </span>
            <asp:TextBox ID="name" runat="server" OnTextChanged="TextBox1_TextChanged">Name</asp:TextBox>
            <br />
            <br />
            <span class="auto-style2">Password </span>
            <asp:TextBox ID="password" runat="server" style="width: 168px">Password</asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="White" ForeColor="White" OnClick="Button1_Click" Text="Submit" />
            </strong>
        </div>
    </form>
</body>
</html>
