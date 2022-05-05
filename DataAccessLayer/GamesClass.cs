using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace YokyoOlympicGames.DataAccessLayer
{
    public class GamesClass
    {
        SqlConnection conn = new SqlConnection("Data Source=SUJANPC\\SQLEXPRESS;Initial Catalog=YokyoGamesDB;Integrated Security=True");
        public bool createGames(int GameTypeId,String GameName,String GameDescription)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(@"insert into GameTable(GameTypeId,GameName,GameDescription) values 
                                     (@GameTypeId,@GameName,@GameDescription)",conn);
                cmd.Parameters.AddWithValue("@GameTypeId", GameTypeId);
                cmd.Parameters.AddWithValue("@GameName", GameName);
                cmd.Parameters.AddWithValue("@GameDescription", GameDescription);
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
        public DataTable getAllGames()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Select * from GameTable", conn);
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
            finally { conn.Close(); }
        }
    }
}