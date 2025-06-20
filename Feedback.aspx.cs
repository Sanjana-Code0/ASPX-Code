using CollegeWebsite.Data;
using System;

namespace CollegeWebsite
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var newFeedback = new Models.Feedback
                {
                    Name = txtName.Text,
                    Email = txtEmail.Text,
                    FeedbackType = ddlFeedbackType.SelectedValue,
                    Message = txtMessage.Text,
                    SubmissionDate = DateTime.Now
                };

                using (var db = new CollegeContext())
                {
                    db.Feedbacks.Add(newFeedback);
                    db.SaveChanges();
                }

                FormPanel.Visible = false;
                SuccessPanel.Visible = true;
            }
        }
    }
}