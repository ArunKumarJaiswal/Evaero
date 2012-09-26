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
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["AID"] == null || Request.QueryString["AID"].ToString() == "")
            {

            }
            else
            {
                usertupeId.Value = Request.QueryString["AID"].ToString();
            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    UserLogin user = new UserLogin();
                    user = UserManager.GetUserByEmail(txtEmail.Text);
                    if (user != null)
                    {
                        lblEmailExists.Visible = true;
                        return;
                    }
                    lblEmailExists.Visible = false;
                    UserLogin UserObj = new UserLogin();
                    Customer CustomObject = new Customer();
                    CustomObject.FirstName = txtFirstName.Text;
                    CustomObject.LastName = txtLastName.Text;
                    CustomObject.Address = TexAddrress.Text;
                    CustomObject.City = TextCity.Text;
                    CustomObject.ContactNo = TexContact.Text;
                    CustomObject.State = DropDownState.SelectedValue;
                    CustomObject.Country = "USA";
                    CustomObject.PostalCode = TexPostal.Text;
                    CustomObject.PackageFk = 1;
                    CustomObject.IsCancelled = false;
                    CustomObject.DateCancelled = CommonClass.CurrentTime();
                    if (usertupeId.Value == "1")
                    {
                        CustomObject.NextPaymentDate = DateTime.Now.AddDays(14);
                    }
                    else if (usertupeId.Value == "2")
                    {
                        CustomObject.NextPaymentDate = DateTime.Now.AddDays(7);
                    }
                    else
                    {
                        CustomObject.NextPaymentDate = DateTime.Now.AddDays(7);
                    }
                    CustomObject.IsFreeTrial = true;
                    CustomObject.IsActive = true;
                    CustomObject.IsDeleted = false;
                    CustomObject.CreatedBy = 1;
                    CustomObject.CreatedDate = DateTime.Now;
                    CustomObject.DateCreated = CommonClass.CurrentTime();
                    CustomObject.DateUpdated = CommonClass.CurrentTime();
                    Customers objects = new Customers();
                    string id = objects.InsertOrUpdateUser(CustomObject);
                    if (Convert.ToInt32(id) > 0)
                    {
                        Guid objGuid = Guid.NewGuid();
                        string uniqueID = objGuid.ToString().Substring(0, 8);
                        UserObj.RoleId = Convert.ToInt32(usertupeId.Value);
                        UserObj.CustomerId = Convert.ToInt32(id);
                        UserObj.EmailId = txtEmail.Text;
                        UserObj.Password = EncryptionHelper.Encrypt(txtPassword.Text);
                        UserObj.IsClient = false;
                        UserObj.LastLoginDate = CommonClass.CurrentTime();
                        UserObj.EmailVerificationCode = uniqueID;
                        UserObj.IsEmailVerified = false;
                        UserObj.PassWordResetCode = uniqueID;
                        UserObj.IsLoginAllowed = false;
                        UserObj.IsDeleted = false;
                        UserObj.CreatedBy = 1;
                        UserObj.CreatedDate = CommonClass.CurrentTime();
                        int UserLoginid = Convert.ToInt32(UserManager.InsertOrUpdateUserLogin(UserObj));
                        if (UserLoginid > 0)
                        {
                            string link = "http://" + System.Web.HttpContext.Current.Request.Url.Host.ToString() + "/WebPresence/EmailVerification.aspx?Email=" + txtEmail.Text + "&UserID=" + id + "&Code=" + uniqueID;
                            string mailBody = "<table style='width:100%;'><tr><td width='25%'>Dear " + txtFirstName.Text + " " + txtLastName.Text + ",</td><td width='25%'>&nbsp;</td><td width='25%'>&nbsp;</td><td width='25%'>&nbsp;</td></tr><tr><td colspan='4'>An email verification code is being sending to you by webpresence team.Please find it below :</td></tr><tr><td width='25%'>" + link + "</td><td width='25%'>&nbsp;</td><td width='25%'>&nbsp;</td><td width='25%'>&nbsp;</td></tr><tr><td colspan='4'>You can verify your email by clicking at the link</td></tr><tr><td width='25%'>&nbsp;</td><td width='25%'>&nbsp;</td><td width='25%'>&nbsp;</td><td width='25%'>&nbsp;</td></tr><tr><td width='25%'>Thanks &amp; Regards,</td><td width='25%'>&nbsp;</td><td width='25%'>&nbsp;</td><td width='25%'>&nbsp;</td></tr><tr><td width='25%'>WebPresence Team</td><td width='25%'>&nbsp;</td><td width='25%'>&nbsp;</td><td width='25%'>&nbsp;</td></tr><tr><td width='25%'>" + "http://" + System.Web.HttpContext.Current.Request.Url.Host.ToString() + "/WebPresence/" + "</td><td width='25%'>&nbsp;</td><td width='25%'>&nbsp;</td><td width='25%'>&nbsp;</td></tr></table>";
                            //<tr><td width='25%'>Verification Code :</td><td width='25%'>" + uniqueID + "</td><td width='25%'>&nbsp;</td><td width='25%'>&nbsp;</td></tr>
                            string mailSubject = "Email Verification Code From WebPresence";
                            SendMail.SendEmail(mailBody, mailSubject, txtEmail.Text);
                            if (CustomObject.IsFreeTrial == false)
                                Response.Redirect("Signup2.aspx");
                            ClearControls();
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "AlertMessage", "alert('Signup process failed! Please try again.');", true);
                        }
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "AlertMessage", "alert('Signup process failed! Please try again.');", true);
                    }
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        private void ClearControls()
        {
            txtConfirmPassword.Text = txtEmail.Text = txtFirstName.Text = txtLastName.Text = txtPassword.Text = "";
            TexAddrress.Text = TexContact.Text = TexPostal.Text = TextCity.Text = "";
            DropDownState.SelectedIndex = 0;
           //DropDownCountry.SelectedIndex = 0;
            lblEmailExists.Visible = false;
        }
    }
}