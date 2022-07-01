using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {

            if (Session["role"]== null)
            {
                LinkButton1.Visible = true; //User login
                LinkButton2.Visible = true; //Sign up
                LinkButton4.Visible = true; //Admin Login
                LinkButton5.Visible = true; //home

                LinkButton3.Visible = false; //Lagout
                LinkButton7.Visible = false; //Helo user
                LinkButton6.Visible = false; //complaient
                LinkButton8.Visible = false; //issue
                LinkButton9.Visible = false; //view user
            }
            else if (Session["role"].Equals("user"))
            {
                LinkButton3.Visible = true; //Lagout
                LinkButton7.Visible = true; //Helo user
                LinkButton5.Visible = true; //home

                LinkButton1.Visible = false; //User login
                LinkButton2.Visible = false; //Sign up
                LinkButton4.Visible = false; //Admin login
                LinkButton6.Visible = false; //complaient
                LinkButton8.Visible = false; //issue
                LinkButton9.Visible = false; //view user
                LinkButton7.Text = "Hello " + Session["User_ID"].ToString();
            }
            else if (Session["role"].Equals("admin"))
            {
                LinkButton5.Visible = true; //home
                LinkButton3.Visible = true; //Lagout
                LinkButton7.Visible = true; //Helo user
                LinkButton6.Visible = true; //complaient
                LinkButton8.Visible = true; //issue
                LinkButton9.Visible = true; //view user

                LinkButton4.Visible = false; //Admin Login
                LinkButton1.Visible = false; //User login
                LinkButton2.Visible = false; //Sign up
                
                LinkButton7.Text = "Hello " + Session["User_ID"].ToString();
            }



        }

        catch
        {

        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Home/Userlogin.aspx");
    }

    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("../User/profile.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Home/signup.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["User_ID"] = "";
        Session["Full_name"] = "";
        Session["role"] = "";
        Response.Redirect("../Home/home.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Admin/Adminlogin.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        if (Session["role"] == null)
        {
            Response.Redirect("../Home/home.aspx");
        }
        else if (Session["role"].Equals("user"))
        {
            Response.Redirect("../User/uhome.aspx");
        }
        else if (Session["role"].Equals("admin"))
        { 
        Response.Redirect("../Home/home.aspx");
        }

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {

        Response.Redirect("../Admin/viewcom.aspx");

    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {

        Response.Redirect("../Admin/viewissue.aspx");

    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {

        Response.Redirect("../Admin/viewuser.aspx");

    }

}
