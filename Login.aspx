<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="giu_job_portal_website.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<h1 style="padding:12px;margin:12px">Log in to Job Portal</h1>
    <body>
        <form id="form1" runat="server" style="padding:12px;margin:12px">
            <font face="Arial, sans-serif">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Email: " style="vertical-align:central"></asp:Label>
                <asp:TextBox ID="Email" runat="server" Height="33px" Width="276px"></asp:TextBox>
            </div>
            <div style="margin-top:12px">
                <asp:Label ID="Label2" runat="server" Text="Password: " style="vertical-align:central"></asp:Label>
                <asp:TextBox ID="Password" runat="server" Height="33px" Width="276px"></asp:TextBox>
            </div>
                <div style="margin-top: 12px">
                    <asp:Button ID="sign_in" runat="server" Text="Log In" CssClass="btn btn-default" OnClick="sign_in_Click" />
                </div>
              </font> 
        </form>
    </body>
</html>
