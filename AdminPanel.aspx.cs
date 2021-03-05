using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagement
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TeacherName"] == null)
            {
                Response.Redirect("Login.aspx");

            }
            else
            {
                Label3.Text = "Hello ," + Session["TeacherName"].ToString();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void lbInsert_Click(object sender, EventArgs e)
        {
           
        }

        protected void Btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/LogOut.aspx");
        }
    }
}