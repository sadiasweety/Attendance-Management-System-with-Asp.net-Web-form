using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace AttendanceManagement
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            string mycon = "Data Source=DESKTOP-VEFU0GF;Initial Catalog=AttendanceManagement;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework";
           
            SqlConnection scon = new SqlConnection(mycon);
            string myquery = "select * from TeacherLogin";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            string Tname;
            string pass;
            Tname = ds.Tables[0].Rows[0]["TeacherName"].ToString();
            pass = ds.Tables[0].Rows[0]["Password"].ToString();
            scon.Close();
            if(Tname == TextBox1.Text && pass == TextBox2.Text)
            {
                Session["TeacherName"] = Tname;
                Response.Redirect("TeacherRegistration.aspx");
            }
            else
            {
                Label1.Text = "Invalid Username or Password";
            }
        }
    }
}