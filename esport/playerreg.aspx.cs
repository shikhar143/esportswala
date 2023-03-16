using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tournamentreg;
using System.Configuration;

public partial class playerreg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Esports"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            mv1.ActiveViewIndex = 0;
        }
        string com = "Select tournamentname from tournamentreg";
        SqlCommand cmd = new SqlCommand(com, con);
        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while(dr.Read())
        {
            dropdown.Items.Add(dr[0].ToString());
        }
    }
    protected void clicksubmit(object sender, EventArgs e)
    {
        string reg = registrationDAL.playerregi(txt_namereg.Text, emailreg.Text, numreg.Text, dropdown.SelectedValue, teamnamereg.Text, player1.Text, player2.Text,player3.Text,player4.Text,player5.Text);
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
        Label10.Text = teamnamereg.Text;
        Label12.Text = player1.Text;
        Label14.Text = player2.Text;
        Label21.Text = player3.Text;
        Label23.Text = player4.Text;
        Label25.Text = player5.Text;
    }
    protected void clickprev(object sender, EventArgs e)
    {
        mv1.ActiveViewIndex = 0;
    }
}