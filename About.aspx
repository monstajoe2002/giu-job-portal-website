<%@ Page Title="About Me" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="giu_job_portal_website.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <h2><%: Title %></h2>
    
        <table style="width: 100%; align-content: center; text-align: center">
            
                <tr>
                    <td style="padding: 12px">
                        <asp:Button Text="Add Phone Number" runat="server" ID="AddPhoneNum" CssClass="btn btn-default" Font-Size="20px" OnClick="AddPhoneNum_Click" />
                            
                    <td style="padding: 12px">
                        <asp:Button Text="Add Progress Report" runat="server" ID="AddProgReport" CssClass="btn btn-default" Font-Size="20px" />

                    </td>
                    <td style="padding: 12px">
                        <asp:Button Text="View Application Status" runat="server" ID="ViewAppStats" CssClass="btn btn-default" Font-Size="20px" OnClick="ViewAppStats_Click" />

                    </td>
                </tr>
            
        </table>
        
    
</asp:Content>
