<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationStatus.aspx.cs" Inherits="giu_job_portal_website.ApplicationStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
            <font face="sans-serif">
                <div>
            <h1>Application Status</h1>
                </div>
            <p>Student ID:
                <asp:TextBox ID="sID" runat="server" Height="32px" Width="412px" style="margin-left: 33px"></asp:TextBox>
            </p>
            <p>Job ID:
                <asp:TextBox ID="jID" runat="server" Height="32px" Width="412px" style="margin-left: 63px"></asp:TextBox>
            </p>

            </font>
        
            <asp:Button ID="view_btn" runat="server" Text="View Status" OnClick="view_btn_Click" />
        
    </form>
</body>
</html>
