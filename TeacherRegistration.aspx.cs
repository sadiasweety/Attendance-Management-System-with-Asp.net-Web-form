using AttendanceManagement.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagement
{
    public partial class TeacherRegistration : System.Web.UI.Page
    {
        private AttendanceManagementEntities1 db = new AttendanceManagementEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string constring = ("Data Source=DESKTOP-VEFU0GF;Initial Catalog=AttendanceManagement;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
            SqlConnection sqlcon = new SqlConnection(constring);
            FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
            string link = "images/" + Path.GetFileName(FileUpload1.FileName);


            string query = "Insert into TblTeacherProfile(Id,FirstName,LastName,JoiningDate,Region,Gender,LastAcquiredCertificate,TeacherImage) values (" + txtid.Text + ",'" + txtfname.Text + "','" + txtlname.Text + "','" + txtdate.Text + "','" + ddlregion.SelectedValue + "','" + rdg.SelectedValue + "','" + ddllac.SelectedValue + "','" + link + "')";
            SqlCommand cmd = new SqlCommand(query, sqlcon);
            sqlcon.Open();
            cmd.ExecuteNonQuery();
            sqlcon.Close();

            Label1.Text = "Data has been saved successfully";
            txtid.Text = "";
            txtfname.Text = "";
            txtlname.Text = "";
            txtdate.Text = "";
            ddlregion.Text = "";
            rdg.Text = "";
            ddllac.Text = "";


            Response.Redirect("~/TeacherArchieve.aspx");
        }
        private void Reset()
        {
            //txtid.Text = "";
            //txtfname.Text = "";
            //txtlname.Text = "";
            //txtdate.Text = "";
            //ddlregion.Text = "";
            //rdg.Text = "";
            //ddllac.Text = "";
            ////FileUpload1.PostedFile
            //btnsave.Visible = true;
        
          
        }


    }
}
