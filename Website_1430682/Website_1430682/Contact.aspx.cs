using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_1430682
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_message()
        {


            try
            {
                SmtpClient sendmail = new SmtpClient();
                sendmail.Host = "smtp.gmail.com";
                sendmail.Port = 587;
                sendmail.EnableSsl = true;

                System.Net.NetworkCredential userpass = new System.Net.NetworkCredential();
                userpass.UserName = "etagame2017@gmail.com";
                userpass.Password = "bruneidarussalam";

                sendmail.Credentials = userpass;

                MailMessage msg = new MailMessage(txtemail.Text, "etagame2017@gmail.com");

                msg.Subject = "Comments from " + txtname.Text;
                msg.Body = txtmessage.Text;

                sendmail.Send(msg);
                Response.Write("<script>alert ('message sent')</script>");
                txtemail.Text = "";
                txtname.Text = "";
                txtmessage.Text = "";

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void btnsend_Click1(object sender, EventArgs e)
        {
            send_message();

        }
    }
}