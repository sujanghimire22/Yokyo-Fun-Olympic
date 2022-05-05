using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace YokyoOlympicGames.DataAccessLayer
{
    public class GameTypeClass
    {
        SqlConnection conn = new SqlConnection("Data Source=SUJANPC\\SQLEXPRESS;Initial Catalog=YokyoGamesDB;Integrated Security=True");
        public bool createGameType(String GameTypeName, String Description)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(@"insert into GameTypeTable(GameTypeName,GameTypeDescription)
                                            values (@GameTypeName,@GameTypeDescription)", conn);
                cmd.Parameters.AddWithValue("@GameTypeName", GameTypeName);
                cmd.Parameters.AddWithValue("@GameTypeDescription", Description);
                conn.Open();
                int result = cmd.ExecuteNonQuery();
                conn.Close();
                if (result > 0)
                    return true;
                else return false;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { conn.Close(); }
        }
        public DataTable getAllGameTypes()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Select * from GameTypeTable",conn);
                DataTable dt = new DataTable();
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);
                conn.Close();
                return dt;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
