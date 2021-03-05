<%@ Page Title="Course" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="AttendanceManagement.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <div class="container">
        <div class="row">
            <div class="panel panel-group">
                <div class="panel-heading">
                    <h2 class="text-center" style="background-color: #C0C0C0">Course Input</h2>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <asp:Label ID="lblCourseid" runat="server" Text="CourseId" CssClass="control-label" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtCourseid" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtCourseid" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblCoursename" runat="server" Text="CourseName" CssClass="control-label" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtCoursename" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtCoursename" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    
                    <div class="form-group">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="btnCoursesave" runat="server" Text="Save" CssClass="btn btn-info" OnClick="btnCoursesave_Click" />
                        <asp:Button ID="btncorupdate" runat="server" Text="Update" CssClass="btn btn-info" OnClick="btncorupdate_Click" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                            <ProgressTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/GreedyCriminalIcterinewarbler-size_restricted.gif" Height="70px" Width="170px" />
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                        <asp:Label ID="lblcormess" runat="server"></asp:Label>

                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <h3><asp:Label ID="Label1" runat="server" Text="Course Details" CssClass="text-info"></asp:Label></h3><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CourseId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand"  CssClass="table table-bordered table-hover table-responsive" ShowHeaderWhenEmpty="True" AllowPaging="True" PageSize="6">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="CourseId" HeaderText="CourseId" ReadOnly="True" SortExpression="CourseId" />
                    <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                    <asp:ButtonField ButtonType="Link" Text="" HeaderText="Edit" HeaderStyle-ForeColor="#fff" CommandName="edi" ControlStyle-CssClass="btn btn-info glyphicon glyphicon-pencil edit text-center" />
                    <asp:ButtonField ButtonType="Link" Text="" HeaderText="Delete" HeaderStyle-ForeColor="#fff" CommandName="del" ControlStyle-CssClass="btn btn-danger glyphicon glyphicon-trash del" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AttendanceManagementConnectionString %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
        </div>
    </div>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
