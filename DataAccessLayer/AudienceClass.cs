using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace YokyoOlympicGames.DataAccessLayer
{
    public class AudienceClass
    {
        SqlConnection conn = new SqlConnection("Data Source=SUJANPC\\SQLEXPRESS;Initial Catalog=YokyoGamesDB;Integrated Security=True");
        public bool addAudience(String AudienceName,
                                String Address, 
                                String Contact, 
                                String Email,
                                String UserName, 
                                String Password)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(@"insert into AudienceTable(AudienceName,
                                                    Address,Contact,Email,UserName,Password) 
                                                    values (@AudienceName,
                                                            @Address,
                                                            @Contact,@Email,@UserName,@Password)", conn);
                cmd.Parameters.AddWithValue("@AudienceName", AudienceName);
                cmd.Parameters.AddWithValue("@Address", Address);
                cmd.Parameters.AddWithValue("@Contact", Contact);
                cmd.Parameters.AddWithValue("@Email", Email);
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
        public bool login(String UserName,String Password)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(@"Select * from audienceTable where UserName=@UserName and Password=@Password", conn);
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
        public int AudienceId(String UserName,String Password)
        {
            try
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("Select AudienceId from audienceTable where UserName=@UserName and Password=@Password", conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Password", Password);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);
                conn.Close();
                int audienceId = int.Parse(dt.Rows[0]["AudienceId"].ToString());
                return audienceId;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { conn.Close(); }
        }
    }
}