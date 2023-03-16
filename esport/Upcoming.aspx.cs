using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tournamentreg;
using System.Data;
using System.Data.SqlClient;

public partial class Upcoming : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            list.DataSource = registrationDAL.Upcoming();
            list.DataBind();

            repeater1.DataSource = registrationDAL.Upcoming();
            repeater1.DataBind();
        }
    }
}