using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_viewissue : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (checkIfAuthorExists())
        {
            updateAuthor();

        }
        else
        {
            Response.Write("<script>alert('ID does not exist');</script>");
        }
    }

    //Delete



    protected void Button4_Click(object sender, EventArgs e)
    {
        if (checkIfAuthorExists())
        {
            deleteAuthor();

        }
        else
        {
            Response.Write("<script>alert('ID does not exist');</script>");
        }
    }

    //Go



    protected void Button1_Click(object sender, EventArgs e)
    {
        getAuthorByID();
    }

    // user defined function
    void getAuthorByID()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * from issue where ID='" + TextBox1.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                TextBox2.Text = dt.Rows[0][6].ToString();
            }
            else
            {
                Response.Write("<script>alert('Invalid User ID');</script>");
            }


        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");

        }
    }


    void deleteAuthor()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("DELETE from issue WHERE ID='" + TextBox1.Text.Trim() + "'", con);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Complient Deleted Successfully');</script>");
            clearForm();
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }

    void updateAuthor()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("UPDATE issue SET status=@status WHERE ID='" + TextBox1.Text.Trim() + "'", con);

            cmd.Parameters.AddWithValue("@status", TextBox2.Text.Trim());

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Status Updated Successfully');</script>");
            clearForm();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }



    bool checkIfAuthorExists()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * from issue where ID='" + TextBox1.Text.Trim() + "';", con);
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

    void clearForm()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}