using CollegeWebsite.Data;
using CollegeWebsite.Models;
using System;
using System.Web.UI;

namespace CollegeWebsite
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            // Simple validation could be added here or with validator controls
            var newMessage = new ContactMessage
            {
                Name = txtName.Text,
                Email = txtEmail.Text,
                Subject = txtSubject.Text,
                Message = txtMessage.Text,
                SentDate = DateTime.Now
            };

            using (var db = new CollegeContext())
            {
                db.ContactMessages.Add(newMessage);
                db.SaveChanges();
            }

            FormPanel.Visible = false;
            SuccessPanel.Visible = true;
        }
    }
}