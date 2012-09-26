using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebPresence.DataAccessLayer;
using WebPresence.Common;
using DC.BusinessHelper;

namespace WebPresence
{
    public partial class Login : System.Web.UI.Page
    {
        UserLogin Usr = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Usr = UserManager.GetUserByEmail(txtuserid.Text);
            bool bIsAuthenticated = false;
            if (Usr != null)
            {

                if (EncryptionHelper.Decrypt(Usr.Password) == txtpassword.Text)
                {
                    if (Usr.IsLoginAllowed == false)
                    {
                        lblFeedback.Visible = true;
                        lblFeedback.Text = "Login is disabled. Please contact admin.";
                        lblFeedback.ForeColor = System.Drawing.Color.Red;
                        return;
                    }
                    else if (Usr.IsDeleted == true)
                    {
                        lblFeedback.Text = "Your account has been deleted. Please contact administrator.";
                        lblFeedback.Visible = true;
                        lblFeedback.ForeColor = System.Drawing.Color.Red;
                        return;
                    }
                    else if (Usr.IsEmailVerified == false)
                    {
                        lblFeedback.Text = "Your email has not been verified. Please verify it before login.";
                        lblFeedback.Visible = true;
                        lblFeedback.ForeColor = System.Drawing.Color.Red;
                        return;
                    }
                    else
                    {
                        Session["UserID"] = Usr.EmailId;
                        Session["Username"] = Usr.Customer.FirstName + " " + Usr.Customer.LastName;
                    }
                    bIsAuthenticated = true;
                }
            }

            if (!bIsAuthenticated)
            {
                lblFeedback.Text = "Invalid Email Address or Password";
                lblFeedback.ForeColor = System.Drawing.Color.Red;
                lblFeedback.Visible = true;
                return;
            }
            else
            {
                Response.Redirect("~/WebPortal/HomePage.aspx");
            }
        }
    }
}