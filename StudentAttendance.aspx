<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentAttendance.aspx.cs" Inherits="AttendanceManagement.StudentAttendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <div class="container">
        <div class="row">
            <h1 class="">Student Attendance page</h1>
    
  <table style="width: 100%">
        <tr>
            <td style="width: 157px">&nbsp;</td>
            <td style="width: 112px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 157px">&nbsp;</td>
            <td style="width: 112px">
                <asp:Label ID="lblattendence" runat="server" Text="Rollno" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="drprollno" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="Rollno" DataValueField="Rollno" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AttendanceManagementConnectionString %>" SelectCommand="SELECT [Rollno] FROM [StudentDetails]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 157px">&nbsp;</td>
            <td style="width: 112px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 157px">&nbsp;</td>
            <td style="width: 112px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <div class="row">
        <asp:Label ID="lbldate" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Rollno" DataSourceID="SqlDataSource1" GridLines="Vertical" CssClass="table table-bordered table-hover table-responsive" ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Rollno" HeaderText="Rollno" ReadOnly="True" SortExpression="Rollno">
                </asp:BoundField>
                <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                <asp:BoundField DataField="CourseId" HeaderText="CourseId" SortExpression="CourseId" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:TemplateField HeaderText="Mark Attendance">
                    <ItemTemplate>
                        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="g1" Text="Present" />
                        &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="g1" Text="Absent" />
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AttendanceManagementConnectionString %>" SelectCommand="SELECT [Rollno], [StudentName], [CourseId], [Mobile], [Address] FROM [StudentDetails] WHERE (([Rollno] = @Rollno) AND ([Rollno] = @Rollno2))">
            <SelectParameters>
                <asp:ControlParameter ControlID="drprollno" Name="Rollno" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="drprollno" Name="Rollno2" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="btnsaveatt" runat="server" Text="Save Attendancd" CssClass="btn btn-info" OnClick="btnsaveatt_Click" />
        <asp:Label ID="lblattmess" runat="server"></asp:Label><br /><br />
        <hr />
        <h3>Student Attendance Details</h3>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Statusno" DataSourceID="SqlDataSource3">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFFFFF; color: #284775;">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="StatusnoLabel" runat="server" Text='<%# Eval("Statusno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RollnoLabel" runat="server" Text='<%# Eval("Rollno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StudentNameLabel" runat="server" Text='<%# Eval("StudentName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateOfClassLabel" runat="server" Text='<%# Eval("DateOfClass") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AttendanceStatusLabel" runat="server" Text='<%# Eval("AttendanceStatus") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseidLabel" runat="server" Text='<%# Eval("Courseid") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="StatusnoLabel1" runat="server" Text='<%# Eval("Statusno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RollnoTextBox" runat="server" Text='<%# Bind("Rollno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="StudentNameTextBox" runat="server" Text='<%# Bind("StudentName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DateOfClassTextBox" runat="server" Text='<%# Bind("DateOfClass") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AttendanceStatusTextBox" runat="server" Text='<%# Bind("AttendanceStatus") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CourseidTextBox" runat="server" Text='<%# Bind("Courseid") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="RollnoTextBox" runat="server" Text='<%# Bind("Rollno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="StudentNameTextBox" runat="server" Text='<%# Bind("StudentName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DateOfClassTextBox" runat="server" Text='<%# Bind("DateOfClass") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AttendanceStatusTextBox" runat="server" Text='<%# Bind("AttendanceStatus") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CourseidTextBox" runat="server" Text='<%# Bind("Courseid") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#E0FFFF; color: #333333;">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="StatusnoLabel" runat="server" Text='<%# Eval("Statusno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RollnoLabel" runat="server" Text='<%# Eval("Rollno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StudentNameLabel" runat="server" Text='<%# Eval("StudentName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateOfClassLabel" runat="server" Text='<%# Eval("DateOfClass") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AttendanceStatusLabel" runat="server" Text='<%# Eval("AttendanceStatus") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseidLabel" runat="server" Text='<%# Eval("Courseid") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;" class="table table-bordered table-condensed table-responsive">
                                <tr runat="server" style="background-color:#E0FFFF; color: #333333;">
                                    <th runat="server"></th>
                                    <th runat="server">Statusno</th>
                                    <th runat="server">Rollno</th>
                                    <th runat="server">StudentName</th>
                                    <th runat="server">DateOfClass</th>
                                    <th runat="server">AttendanceStatus</th>
                                    <th runat="server">Courseid</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#E2DED6; font-weight: bold;color: #333333;">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="StatusnoLabel" runat="server" Text='<%# Eval("Statusno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RollnoLabel" runat="server" Text='<%# Eval("Rollno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StudentNameLabel" runat="server" Text='<%# Eval("StudentName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateOfClassLabel" runat="server" Text='<%# Eval("DateOfClass") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AttendanceStatusLabel" runat="server" Text='<%# Eval("AttendanceStatus") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseidLabel" runat="server" Text='<%# Eval("Courseid") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AttendanceManagementConnectionString %>" SelectCommand="SELECT * FROM [StudnetAttendance]" DeleteCommand="DELETE FROM [StudnetAttendance] WHERE [Statusno] = @Statusno" InsertCommand="INSERT INTO [StudnetAttendance] ([Rollno], [StudentName], [DateOfClass], [AttendanceStatus], [Courseid]) VALUES (@Rollno, @StudentName, @DateOfClass, @AttendanceStatus, @Courseid)" UpdateCommand="UPDATE [StudnetAttendance] SET [Rollno] = @Rollno, [StudentName] = @StudentName, [DateOfClass] = @DateOfClass, [AttendanceStatus] = @AttendanceStatus, [Courseid] = @Courseid WHERE [Statusno] = @Statusno">
            <DeleteParameters>
                <asp:Parameter Name="Statusno" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Rollno" Type="Int32" />
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="DateOfClass" Type="String" />
                <asp:Parameter Name="AttendanceStatus" Type="String" />
                <asp:Parameter Name="Courseid" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Rollno" Type="Int32" />
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="DateOfClass" Type="String" />
                <asp:Parameter Name="AttendanceStatus" Type="String" />
                <asp:Parameter Name="Courseid" Type="Int32" />
                <asp:Parameter Name="Statusno" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:Button ID="Btncrystal" runat="server" OnClick="Btncrystal_Click" Text="View Report" />

    </div>

        </div>
    </div>
 </asp:Content>
