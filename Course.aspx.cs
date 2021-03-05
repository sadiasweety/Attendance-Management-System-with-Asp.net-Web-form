using AttendanceManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace AttendanceManagement
{
    public partial class About : Page
    {
        private AttendanceManagementEntities1 db = new AttendanceManagementEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            btncorupdate.Visible = false;
        }

        protected void btnCoursesave_Click(object sender, EventArgs e)
        {
            try
            {
                System.Threading.Thread.Sleep(3000);
                Course cor = new Course();
                cor.CourseId = Convert.ToInt32(txtCourseid.Text.Trim());
                cor.CourseName = txtCoursename.Text.Trim();
                db.Courses.Add(cor);
                db.SaveChanges();
                this.lblcormess.Text = "course details input successfully";
                btnCoursesave.Visible = true;
                btncorupdate.Visible = false;
                Reset();
            }
            catch
            {
                this.lblcormess.Text = "Some is wrong in server";
            }
            
        }
        private void Reset()
        {
            txtCourseid.Text = "";
            txtCoursename.Text = "";
            btnCoursesave.Visible = true;
            btncorupdate.Visible = false;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "edi")
            {
                int index = Convert.ToInt32(e.CommandArgument.ToString());
                int id = Convert.ToInt32(GridView1.Rows[index].Cells[0].Text.TrimEnd());
                Course cor = db.Courses.Where(w => w.CourseId == id).FirstOrDefault();
                if (cor != null)
                {
                    this.txtCourseid.Text = cor.CourseId.ToString();
                    this.txtCoursename.Text = cor.CourseName;
                    btnCoursesave.Visible = false;
                    btncorupdate.Visible = true;
                }
            }
            if (e.CommandName == "del")
            {
                int index = Convert.ToInt32(e.CommandArgument.ToString());
                int id = Convert.ToInt32(GridView1.Rows[index].Cells[0].Text.TrimEnd());
                Course cor = db.Courses.Where(w => w.CourseId == id).FirstOrDefault();
                if (cor != null)
                {
                    
                    db.Courses.Remove(cor);
                    db.SaveChanges();
                    this.lblcormess.Text = "course details delete successfully";
                    Reset();
                }
            }

        }

        protected void btncorupdate_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtCourseid.Text.Trim());
            Course cor = db.Courses.Where(w => w.CourseId == id).FirstOrDefault();
            if (cor != null)
            {
                cor.CourseName = txtCoursename.Text.Trim();
                db.SaveChanges();
                this.lblcormess.Text = "course details update successfully";
                btnCoursesave.Visible = true;
                btncorupdate.Visible = false;
                Reset();
            }
        }
    }
}