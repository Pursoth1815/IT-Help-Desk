using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_signup : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (checkMemberExists())
        {

            Response.Write("<script>alert('User Already Exist with this User ID, try other ID');</script>");
        }
        else
        {
            signupnewuser();
        }

    }

    bool checkMemberExists()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from Signup where User_ID='" + TextBox8.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
            return false;
        }
    }

    void signupnewuser()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("insert into Signup (Full_Name,DOB,Contact_No,Email_ID,City,Pincode,Address,User_ID,Password) values (@Full_Name,@DOB,@Contact_No,@Email_ID,@City,@Pincode,@Address,@User_ID,@Password)", con);

            cmd.Parameters.AddWithValue("@Full_Name", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@DOB", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@Contact_No", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@Email_ID", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@City", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@Pincode", TextBox7.Text.Trim());
            cmd.Parameters.AddWithValue("@Address", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@User_ID", TextBox8.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", TextBox9.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            Response.Redirect("Userlogin.aspx");

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");

        }
    }
}