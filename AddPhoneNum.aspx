<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPhoneNum.aspx.cs" Inherits="giu_job_portal_website.AddPhoneNum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add info</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="font-family:sans-serif">Enter your phone number</h1>
        <font face="sans-serif">
        <div>
            ID:<asp:TextBox runat="server" ID="stu_id" Height="30px" Width="369px" style="margin-left: 104px"></asp:TextBox>
        </div>
        
        <div>
            Phone number:<asp:TextBox runat="server" ID="phoneNum" Height="30px" Width="369px" style="margin-left: 19px"></asp:TextBox>
        </div>
        <div>
            <asp:Button runat="server" ID="addBtn" Height="30px" Width="158px" Text="Add" style="margin-top: 12px" OnClick="addBtn_Click"></asp:Button>
        </div>
            </font>
    </form>
</body>
</html>

