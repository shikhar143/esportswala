using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tournamentreg;

public partial class logindetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(!IsPostBack)
        {
            string eml =(string) Session["email"];
            detail.DataSource = registrationDAL.LoginDetails(eml);
            detail.DataBind();
        }
    }
}