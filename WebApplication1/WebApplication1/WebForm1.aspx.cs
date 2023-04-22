using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void SubmitBtn(object sender, EventArgs e)
        {
            var fullname = FullName.Text;
            var address = Address.Text;
            var phoneno = PhoneNumber.Text;
            var license = License.SelectedValue;
            var jobtype = JobType.SelectedValue;


            if (fullname == "")
            {
                Response.Write("Full Name is required!");
            }
            else if (address == "")
            {
                Response.Write("Address is required!");
            }
            else if (phoneno == "")
            {
                Response.Write("Phone Number is required!");
            }
            else if (license == "")
            {
                Response.Write("License is required!");
            }
            else if (jobtype == "")
            {
                Response.Write("Job Type is required!");
            }
            else
            {
                TextBox1.Text = fullname;
                TextBox2.Text = address;
                TextBox3.Text = phoneno;
                TextBox4.Text = license;
                TextBox5.Text = jobtype;
            }
        }
        protected void EditBtn(object sender, EventArgs e)
        {
            TextBox1.Enabled = true;
            TextBox2.Enabled = true;
            TextBox3.Enabled = true;
            TextBox4.Enabled = true;
            TextBox5.Enabled = true;
            var fullname = FullName.Text;
            var address = Address.Text;
            var phoneno = PhoneNumber.Text;
            var license = License.SelectedValue;
            var jobtype = JobType.SelectedValue;
            if (fullname == "")
            {
                Response.Write("Full Name is required!");
            }
            else if (address == "")
            {
                Response.Write("Address is required!");
            }
            else if (phoneno == "")
            {
                Response.Write("Phone Number is required!");
            }
            else if (license == "")
            {
                Response.Write("License is required!");
            }
            else if (jobtype == "")
            {
                Response.Write("Job Type is required!");
            }
            else if (license != "A" && license != "B" && license != "C" && license != "D")
            {
                Response.Write("License is required!");
            }
            else if (jobtype != "Driver" && jobtype != "Helper")
            {
                Response.Write("Job Type is required!");
            }
        }
        protected void SaveBtn(object sender, EventArgs e)
        {
            var fullname = TextBox1.Text;
            var address = TextBox2.Text;
            var phoneno = TextBox3.Text;
            var license = TextBox4.Text;
            var jobtype = TextBox5.Text;

            Response.Write("Fullname: " + fullname + "Address: " + address + "Phone Number: " + phoneno + "Driver's License: " + license + "Job Type: " + jobtype);
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;
            TextBox3.Enabled = false;
            TextBox4.Enabled = false;
            TextBox5.Enabled = false;
        }
    }
}