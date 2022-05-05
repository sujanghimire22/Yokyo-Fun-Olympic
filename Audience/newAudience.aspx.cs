using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YokyoOlympicGames.Audience
{
    public partial class newAudience : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            DataAccessLayer.AudienceClass ac = new DataAccessLayer.AudienceClass();
            try
            {
                bool result = ac.addAudience(txtUserName.Text,
                    txtAddress.Text,
                    txtContactNumber.Text,
                    txtEmailAddress.Text, txtUserName.Text, txtPassword.Text);
                if (result == true)
                {
                    Response.Redirect("audience.aspx");
                }
                else
                {
                    lblMessage.Text = "Error in performing the required operation";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
            }
            catch (Exception ex)
            {

                lblMessage.Text = ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }

        }
    }
}