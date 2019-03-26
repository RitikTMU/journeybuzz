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

public partial class hotalbooking : System.Web.UI.Page
{
    SqlCommand cmd, cmd1;
    SqlConnection con;
    SqlDataReader rdr, rdr1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string roomandsuite = roomandsuiteasp.Value;
        string HiddenField01 = HiddenField1.Value;
        string HiddenField02 = HiddenField2.Value;
        string HiddenField03 = HiddenField3.Value;
        string HiddenField04 = HiddenField4.Value;
        string HiddenField05 = HiddenField5.Value;
        //Response.Write("Hello" + roomandsuite + HiddenField01 + HiddenField02 + HiddenField03 + HiddenField04 + HiddenField05);
        con = new SqlConnection("Server=.\\SQLEXPRESS; Database=journeybuzz; uid=sa; pwd=1");
        con.Open();
        string qr = ("insert into Hotel_Reservation_Form(Name,Contact_No,Check_in_date,Check_out_date,Room_Suite_Type,Number_of_room_suite,Number_of_persons,Number_of_children,Restaurant_facilities,Total_Cost) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + roomandsuite + "','" + HiddenField01 + "','" + HiddenField02 + "','" + HiddenField03 + "','" + HiddenField04 + "','" + HiddenField05 + "')");
        cmd = new SqlCommand(qr,con);
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        con.Close();
    }

}