using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebPresence.Common;
using WebPresence.DataAccessLayer;
using DC.BusinessHelper;

namespace WebPresence.WebPortal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                using (WebPresenceEntities _context = new WebPresenceEntities())
                {
                    try
                    {
                        Domain dom = new Domain();
                        DomainConfigure domconfg = new DomainConfigure();
                        dom.WebsiteName = txtwebname.Text;
                        dom.DomainUrl = txtWebAddress.Text;
                        dom.KeyWords = txtKeywords.Text;
                        dom.Country = txtLocation.Text;
                        dom.City = txtCity.Text;
                        dom.State = txtState.Text;
                        dom.IsActive = true;
                        dom.CreatedDate = CommonClass.CurrentTime();
                        dom.CreatedBy = 2;
                        dom.ModifiedBy = 2;
                        dom.ModifiedDate = CommonClass.CurrentTime();
                        string id = DomainManager.InsertOrUpdateDomain(dom);
                        if (Convert.ToInt32(id) > 0)
                        {
                            domconfg.DomainId = Convert.ToInt32(id);
                            domconfg.Advertising = false;
                            domconfg.AdvertisingToken = "";
                            domconfg.Traffic = false;
                            domconfg.TrafficToken = "";
                            domconfg.Facebook = false;
                            domconfg.FacebookToken = "";
                            domconfg.YouTube = false;
                            domconfg.YoutubeToken = "";
                            domconfg.Twitter = false;
                            domconfg.TwitterToken = "";
                            domconfg.Conversions = false;
                            domconfg.ConversionsToken = "";
                            domconfg.CallTracking = false;
                            domconfg.CallTrackingToken = "";
                            domconfg.CreatedDate = CommonClass.CurrentTime();
                            domconfg.CreatedBy = 2;
                            domconfg.IsDeleted = false;
                            domconfg.ModifiedDate = CommonClass.CurrentTime();
                            string ID = DomainManager.InsertOrUpdateDomainConfigure(domconfg);
                            if (Convert.ToInt32(ID) > 0)
                            {

                            }
                            else
                            {

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
    }
}