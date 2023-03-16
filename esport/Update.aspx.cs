using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using tournamentreg;
using System.Reflection.Emit;

public partial class Update : System.Web.UI.Page
{
    protected void clickget(object sender, EventArgs e)
    {
        registration b = registrationDAL.Getdetail(Convert.ToInt32(idreg.Text));
        if (b != null)
        {
            txt_namereg.Text = b.name;
            emailreg.Text = b.email;
            numreg.Text = b.number;
            dropdown.Text = b.game;
            tourreg.Text = b.tournamentname;
            prizereg.Text = b.prize;
            slotreg.Text = b.slots;
            updatebtn.Enabled = true;
            delreg.Enabled = true;
        }
        else
        {
            updatebtn.Enabled = false;
            delreg.Enabled = false;
        }
    }

    protected void clickupdate(object sender, EventArgs e)
    {
        string msg = registrationDAL.Updateold(Int32.Parse(idreg.Text), txt_namereg.Text, emailreg.Text, numreg.Text, dropdown.Text,tourreg.Text,prizereg.Text,slotreg.Text);
    }
    protected void clickdel(object sender, EventArgs e)
    {
        string msg = registrationDAL.Deleteold(Int32.Parse(idreg.Text));
    }
}