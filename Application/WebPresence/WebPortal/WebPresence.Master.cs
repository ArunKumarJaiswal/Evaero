using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebPresence.Common;

namespace WebPresence.WebPortal
{
    public partial class WebPresence : System.Web.UI.MasterPage
    {
        /// <summary>
        /// Handles the Load event of the Page control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null || Session["Username"].ToString() == "")
            {
                Response.Redirect("../Login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    lblUName.Text = Session["Username"].ToString();
                    if (hfDomain.Value == "0")
                    {
                        GetDomain();
                    }
                }
            }
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Redirect("../Default.aspx");
        }

        private void GetDomain()
        {
            for (int i = 0; i < 3; i++)
            {
                ListItem li = new ListItem();
                li.Text = "Domain" + (i + 1).ToString();
                li.Value = (i + 1).ToString();
                ddlDomain.Items.Add(li);
            }
            ddlDomain.Items.Insert(0, "Select");
        }

        protected void ddlDomain_SelectedIndexChanged(object sender, EventArgs e)
        {
            hfDomain.Value = "1";
            ManageMenu(Convert.ToInt32(ddlDomain.SelectedValue));
        }

        private void ManageMenu(int DomainID)
        {
            var domainConfiguration = DomainManager.GetDomainConfigureInfo(DomainID);
            if (domainConfiguration != null)
            {
                if (domainConfiguration.Advertising == true)
                    hlAdvertising.Enabled = true;
                else
                    hlAdvertising.Enabled = false;
                if (domainConfiguration.Facebook == true || domainConfiguration.Twitter == true || domainConfiguration.YouTube == true)
                    hlSocialMedia.Enabled = true;
                else
                    hlSocialMedia.Enabled = false;
                if (domainConfiguration.Conversions == true)
                    hlConversions.Enabled = true;
                else
                    hlConversions.Enabled = false;
                if (domainConfiguration.CallTracking == true)
                    hlTraffic.Enabled = true;
                else
                    hlTraffic.Enabled = false;
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "AlertMessage", "alert('Domain is not configured yet. Please configure it!');", true);
            }
        }
    }
}