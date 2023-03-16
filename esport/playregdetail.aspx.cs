using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tournamentreg;

public partial class playregdetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Esports"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
        string com = "Select tournamentname from tournamentreg";
        SqlCommand cmd = new SqlCommand(com, con);
        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            dropdown.Items.Add(dr[0].ToString());
        }

        }
        
    }

    protected void clickget(object sender, EventArgs e)
    {
        list.DataSource = registrationDAL.playerregdetail(dropdown.SelectedValue);
        list.DataBind();
    }

}