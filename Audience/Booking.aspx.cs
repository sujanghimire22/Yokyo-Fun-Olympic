using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 
namespace YokyoOlympicGames.Audience
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        DataAccessLayer.BroadCastClass bc = new DataAccessLayer.BroadCastClass();
        DataAccessLayer.BookingClass bcc = new DataAccessLayer.BookingClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlBroadCast.DataSource = bc.getAllBroadCast();
            ddlBroadCast.DataTextField = "BroadCastName";
            ddlBroadCast.DataValueField = "BroadCastId";
            ddlBroadCast.DataBind();
        }

        protected void btnCreateBooking_Click(object sender, EventArgs e)
        {
            try
            {
                bool rs = bcc.createBooking(int.Parse(Session["AudienceId"].ToString()),
                    int.Parse(ddlBroadCast.SelectedValue.ToString()), DateTime.Parse(txtBookingDate.Text), txtRemarks.Text);
                if(rs==true)
                {
                    lblMessage.Text = "Booking Successfully Made";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMessage.Text = "Error in performing the required operation";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void btnBookingDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookingDetails.aspx");
        }
    }
}