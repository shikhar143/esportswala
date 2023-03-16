using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Esports"].ToString());

    protected void clicklogin(object sender, EventArgs e)
    {
        if (AuthenticateUser(adminidreg.Text, adminpassreg.Text))
        {
            FormsAuthentication.SetAuthCookie(adminidreg.Text, check.Checked);
            Session["admin"] = adminidreg.Text;
            Response.Redirect("/Auth/Default2.aspx");
        }
        else
        {
            Label2.Text = "Invalid Id or Password";
        }
    }
    private bool AuthenticateUser(string adminid, string adminpass)
    {
        SqlCommand cmdn = new SqlCommand("loginadmin", con);
        cmdn.CommandType = CommandType.StoredProcedure;
        cmdn.Parameters.AddWithValue("@adminid", adminid);
        cmdn.Parameters.AddWithValue("@adminpass", adminpass);
        con.Open();
        int ReturnCode = (int)cmdn.ExecuteScalar();
        return ReturnCode == 1;
    }
}