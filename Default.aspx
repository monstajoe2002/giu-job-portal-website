<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="giu_job_portal_website._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="jumbotron">
        <h1 style="text-align:center">Welcome.</h1>
        <p>&nbsp;</p>
        <table style="width: 100%; align-content: center; text-align: center">
            <tr>
                <td style="padding: 12px">
                    <h2>Available Jobs</h2>
                </td>
                <td style="padding: 12px">
                    <h2>Profile Options</h2>
                </td>

            </tr>

            <tr>
                <td style="padding: 12px">
                    <asp:Button ID="ViewJobs" runat="server" Text="View All >>" Style="font-size: 20px" CssClass="btn btn-default" OnClick="ViewJobs_Click" />
                </td>
                <td style="padding: 12px">
                    <asp:Button ID="Button1" runat="server" Text="View My Profile >>" Style="font-size: 20px" CssClass="btn btn-default" OnClick="View_Profile_Page" />
                </td>

            </tr>
            <tr>
                <td></td>
                <td style="padding: 12px">
                    <asp:Button ID="DeleteProfile" runat="server" Text="Delete My Profile >>" 
                        Style="font-size: 20px; color: red" CssClass="btn btn-default" />
                </td>
            </tr>
        </table>
    </div>

    </asp:Content>
