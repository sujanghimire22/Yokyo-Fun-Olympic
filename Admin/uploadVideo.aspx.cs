using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace YokyoOlympicGames.Admin
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            
            DataAccessLayer.videoClass vc = new DataAccessLayer.videoClass();
            fUpload.SaveAs(Server.MapPath("~/videos/") + Path.GetFileName(fUpload.FileName));
            String link = "videos/" + Path.GetFileName(fUpload.FileName);
            link = "<Video width=400 Controls><Source src=" + link + " type=video/mp4></Video>";
            bool result = vc.manageVideos(0,
                int.Parse(ddlGames.SelectedValue.ToString()),
                txtVideoName.Text,
                link,
                txtDescription.Text, 1);

            if (result == true)
            {
                lblMessage.Text = "Video Successfully Saved";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMessage.Text = "Error in performing the required operations";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnEditVideo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/allVideosPage.aspx");
        }
    }
}