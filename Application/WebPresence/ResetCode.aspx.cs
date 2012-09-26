using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebPresence.DataAccessLayer;
using System.Data;
using WebPresence.Common;

namespace WellAware
{
    public partial class ResetCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Code"] == null || Request.QueryString["Code"].ToString() == "")
            {
                if (Session["EmailId"] == null || Session["EmailId"].ToString() == "")
                {
                    Response.Redirect("~/ForgotPassword.aspx");
                }
                else
                {
                    txtUserID.Text = Session["EmailId"].ToString();
                }
            }
            else
            {
                try
                {
                    var user = UserManager.GetUserByEmail(Request.QueryString["EmailID"].ToString());
                    txtUserID.Text = user.EmailId;
                    txtResetCode.Text = Request.QueryString["Code"].ToString();
                    Session["EmailId"] = txtUserID.Text;
                    ResetPasswordCode();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            ResetPasswordCode();
        }

        private void ResetPasswordCode()
        {
            try
            {
                var user = UserManager.GetUserByEmail(txtUserID.Text);
                if (user != null)
                {
                    if (user.PassWordResetCode.Trim() == txtResetCode.Text)
                    {
                        Response.Redirect("~/ResetPassword.aspx");
                    }
                    else
                    {
                        lblFeedback.Text = "Reset Code Is Incorrect! Please Enter Correct Reset Code.";
                    }
                }
                else
                {
                    lblFeedback.Text = "Email ID Is Incorrect! Please Enter Correct Email ID.";
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}