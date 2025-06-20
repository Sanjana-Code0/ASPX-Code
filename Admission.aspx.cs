using CollegeWebsite.Data;
using CollegeWebsite.Models;
using System;

namespace CollegeWebsite
{
    public partial class Admission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // If the page is valid (all validators passed)
            if (Page.IsValid)
            {
                var newApplication = new AdmissionApplication
                {
                    FullName = txtFullName.Text,
                    DateOfBirth = DateTime.Parse(txtDateOfBirth.Text),
                    Email = txtEmail.Text,
                    PhoneNumber = txtPhoneNumber.Text,
                    DesiredCourse = ddlCourse.SelectedValue,
                    ApplicationDate = DateTime.Now
                };

                // Save to database
                using (var db = new CollegeContext())
                {
                    db.AdmissionApplications.Add(newApplication);
                    db.SaveChanges();
                }

                // Hide the form and show the success message
                FormPanel.Visible = false;
                SuccessPanel.Visible = true;
            }
        }
    }
}
