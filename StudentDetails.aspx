<%@ Page Title="Student details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="AttendanceManagement.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <h3>Student Details Input</h3>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <div class="container">
        <div class="row">
        <div class="col-md-4">
            <div class="panel panel-group">
                <div class="panel-heading">
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <asp:Label ID="lblRollno" runat="server" Text="RollNo" CssClass="control-label" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtRollno" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtRollno" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblStuName" runat="server" Text="Student Name" CssClass="control-label" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtStuName" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtStuName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="form-group">
                        <asp:Label ID="lblStuCorId" runat="server" Text="CourseId" CssClass="control-label" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="drpStuCorId" ForeColor="Red"></asp:RequiredFieldValidator>
                         <br />
                         <asp:DropDownList ID="drpStuCorId" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="CourseId" DataValueField="CourseId">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AttendanceManagementConnectionString %>" SelectCommand="SELECT [CourseId] FROM [Course]"></asp:SqlDataSource>
                    </div>
                     <div class="form-group">
                        <asp:Label ID="lblAddress" runat="server" Text="Address" CssClass="control-label" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="form-group">
                        <asp:Label ID="lblAge" runat="server" Text="Student Age" CssClass="control-label" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtAge" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Age between 18 to 30" ForeColor="Red" MaximumValue="30" MinimumValue="18"></asp:RangeValidator>
                    <asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="form-group">
                        <asp:Label ID="lblMobile" runat="server" Text="Mobile No" CssClass="control-label" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtMobile" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Mobile no must be 11 digits" ForeColor="Red" ControlToValidate="txtMobile" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="form-group">
                        <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="control-label" Font-Bold="True"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid email" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    
                    <div class="form-group">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="btnStusave" runat="server" Text="Save" CssClass="btn btn-info" OnClick="btnCoursesave_Click"  />
                        <asp:Button ID="btnstuupdate" runat="server" Text="Update" CssClass="btn btn-info" OnClick="btnstuupdate_Click" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        
                        <asp:Label ID="lblstumess" runat="server"></asp:Label>

                    </div>
                </div>
            
    </div>
    </div>
        <div class="col-md-8">
            <h3><asp:Label ID="Label1" runat="server" Text="Course Details" CssClass="text-info"></asp:Label></h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Rollno" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"  CssClass="table table-bordered table-hover table-responsive" ShowHeaderWhenEmpty="true" OnRowCommand="GridView1_RowCommand" AllowPaging="true" PageSize="8">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Rollno" HeaderText="Rollno" ReadOnly="True" SortExpression="Rollno" />
                    <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                    <asp:BoundField DataField="CourseId" HeaderText="CourseId" SortExpression="CourseId" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:ButtonField  ButtonType="Link" Text="" HeaderText="Edit" HeaderStyle-ForeColor="#437AA9" CommandName="edi" ControlStyle-CssClass="btn btn-info glyphicon glyphicon-pencil edit" />
                    <asp:ButtonField ButtonType="Link" Text="" HeaderText="Delete" HeaderStyle-ForeColor="#437AA9" CommandName="del" ControlStyle-CssClass="btn btn-danger text-center glyphicon glyphicon-trash del" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AttendanceManagementConnectionString %>" SelectCommand="SELECT * FROM [StudentDetails]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                            <ProgressTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/InternetSlowdown_Day.gif" Height="80px" Width="80px" />
                            </ProgressTemplate>
                        </asp:UpdateProgress>
        </div>
            
        </div>
        </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    
</asp:Content>
