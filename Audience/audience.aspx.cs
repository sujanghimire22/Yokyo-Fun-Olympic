using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YokyoOlympicGames.Audience
{
    public partial class audience : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataAccessLayer.AudienceClass ac = new DataAccessLayer.AudienceClass();
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                bool result = ac.login(txtUserName.Text, txtPassword.Text);
                if(result==true)
                {
                    Session["UserName"] = txtUserName.Text;
                    Session["AudienceId"] = ac.AudienceId(txtUserName.Text, txtPassword.Text);
                    Response.Redirect("AudienceDashboard.aspx");
                }
                else
                {
                    lblMessage.Text = "Error in performing the required operation";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {

                lblMessage.Text=ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("newAudience.aspx");
        }

        protected void btnForgot_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgot.aspx");
        }
    }
}