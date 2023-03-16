using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Esports"].ToString());

    protected void clicklogin(object sender, EventArgs e)
    {
        if(check.Checked)
        {

        if (AuthenticateUser(emailreg.Text, passreg.Text))
        {
            FormsAuthentication.SetAuthCookie(emailreg.Text, check.Checked);
            Session["email"] = emailreg.Text;
            Response.Redirect("/Auth/Default2.aspx");
            Session["role"] = "user";
        }
        else
        {
            Label2.Text = "Invalid Username or Password";
        }
        }
        else
        {
            Label2.Text = "Accept terms and condition";
        }
    }
    private bool AuthenticateUser(string email, string pass)
    {
        SqlCommand cmdn = new SqlCommand("login", con);
        cmdn.CommandType = CommandType.StoredProcedure;
        cmdn.Parameters.AddWithValue("@email", email);
        cmdn.Parameters.AddWithValue("@pass", pass);
        con.Open();
        int ReturnCode = (int)cmdn.ExecuteScalar();
        return ReturnCode == 1;
    }
}