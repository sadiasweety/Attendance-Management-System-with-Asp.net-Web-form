using AttendanceManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagement
{
    public partial class Contact : Page
    {
        private AttendanceManagementEntities1 db = new AttendanceManagementEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            btnstuupdate.Visible = false;
        }

        protected void btnCoursesave_Click(object sender, EventArgs e)
        {
            try
            {
                System.Threading.Thread.Sleep(3000);
                StudentDetail sd = new StudentDetail();
                sd.Rollno = Convert.ToInt32(txtRollno.Text.Trim());
                sd.StudentName = txtStuName.Text.Trim();
                sd.CourseId = Convert.ToInt32(drpStuCorId.Text.Trim());
                sd.Address = txtAddress.Text.Trim();
                sd.Age =Convert.ToInt32(txtAge.Text.Trim());
                sd.Mobile = txtMobile.Text.Trim();
                sd.Email = txtEmail.Text.Trim();
                db.StudentDetails.Add(sd);
                db.SaveChanges();
                this.lblstumess.Text = "Student details input successfully";
                btnStusave.Visible = true;
                btnstuupdate.Visible = false;
                Reset();
            }
            catch
            {
                this.lblstumess.Text = "Some is wrong in server";
            }
        }

        private void Reset()
        {
            txtRollno.Text = "";
            txtStuName.Text = "";
            txtAddress.Text = "";
            txtAge.Text = "";
            txtMobile.Text = "";
            txtEmail.Text = "";
            btnStusave.Visible = true;
            btnstuupdate.Visible = false;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "edi")
            {
                int index = Convert.ToInt32(e.CommandArgument.ToString());
                int id = Convert.ToInt32(GridView1.Rows[index].Cells[0].Text.TrimEnd());
                StudentDetail sd = db.StudentDetails.Where(w => w.Rollno == id).FirstOrDefault();
                if (sd != null)
                {
                    this.txtRollno.Text = sd.Rollno.ToString();
                    this.txtStuName.Text = sd.StudentName;
                    this.drpStuCorId.Text = sd.CourseId.ToString();
                    this.txtAddress.Text = sd.Address;
                    this.txtAge.Text = sd.Age.ToString();
                    this.txtMobile.Text = sd.Mobile;
                    this.txtEmail.Text = sd.Email;
                    btnStusave.Visible = false;
                    btnstuupdate.Visible = true;
                }
            }
            if (e.CommandName == "del")
            {
                int index = Convert.ToInt32(e.CommandArgument.ToString());
                int id = Convert.ToInt32(GridView1.Rows[index].Cells[0].Text.TrimEnd());
                StudentDetail sd = db.StudentDetails.Where(w => w.Rollno == id).FirstOrDefault();
                if (sd != null)
                {
                    
                    db.StudentDetails.Remove(sd);
                    db.SaveChanges();
                    Reset();
                }
            }
        }

        protected void btnstuupdate_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtRollno.Text.Trim());
            StudentDetail sd = db.StudentDetails.Where(s => s.Rollno == id).FirstOrDefault();
            if (sd != null)
            {
               
                sd.StudentName = txtStuName.Text.Trim();
                sd.CourseId =Convert.ToInt32(drpStuCorId.Text.Trim());
                sd.Address = txtAddress.Text.Trim();
                sd.Age = Convert.ToInt32(txtAge.Text.Trim());
                sd.Mobile = txtMobile.Text.Trim();
                sd.Email = txtEmail.Text.Trim();
                db.SaveChanges();
                this.lblstumess.Text = "Student details updated successfully";
                btnStusave.Visible = true;
                btnstuupdate.Visible = false;
                Reset();
            }
        }
    }
}