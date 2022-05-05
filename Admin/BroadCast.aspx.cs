using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YokyoOlympicGames.Admin
{
    public partial class WebForm5 : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlGames.DataSource = gc.getAllGames();
            ddlGames.DataTextField = "GameName";
            ddlGames.DataValueField = "GameId";
            ddlGames.DataBind();
        }
        DataAccessLayer.BroadCastClass bc = new DataAccessLayer.BroadCastClass();
        DataAccessLayer.GamesClass gc = new DataAccessLayer.GamesClass();
        protected void btnAddBroadCastDetails_Click(object sender, EventArgs e)
        {
            try
            {
                bool rs = bc.addBroadCast(txtBroadCastName.Text, 
                    int.Parse(ddlGames.SelectedValue.ToString()),
                    DateTime.Parse(txtBroadCastDate.Text), 
                    txtRemarks.Text);
                if(rs==true)
                {
                    lblMessage.Text = "BroadCast Information Successfully Added to Database";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMessage.Text = "Error in performing the required operaiton";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void btnDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("BroadCastDetails.aspx");
        }
    }
}