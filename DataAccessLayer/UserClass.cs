using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace YokyoOlympicGames.DataAccessLayer
{
    public class UserClass
    {
        SqlConnection conn = new SqlConnection("Data Source=SUJANPC\\SQLEXPRESS;Initial Catalog=YokyoGamesDB;Integrated Security=True");
        public bool createUser(String UserName,String Password)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(@"insert into UserTable(UserName,Password) 
                                                values(@UserName,@Password)", conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Password", Password);
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
        public bool login(String UserName, String Password)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(@"Select * from UserTable where UserName=@UserName and Password=@Password", conn);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Password", Password);
                DataTable dt = new DataTable();
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);
                conn.Close();
                if (dt.Rows.Count > 0)
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
    }
}