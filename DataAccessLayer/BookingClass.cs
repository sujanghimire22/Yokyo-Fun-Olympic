using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
namespace YokyoOlympicGames.DataAccessLayer
{
   
    public class BookingClass
    {
        SqlConnection conn = new SqlConnection("Data Source=SUJANPC\\SQLEXPRESS;Initial Catalog=YokyoGamesDB;Integrated Security=True");
        public bool createBooking(
            int CustomerId,
            int BroadCastId,
            DateTime BookingDate,
            String Remarks)
        {
            SqlCommand cmd = new SqlCommand(@"insert into BookingTable(
                                            CustomerId,
                                            BroadCastId,
                                            BookingDate,
                                            Remarks)
                                            values(@CustomerId,
                                                   @BroadCastId,
                                                   @BookingDate,
                                            @Remarks)", conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@CustomerId", CustomerId);
            cmd.Parameters.AddWithValue("@BroadCastId", BroadCastId);
            cmd.Parameters.AddWithValue("@BookingDate", BookingDate);
            cmd.Parameters.AddWithValue("@Remarks", Remarks);
            conn.Open();
            int result = cmd.ExecuteNonQuery();
            conn.Close();
            if (result > 0)
                return true;
            else return false;
        }
        public DataTable getAllBookings()
        {
            try
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("Select * from BookingTable", conn);
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
        public DataTable getAllBookingsByAudienceId(int CustomerId)
        {
            try
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("Select * from BookingTable where CustomerId=@CustomerId", conn);
                cmd.Parameters.AddWithValue("@CustomerId", CustomerId);
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