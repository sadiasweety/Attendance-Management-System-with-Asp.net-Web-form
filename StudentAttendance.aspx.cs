using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using CrystalDecisions.Web;

namespace AttendanceManagement
{
    public partial class StudentAttendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbldate.Text = "Mark Attendance for " + DateTime.Now.ToShortDateString();
        }

        

        protected void btnsaveatt_Click(object sender, EventArgs e)
        {
                foreach (GridViewRow row in GridView1.Rows)
                {

                    int rollno1 = Convert.ToInt32(row.Cells[0].Text);
                    String studentname1 = row.Cells[1].Text;
                
                    RadioButton rbtn1 = (row.Cells[5].FindControl("RadioButton1") as RadioButton);
                    RadioButton rbtn2 = (row.Cells[0].FindControl("RadioButton2") as RadioButton);
                    String status1;
                    if (rbtn1.Checked)
                    {
                        status1 = "Present";

                    }
                    else
                    {
                        status1 = "Absent";
                    }
                    String dateofclass1 = DateTime.Now.ToShortDateString();
                int courseid1 = Convert.ToInt32(row.Cells[2].Text);
                saveattendance(rollno1, studentname1, dateofclass1, status1, courseid1);
                }
                lblattmess.Text = "Attendance Has Been Saved Successfully";
            ListView1.DataBind();
            }
            private void saveattendance(int rollno, String studentname, String dateofclass1, String status, int CourseId)
            {
                String query = "insert into StudnetAttendance(Rollno,StudentName,dateofclass,attendancestatus,CourseId) values(" + rollno + ",'" + studentname + "','" + dateofclass1 + "','" + status + "','" + CourseId + "')";
                String mycon = "Data Source=DESKTOP-VEFU0GF; Initial Catalog=AttendanceManagement; Integrated Security=true";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();

            }

        protected void Btncrystal_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report.aspx");
        }
    }
}
