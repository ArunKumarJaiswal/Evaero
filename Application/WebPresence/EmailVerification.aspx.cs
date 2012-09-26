using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebPresence.Common;
using WebPresence.DataAccessLayer;

namespace WebPresence
{
    public partial class EmailVerification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["Email"] == null || Request.QueryString["Email"].ToString() == "")
                {
                    trUnauthorized.Visible = true;
                    trSuccess.Visible = false;
                    trError.Visible = false;
                }
                else
                {
                    UserLogin userLogin = Customers.EmailVerification(Convert.ToInt32(Request.QueryString["UserID"].ToString()), Request.QueryString["Email"].ToString(), Request.QueryString["Code"].ToString());
                    if (userLogin == null)
                    {
                        trUnauthorized.Visible = false;
                        trSuccess.Visible = false;
                        trError.Visible = true;
                    }
                    else
                    {
                        userLogin.IsEmailVerified = true;
                        userLogin.IsLoginAllowed = true;
                        int id = Convert.ToInt32(UserManager.InsertOrUpdateUserLogin(userLogin));
                        if (id > 0)
                        {
                            trUnauthorized.Visible = false;
                            trSuccess.Visible = true;
                            trError.Visible = false;
                        }
                        else
                        {
                            trUnauthorized.Visible = false;
                            trSuccess.Visible = false;
                            trError.Visible = true;
                        }
                    }
                }
            }
        }
    }
}