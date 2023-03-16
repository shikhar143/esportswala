using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Session["email"] == null) &&  (Session["admin"] == null))
        {
            signoutbtn.Visible = false;
            namebtn.Visible = false;
            signupbtn.Visible = true;
            loginbtn.Visible = true;
            adminlogin.Visible = true;
            player.Visible = false;
        }
        else if (Session["admin"] != null)
        {
            update.Visible = true;
            signoutbtn.Visible = true;
            signupbtn.Visible = false;
            namebtn.Visible = false;
            loginbtn.Visible = false;
            adminlogin.Visible = false;
            player.Visible = true;
        }
        else if (Session["email"] != null)
        {
            signoutbtn.Visible = true;
            namebtn.Visible = true;
            signupbtn.Visible = false;
            loginbtn.Visible = false;
            adminlogin.Visible = false;
            update.Visible = false;
            player.Visible = false;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Esports"].ToString());
            string qry = "Select name from reguser where email= '" + Session["email"] + "' ";
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            namebtn.Text = (string)cmd.ExecuteScalar();
        }


        //if (Session["role"].Equals("user"))
        //{
        //    update.Visible= false;
        //}
        //else
        //{
        //    update.Visible = true;
        //}

    }
}
