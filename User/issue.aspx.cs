using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_issue : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        TextBox4.Text = ddlContent.SelectedValue;

        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("insert into issue (name,email,dep,date,num,des) values (@name,@email,@dep,@date,@num,@des)", con);

            cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@email", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@dep", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@num", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@date", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@des", TextBox3.Text.Trim());


            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Complained  Successful. Thank you');</script>");
            

            

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");

        }
    }
}