using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class User_issue : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["User_ID"].ToString() == "" || Session["User_ID"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("../Home/Userlogin.aspx");
            }
            if (!Page.IsPostBack)
            {
                getUserPersonalDetails();
            }

        }
        catch (Exception)
        {

            Response.Write("<script>alert('Session Expired Login Again');</script>");
            Response.Redirect("../Home/Userlogin.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["User_ID"].ToString() == "" || Session["User_ID"] == null)
        {
            Response.Write("<script>alert('Session Expired Login Again');</script>");
            Response.Redirect("../Home/Userlogin.aspx");
        }
        else
        {
            updateUserPersonalDetails();

        }
    }

    // user defined function


    void updateUserPersonalDetails()
    {
        string password = "";
        if (TextBox10.Text.Trim() == "")
        {
            password = TextBox9.Text.Trim();
        }
        else
        {
            password = TextBox10.Text.Trim();
        }
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }


            SqlCommand cmd = new SqlCommand("update Signup set Full_Name=@Full_Name, DOB=@DOB, Contact_No=@Contact_No, Email_ID=@Email_ID, City=@City, Pincode=@Pincode, Address=@Address, Password=@Password WHERE User_ID='" + Session["User_ID"].ToString().Trim() + "'", con);

            cmd.Parameters.AddWithValue("@Full_Name", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@DOB", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@Contact_No", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@Email_ID", TextBox4.Text.Trim());

            cmd.Parameters.AddWithValue("@City", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@Pincode", TextBox7.Text.Trim());
            cmd.Parameters.AddWithValue("@Address", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", password);


            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result > 0)
            {

                Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                getUserPersonalDetails();

            }
            else
            {
                Response.Write("<script>alert('Invaid entry');</script>");
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


    void getUserPersonalDetails()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * from Signup where User_ID='" + Session["User_ID"].ToString() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            TextBox1.Text = dt.Rows[0]["Full_Name"].ToString();
            TextBox2.Text = dt.Rows[0]["DOB"].ToString();
            TextBox3.Text = dt.Rows[0]["Contact_No"].ToString();
            TextBox4.Text = dt.Rows[0]["Email_ID"].ToString();

            TextBox6.Text = dt.Rows[0]["City"].ToString();
            TextBox7.Text = dt.Rows[0]["Pincode"].ToString();
            TextBox5.Text = dt.Rows[0]["Address"].ToString();
            TextBox8.Text = dt.Rows[0]["User_ID"].ToString();
            TextBox9.Text = dt.Rows[0]["Password"].ToString();




        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");

        }
    }
}