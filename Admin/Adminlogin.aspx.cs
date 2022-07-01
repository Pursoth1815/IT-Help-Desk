using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Adminlogin : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Value;
        string password = TextBox2.Value;

        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            SqlCommand cmd = new SqlCommand("select * from Admin where User_ID='" + username + "' AND Password='" + password + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Response.Write("<script>alert('Successful login');</script>");
                    Session["User_ID"] = dr.GetValue(0).ToString();
                    Session["Full_name"] = dr.GetValue(1).ToString();
                    Session["role"] = "admin";
                    //Session["status"] = dr.GetValue(10).ToString();
                }
                Response.Redirect("../Home/home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid credentials');</script>");
            }


        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }
}