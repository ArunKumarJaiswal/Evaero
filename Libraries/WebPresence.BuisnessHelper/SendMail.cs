using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using System.Net;
using System.Configuration;

namespace DC.BusinessHelper
{
    public static class SendMail
    {
        public static bool SendEmail(String BodyText, String subject, String mailTo)
        {
            string host = null; 
            string emailFrom = null;
            string password = null;
            try
            {
                emailFrom = ConfigurationSettings.AppSettings["EmailAddress"].ToString();
                password = ConfigurationSettings.AppSettings["password"].ToString();
                host = ConfigurationSettings.AppSettings["Host"].ToString();

                System.Net.Mail.SmtpClient SmtpServer = new System.Net.Mail.SmtpClient();
                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                SmtpServer.Credentials = new System.Net.NetworkCredential(emailFrom, password);
                SmtpServer.Host = host;
                mail.From = new MailAddress("Admin@smartdatainc.com");
                mail.To.Add(mailTo);
                mail.Subject = subject;
                mail.IsBodyHtml = true;
                mail.Body = BodyText;
                try
                {
                    SmtpServer.Send(mail);
                    return true;
                }
                catch
                {
                    return false;
                }
            }
            catch (Exception exceptionObject)
            {
                throw new Exception(exceptionObject.Message);
            }
            finally
            {
                host= null;
                emailFrom = null;
                password = null;
            }
        }

        public static bool sendPasswordToEmail(string UserID,string EmailID, string Password)
        {
            bool isuserexist = false;
            try
            {
                string emailAddress = ConfigurationSettings.AppSettings["EmailAddress"].ToString();
                string password = ConfigurationSettings.AppSettings["password"].ToString();
                string host = ConfigurationSettings.AppSettings["Host"].ToString();

                System.Net.Mail.SmtpClient SmtpServer = new System.Net.Mail.SmtpClient();
                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                SmtpServer.Credentials = new System.Net.NetworkCredential(emailAddress, password);
                SmtpServer.Host = host;

                mail.From = new MailAddress("Admin@smartdatainc.com");
                mail.To.Add(EmailID);
                mail.Subject = "Password Information";
                mail.IsBodyHtml = true;
                mail.Body = @"Your EmailID : " + EmailID + "<br/>  Your Password Reset Link : " + "http://" + System.Web.HttpContext.Current.Request.Url.Host.ToString() + "/WebPresence/ResetCode.aspx?ID=" + UserID.ToString() + "&EmailID=" + EmailID + "&Code=" + Password + " <br/> Click on the above link to reset your password <br/><br/><br/>Thanks & Regards,<br/>Webpresence Team";
                mail.IsBodyHtml = true;
                SmtpServer.Send(mail);
                isuserexist = true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return isuserexist;
        }
    }
}