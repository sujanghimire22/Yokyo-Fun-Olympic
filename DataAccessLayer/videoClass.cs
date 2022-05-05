using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace YokyoOlympicGames.DataAccessLayer
{
    public class videoClass
    {
        SqlConnection conn = new SqlConnection(@"Data Source=SUJANPC\SQLEXPRESS;Initial Catalog=YokyoGamesDB;Integrated Security=True");
        public bool manageVideos(int VideoId,
            int GameId,
            String Videoname,
            String VideoPath,
            String Description,
            int Mode)
        {
            try
            {
                String txtSql = "";
                if (Mode == 1)
                    txtSql = "insert into VideoTable(GameId,VideoName,VideoPath,Description) values(@GameId,@VideoName,@VideoPath,@Description)";
                if (Mode == 2)
                    txtSql = "Delete from VideoTable where VideoId=@VideoId";
                SqlCommand cmd=new SqlCommand(txtSql, conn);
                cmd.Parameters.AddWithValue("@VideoId", VideoId);
                cmd.Parameters.AddWithValue("@GameId",GameId);
                cmd.Parameters.AddWithValue("@VideoName",Videoname);
                cmd.Parameters.AddWithValue("@VideoPath",VideoPath);
                cmd.Parameters.AddWithValue("@Description", Description);
                conn.Open();
                int result=cmd.ExecuteNonQuery();
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
    }
}