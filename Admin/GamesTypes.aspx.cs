using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YokyoOlympicGames.Admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataAccessLayer.GameTypeClass gtc = new DataAccessLayer.GameTypeClass();
        protected void btnCreateGameType_Click(object sender, EventArgs e)
        {
            try
            {
                bool rs = gtc.createGameType(txtGamesTypeName.Text, txtDescription.Text);
                if(rs==true)
                {
                    lblMessage.Text = "Game Type Successfully Created";
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

                lblMessage.Text = ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("gameTypeDetails.aspx");     
        }
    }
}