using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YokyoOlympicGames.Admin
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        DataAccessLayer.GameTypeClass gtc = new DataAccessLayer.GameTypeClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlGameType.DataSource = gtc.getAllGameTypes();
           
            ddlGameType.DataValueField = "GameTypeId";
            ddlGameType.DataTextField = "GameTypeName";
            ddlGameType.DataBind();
        }
        DataAccessLayer.GamesClass gc = new DataAccessLayer.GamesClass();
        protected void btnCreateGames_Click(object sender, EventArgs e)
        {
            try
            {
                bool rs = gc.createGames(int.Parse(ddlGameType.SelectedValue.ToString()), txtGameName.Text, txtDescription.Text);
                if(rs==true)
                {
                    lblMessage.Text = "Games Successfully Added";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
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
            Response.Redirect("GameDetails.aspx");
        }
    }
}