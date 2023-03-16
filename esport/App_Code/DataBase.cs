using System;
using System.Web.Configuration;

/// <summary>
/// Summary description for DataBase
/// </summary>
public class Database
{
    static public String ConnectionString
    {
        get
        {
            return WebConfigurationManager.ConnectionStrings["Esports"].ConnectionString;
        }
    }
}