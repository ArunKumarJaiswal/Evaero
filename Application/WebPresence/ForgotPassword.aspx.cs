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
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnrecoverpassword_Click(object sender, EventArgs e)
        {
            bool isEmailSent = false;
            try
            {
                UserLogin userLogin = UserManager.GetUserByEmail(txtuserid.Text);
                if (userLogin == null)
                {
                    lblmsg.Text = "Email does not exist! Please enter correct Email.";
                    lblmsg.Visible = true;
                }
                else
                {
                    string Password = Guid.NewGuid().ToString().Substring(0, 8);
                    userLogin.PassWordResetCode = Password;
                    int id = Convert.ToInt32(UserManager.InsertOrUpdateUserLogin(userLogin));
                    if (id > 0)
                        isEmailSent = SendMail.sendPasswordToEmail(userLogin.CustomerId.ToString(), userLogin.EmailId, Password);
                }

                if (isEmailSent == true)
                {

                    lblmsg.Text = "Password sent to your E-Mail address, Please check your E-Mail";
                    lblmsg.Visible = true;
                    txtuserid.Text = String.Empty;
                    txtuserid.Visible = false;
                    btncancel.Visible = false;
                    btnrecoverpassword.Visible = false;
                }
                else
                {
                    lblmsg.Text = "Network Error! Please try again.";
                    lblmsg.Visible = true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

    }
}