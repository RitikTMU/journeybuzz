using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("ritik.rj1997@gmail.com", "nayak1997");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "visited person info";
        msg.Body = "Name=" + txtfirstname.Text + "\n" + "Mail=" + txtmail.Text + "\n" +"Last Nmae="+txtlastname.Text + "\n" + "Message=" + txtmessage.Text;
        string toaddress = "ritikjain660@gmail.com";
        msg.To.Add(toaddress);
        string fromaddress = "Journey Buzz  <ritik.rj1997@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "swal({position: 'top-end',type: 'success',title: 'Your Data has been submitted',showConfirmButton: true})", true);
            txtfirstname.Text = "";
            txtmail.Text = "";
            txtmessage.Text = "";
            txtlastname.Text = "";
        }
        catch
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "swal('No internet is available ')", true);
        }
    }
}