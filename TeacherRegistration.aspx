<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeacherRegistration.aspx.cs" Inherits="AttendanceManagement.TeacherRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id =" Main-content">
        <section id ="wrapper">
            <div class ="row">
               <div class ="col-lg-12">
                   <section class="panel">
                       <header class="panel-heading">
                           <div class="col-md-4 col-md-offset-4">
                               <h1> Teacher's Profile</h1>

                           </div>
                       </header>


                        <div class="panel-body">
                           <div class="row">
                               <div class="col-md-4 col-md-offset-1">
                                   <div class="form-group">
                                       <asp:Label Text="Teacher ID" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Teacher First Name" ID="txtid" />
                                   </div>
                                   <div class="form-group">
                                       <asp:Label Text="Teacher First Name" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Teacher First Name" ID="txtfname" />
                                   </div>
                               </div>
                                <div class="col-md-4 col-md-offset-1">
                                   <div class="form-group">
                                       <asp:Label Text="Joining Date" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" TextMode="Date" CssClass="form-control input-sm" placeholder="DOB" ID="txtdate" />
                                   </div>
                                   <div class="form-group">
                                       <asp:Label Text="Teacher Last Name" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Teacher Last Name" ID="txtlname" />
                                   </div>
                               </div>
                           </div>
                           </div>

                                 <div class="col-md-4 col-md-offset-1" style="left: 0px; top: 0px">
                                   <div class="form-group">
                                       <asp:Label Text="Region" runat="server"  />
                                       <asp:DropDownList ID="ddlregion" runat="server" CssClass="form-control input-sm">
                                           <asp:ListItem  Text="Dhaka"/>
                                             <asp:ListItem  Text="Khulna"/>
                                             <asp:ListItem  Text="Rajshahi"/>
                                             <asp:ListItem  Text="Jessore"/>
                                             <asp:ListItem  Text="Chattogram"/>
                                             <asp:ListItem  Text="Dinajpur"/>
                                             <asp:ListItem  Text="Sylhet"/>

                                       </asp:DropDownList>
                                   </div>
                                     <div class="form-group">
                                       <asp:Label Text="Gender" runat="server" />
                                      <asp:RadioButtonList ID="rdg" runat="server">
                                      <asp:ListItem  Text="Male"/>
                                      <asp:ListItem  Text="Female"/>
                                      </asp:RadioButtonList>
                                   </div>

                           </div>        

                           <div class="row">
                                <div class="col-md-4 col-md-offset-1" style="right: 0px; top: 0px">
                                   <div class="form-group">
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label Text="Last Acquired Certificate" runat="server" />
                                       <asp:DropDownList ID="ddllac" runat="server" CssClass="form-control input-sm" style="margin-left: 9px">
                                           <asp:ListItem  Text="MSC/BSC"/>
                                             <asp:ListItem  Text="MBA/BBA"/>
                                             <asp:ListItem  Text="MA/BA"/>
                                             <asp:ListItem  Text="MSS/BSS"/>
                                       </asp:DropDownList>
                                   </div>
                               </div>
                        <%--       </div>
                           <div class="row">--%>
                               <div class="col-md-4 col-md-offset-1">
                                   <div class="form-group">
                                        <asp:Label Text="TeacherImage" runat="server" />
                                       <asp:FileUpload ID="FileUpload1" runat="server" />
                                   </div>
                               </div>

                           </div>


                           <div class="row">
                               <div class="col-md-8 col-md-offset-2">
                                   <asp:Button Text="Save" ID="btnsave" CssClass="btn btn-primary" Width="200px" runat="server" OnClick="btnsave_Click" />
                                    
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Course.aspx">Skip This page If you are registererd</asp:HyperLink>
                                    
                               </div>

                           </div>
                           <asp:Label ID="Label1" runat="server"></asp:Label><br />
                           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TeacherArchieve.aspx">View All Information</asp:HyperLink>

                       
                   </section>

               </div>
            </div>
        </section>

    </section>
</asp:Content>
