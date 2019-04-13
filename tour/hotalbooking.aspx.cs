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
using System.Security.Cryptography;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
        Double amount = Convert.ToDouble(HiddenField05);

        //String text = key.Value.ToString() + "|" + txnid.Value.ToString() + "|" + amount + "|" + "Women Tops" + "|" + TextBox1.Text + "|" + TextBox2.Text + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "||||||" + salt.Value.ToString();
        //Response.Write(text);
        //byte[] message = Encoding.UTF8.GetBytes(text);

        UnicodeEncoding UE = new UnicodeEncoding();
        byte[] hashValue;
        SHA512Managed hashString = new SHA512Managed();
        string hex = "";
        //hashValue = hashString.ComputeHash(message);
        //foreach (byte x in hashValue)
        //{
          //  hex += String.Format("{0:x2}", x);
        //}
        //hash.Value = hex;

        System.Collections.Hashtable data = new System.Collections.Hashtable(); // adding values in gash table for data post
        //data.Add("hash", hex.ToString());
        //data.Add("txnid", txnid.Value);
        //data.Add("key", key.Value);
        // string AmountForm = ;// eliminating trailing zeros

        data.Add("amount", amount);

        data.Add("surl", "http://localhost:1431/success.aspx");
        data.Add("furl", "http://localhost:1431/fail.aspx");

        data.Add("service_provider", "");


        string strForm = PreparePOSTForm("https://test.payu.in/_payment", data);
        Page.Controls.Add(new LiteralControl(strForm));
    }
    private string PreparePOSTForm(string url, System.Collections.Hashtable data)      // post form
    {
        //Set a name for the form
        string formID = "PostForm";
        //Build the form using the specified data to be posted.
        StringBuilder strForm = new StringBuilder();
        strForm.Append("<form id=\"" + formID + "\" name=\"" +
                       formID + "\" action=\"" + url +
                       "\" method=\"POST\">");

        foreach (System.Collections.DictionaryEntry key in data)
        {

            strForm.Append("<input type=\"hidden\" name=\"" + key.Key +
                           "\" value=\"" + key.Value + "\">");
        }


        strForm.Append("</form>");
        //Build the JavaScript which will do the Posting operation.
        StringBuilder strScript = new StringBuilder();
        strScript.Append("<script language='javascript'>");
        strScript.Append("var v" + formID + " = document." +
                         formID + ";");
        strScript.Append("v" + formID + ".submit();");
        strScript.Append("</script>");
        //Return the form and the script concatenated.
        //(The order is important, Form then JavaScript)
        return strForm.ToString() + strScript.ToString();
    }

}