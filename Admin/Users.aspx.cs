using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YokyoOlympicGames.Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataAccessLayer.UserClass uc = new DataAccessLayer.UserClass();
        protected void btnCreateUser_Click(object sender, EventArgs e)
        {
            try
            {
              if(txtUserName.Text!=txtConfirmPassword.Text)
                {
                    lblMessage.Text = "Passwords do not match";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    bool rs = uc.createUser(txtUserName.Text, txtPassword.Text);
                    if(rs==true)
                    {
                        lblMessage.Text = "User Successfully Created";
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                    }
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
            Response.Redirect("UserDetails.aspx");
        }

        protected void btnEditUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserDetails.aspx");
        }
    }
}