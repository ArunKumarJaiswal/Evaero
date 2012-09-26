using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPresence
{
    public partial class TrialAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignupUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx?AID=1");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx?AID=2");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx?AID=3");
        }
    }
}