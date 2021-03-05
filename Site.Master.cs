using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagement
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session ["TeacherName"] != null)
            //{
            //    label2.Text = "Hello, " + Session["TeacherName"].ToString();
            //    HyperLink1.Visible = false;
            //    LinkButton2.Visible = true;
            //}
            //else
            //{
            //    label2.Text = "Hello Teacher, Have a Good Day!!!";
            //    HyperLink1.Visible = true;
            //    LinkButton2.Visible = false;
            //}
        }
        protected void LinkButton2_Click(object sender,EventArgs e)
        {
            //Session.Abandon();
            //Response.Redirect("LogOut.aspx");
        }
    }
}