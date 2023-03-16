using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tournamentreg;
using System.Data;
using System.Data.SqlClient;

public partial class Registration1 :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            mv1.ActiveViewIndex= 0;
        }
    }
    protected void clicksubmit(object sender, EventArgs e)
    {
       string reg= registrationDAL.Addnew(txt_namereg.Text,emailreg.Text,numreg.Text,dropdown.SelectedValue,tourreg.Text,prizereg.Text,slotreg.Text);
        if (reg == null)
            lblMsg.Text = "Registraion completed Successfully!";
        else
            lblMsg.Text = "Error -> " + reg;
    }
    protected void clicknext(object sender, EventArgs e)
    {
        mv1.ActiveViewIndex = 1;
        TextBox1.Text = txt_namereg.Text;
        Label4.Text = emailreg.Text;
        Label6.Text = numreg.Text;
        Label8.Text = dropdown.Text;
        Label10.Text = tourreg.Text;
        Label12.Text = prizereg.Text;
        Label14.Text = slotreg.Text;

    }
    protected void clickprev(object sender, EventArgs e)
    {
        mv1.ActiveViewIndex = 0;
    }
}