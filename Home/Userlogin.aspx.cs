using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Home_Userlogin : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("Select * from Signup where User_ID='" + TextBox1.Text.Trim() + "' AND Password='" + TextBox2.Text.Trim() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Response.Write("<script>alert('Login Successful');</script>");
                    Session["User_ID"] = dr.GetValue(7).ToString();
                    Session["Full_name"] = dr.GetValue(0).ToString();
                    Session["role"] = "user";
                }
                Response.Redirect("../User/uhome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid credentials');</script>");
            }

        }
        catch (Exception ex)
        {

        }
    }
}