using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YokyoOlympicGames.Audience
{
    public partial class forgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Sucessfully Send link to the given Email";
            lblMessage.ForeColor = System.Drawing.Color.Green;
        }
    }
}