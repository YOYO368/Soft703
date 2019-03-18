using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace NuiLunchBoxProject
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            MailMessage message = new MailMessage();

            message.From = new MailAddress("");
            message.To.Add(new MailAddress(txtEmail.Text));
            message.Subject = "Hi! This mail is about password";
            message.Body = "Return address : ";

            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("", "");

            client.Port = 587;
            client.Host = "smtp.mail.google.com";
            client.EnableSsl = false;
            try
            {
                client.Send(message);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Something problem');window.location='UserLogin.aspx';</script>");
            }
            Response.Write("<script>alert('Sending E-mail success');window.location='UserLogin.aspx';</script>");
        }
    }
}