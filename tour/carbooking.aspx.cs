using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class carbooking : System.Web.UI.Page
{
    SqlCommand cmd, cmd1;
    SqlConnection con;
    SqlDataReader rdr, rdr1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string car_type = car_typeasp.Value;
        string numberofdays = HiddenField2.Value;
        string cardriver = HiddenField4.Value;
        string total = HiddenField5.Value;
        //Response.Write("Hello" + car_type + numberofdays + cardriver + total );
        con = new SqlConnection("Server=.\\SQLEXPRESS; Database=journeybuzz; uid=sa; pwd=1");
        con.Open();
        string qr = ("insert into car_reservation_form(name,contact_no,start_date,return_date,car_type,pick_up_location,number_of_days,driver_facilities,total_cost) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + car_type + "','" + TextBox5.Text + "','" + numberofdays + "','" + cardriver + "','" + total + "')");
        cmd = new SqlCommand(qr, con);
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        con.Close();
    }
}