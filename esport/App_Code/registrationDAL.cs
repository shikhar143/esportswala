using System;
using System.Data;
using System.Data.SqlClient;
//using System.Data.SqlClient;
using System.Web.Configuration;


/// <summary>
/// Summary description for registrationDAL
/// </summary>
/// 
namespace tournamentreg
{
    public class registrationDAL
    {
        static string conesp = WebConfigurationManager.ConnectionStrings["Esports"].ConnectionString;
        public static DataSet Upcoming()
        {
            SqlConnection conup = new SqlConnection(conesp);
            SqlDataAdapter daup = new SqlDataAdapter("Upcoming", conup);
            daup.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet dsup = new DataSet();
            daup.Fill(dsup, "tournamentreg");
            return dsup;
        }

        public static DataSet playerregdetail(string tournamentname)
        {
            SqlConnection conprd = new SqlConnection(conesp);
            SqlDataAdapter daprd = new SqlDataAdapter("playerregdetail", conprd);
            daprd.SelectCommand.Parameters.AddWithValue("@tournamentname", tournamentname);
            daprd.SelectCommand.CommandType = CommandType.StoredProcedure;
            
            DataSet dsprd = new DataSet();
            daprd.Fill(dsprd, "playerreg");
            return dsprd;
        }

        public static DataSet LoginDetails(string email)
        {
            SqlConnection con = new SqlConnection(conesp);
            SqlDataAdapter da = new SqlDataAdapter("logindetails", con);
            da.SelectCommand.Parameters.AddWithValue("@email", email);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            con.Open();
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
            //SqlConnection conlog = new SqlConnection(conesp);
            //conlog.Open();
            //SqlDataAdapter dalog = new SqlDataAdapter("logindetails", conlog);
            //dalog.SelectCommand.Parameters.Add(email);
            //dalog.SelectCommand.CommandType = CommandType.StoredProcedure;
            //DataSet dslog = new DataSet();
            //dalog.Fill(dslog);
            //return dslog;
        }
        public static registration Getdetail(int id)
        {
            SqlConnection conget = new SqlConnection(conesp);
            try
            {
                conget.Open();
                SqlCommand cmdget = new SqlCommand("Getdetail", conget);
                cmdget.CommandType = CommandType.StoredProcedure;
                cmdget.Parameters.AddWithValue("@id", id);
                SqlDataReader drget = cmdget.ExecuteReader();
                if (drget.Read())
                {
                    registration b = new registration();
                    b.name = drget["name"].ToString();
                    b.email = drget["email"].ToString();
                    b.number = drget["number"].ToString();
                    b.game = drget["game"].ToString();
                    b.tournamentname = drget["tournamentname"].ToString();
                    b.prize = drget["prize"].ToString();
                    b.slots = drget["slots"].ToString();
                    return b;
                }
                else
                    return null;
            }
            catch (Exception)
            {
                return null;
            }
            finally
            {
                conget.Close();
            }
        }



        public static string Addnew(string name, string email, string number, string game, string tournamentname, string prize, string slots)
        {
            SqlConnection conadd = new SqlConnection(conesp);
            try
            {
                conadd.Open();
                SqlCommand cmdadd = new SqlCommand("Addnew", conadd);
                cmdadd.CommandType = CommandType.StoredProcedure;
                cmdadd.Parameters.AddWithValue("@name", name);
                cmdadd.Parameters.AddWithValue("@email", email);
                cmdadd.Parameters.AddWithValue("@number", number);
                cmdadd.Parameters.AddWithValue("@game", game);
                cmdadd.Parameters.AddWithValue("@tournamentname", tournamentname);
                cmdadd.Parameters.AddWithValue("@prize", prize);
                cmdadd.Parameters.AddWithValue("@slots", slots);
                cmdadd.ExecuteNonQuery();
                return null;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            finally
            {
                conadd.Close();
            }
        }

        public static string playerregi(string name, string email, string number, string tournamentname, string teamname, string player1, string player2, string player3, string player4, string player5)
        {
            SqlConnection conadd = new SqlConnection(conesp);
            try
            {
                conadd.Open();
                SqlCommand cmdadd = new SqlCommand("playerregi", conadd);
                cmdadd.CommandType = CommandType.StoredProcedure;
                cmdadd.Parameters.AddWithValue("@name", name);
                cmdadd.Parameters.AddWithValue("@email", email);
                cmdadd.Parameters.AddWithValue("@number", number);
                cmdadd.Parameters.AddWithValue("@tournamentname", tournamentname);
                cmdadd.Parameters.AddWithValue("@teamname", teamname);
                cmdadd.Parameters.AddWithValue("@player1", player1);
                cmdadd.Parameters.AddWithValue("@player2", player2);
                cmdadd.Parameters.AddWithValue("@player3", player3);
                cmdadd.Parameters.AddWithValue("@player4", player4);
                cmdadd.Parameters.AddWithValue("@player5", player5);
                cmdadd.ExecuteNonQuery();
                return null;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            finally
            {
                conadd.Close();
            }
        }

        public static string Deleteold(int id)
        {
            SqlConnection condel = new SqlConnection(conesp);
            try
            {
                condel.Open();
                SqlCommand cmddel = new SqlCommand("deleteold", condel);
                cmddel.CommandType = CommandType.StoredProcedure;
                cmddel.Parameters.AddWithValue("@id", id);
                cmddel.ExecuteNonQuery();
                return null;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            finally
            {
                condel.Close();
            }
        }

        public static string Updateold(int id, string name, string email, string number, string game, string tournamentname, string prize, string slots)
        {
            SqlConnection conupd = new SqlConnection(conesp);
            try
            {
                conupd.Open();
                SqlCommand cmdupd = new SqlCommand("Updateold", conupd);
                cmdupd.CommandType = CommandType.StoredProcedure;
                cmdupd.Parameters.AddWithValue("@id", id);
                cmdupd.Parameters.AddWithValue("@name", name);
                cmdupd.Parameters.AddWithValue("@email", email);
                cmdupd.Parameters.AddWithValue("@number", number);
                cmdupd.Parameters.AddWithValue("@game", game);
                cmdupd.Parameters.AddWithValue("@tournamentname", tournamentname);
                cmdupd.Parameters.AddWithValue("@prize", prize);
                cmdupd.Parameters.AddWithValue("@slots", slots);
                cmdupd.ExecuteNonQuery();
                return null;
            }
            catch (Exception ex) { return ex.Message; }
            finally { conupd.Close(); }
        }

        public static DataSet FetchBook(int id1)
        {
            SqlConnection confet = new SqlConnection(conesp);
            try
            {
                confet.Open();
                DataSet dsfet = new DataSet();
                SqlDataAdapter dafet = new SqlDataAdapter("Getdetail", confet);
                dafet.SelectCommand.CommandType = CommandType.StoredProcedure;
                dafet.SelectCommand.Parameters.AddWithValue("@id", id1);
                dafet.Fill(dsfet, "tournamentreg");
                return dsfet;
            }
            catch
            {
                return null;
            }
            finally
            {
                confet.Close();
            }

        }

    }
}