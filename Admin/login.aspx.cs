using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YokyoOlympicGames.Admin
{
    public partial class login : System.Web.UI.Page
    {
      
        DataAccessLayer.UserClass uc = new DataAccessLayer.UserClass();
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            bool result = uc.login(txtUserName.Text, txtPassword.Text);
            if(result==true)
            {
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                lblMessage.Text = "Incorrect UserName or Password";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}