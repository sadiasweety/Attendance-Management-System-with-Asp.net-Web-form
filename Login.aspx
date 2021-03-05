<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AttendanceManagement.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
    <table class="nav-justified" style="height: 248px">
        <tr>
            <td style="width: 184px">&nbsp;</td>
            <td style="border-width: thick; width: 606px; background-color: #993366;">
                <table class="nav-justified" style="border-width: 1px; height: 113px; background-color: #999966;">
                    <tr>
                        <td style="border-width: thick; width: 303px; color: #CCCCCC; background-color: #008080;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Teacher Name</td>
                        <td style="background-color: #008080">
                            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 38px" Width="215px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 303px; color: #CCCCCC; background-color: #008080;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</td>
                        <td style="background-color: #008080">
                            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 38px" TextMode="Password" Width="215px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 303px; background-color: #008080;">&nbsp;</td>
                        <td style="background-color: #008080">
                            <asp:Button ID="Button1" runat="server" BackColor="#CCFFFF" BorderColor="Silver" ForeColor="#996633" style="margin-left: 129px" Text="Log In" Width="132px" OnClick="Button1_Click" />
                            <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
