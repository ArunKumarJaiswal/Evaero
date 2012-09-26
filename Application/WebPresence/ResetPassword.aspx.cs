using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebPresence.Common;
using WebPresence.DataAccessLayer;
using DC.BusinessHelper;

namespace WellAware
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmailId"] == null || Session["EmailId"].ToString() == "")
            {
                Response.Redirect("~/ForgotPassword.aspx");
            }
            else
            {
                lblEmailID.Text = Session["EmailId"].ToString();
            }
        }

        protected void btnSetPassword_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    var user = UserManager.GetUserByEmail(lblEmailID.Text);
                    if (user != null)
                    {
                        user.Password = EncryptionHelper.Encrypt(txtNewPwd.Text);
                        int id = Convert.ToInt32(UserManager.InsertOrUpdateUserLogin(user));
                        if (id > 0)
                        {
                            Response.Redirect("~/Login.aspx");
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "AlertMessage", "alert('Server Error!');", true);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}