using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Esports"].ToString());

    protected void clickreg(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            SqlCommand cmd = new SqlCommand("loginreguser", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter name = new SqlParameter("@name", txt_namereg.Text);
            SqlParameter email = new SqlParameter("@email", emailreg.Text);
            SqlParameter pass = new SqlParameter("@pass", passreg.Text);
            SqlParameter number = new SqlParameter("@number", numreg.Text);

            cmd.Parameters.Add(name);
            cmd.Parameters.Add(email);
            cmd.Parameters.Add(pass);
            cmd.Parameters.Add(number);

            conn.Open();
            int ReturnCode = (int)cmd.ExecuteScalar();
            if (ReturnCode == -1)
            {
                Label2.Text = "user name is already taken";
            }
            else
            {
                Response.Redirect("~/login.aspx");
            }

        }
    }
}