using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Data;
using System.Data.SqlClient;

public partial class Home_Default : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("insert into Contactus (Name,E_mail,Subject,Number,Message) values (@Name,@E_mail,@Subject,@Number,@Message)", con);

            cmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@E_mail", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@Subject", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@Number", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@Message", TextBox5.Text.Trim());

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Your Complainets has recieved sucessfully');</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");

        }

    }
   
}