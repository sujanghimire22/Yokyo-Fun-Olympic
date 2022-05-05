using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace YokyoOlympicGames.DataAccessLayer
{
    public class BroadCastClass
    {
        SqlConnection conn = new SqlConnection("Data Source=SUJANPC\\SQLEXPRESS;Initial Catalog=YokyoGamesDB;Integrated Security=True");
        public bool addBroadCast(String BroadCastName,
            int GameId,
            DateTime BroadCastDate,
            String Remarks)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(@"insert into GameBroadCastTable(BroadCastName,GameId,BroadCastDate,Remarks) 
                                                    values(@BroadCastName,@GameId,@BroadCastDate,@Remarks)",conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@BroadCastName", BroadCastName);
                cmd.Parameters.AddWithValue("@GameId", GameId);
                cmd.Parameters.AddWithValue("@BroadCastDate", BroadCastDate);
                cmd.Parameters.AddWithValue("@Remarks", Remarks);
                conn.Open();
                int result = cmd.ExecuteNonQuery();
                conn.Close();
                if (result > 0)
                    return true;
                else
                    return false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally { conn.Close(); }
        }
        public DataTable getAllBroadCast()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Select * from GameBroadCastTable", conn);
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