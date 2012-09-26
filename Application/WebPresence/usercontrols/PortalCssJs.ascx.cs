using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace WellAware.Web.UserControls
{
    public partial class PortalCssJs : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hidROOTURL.Value = ConfigurationManager.AppSettings["SiteURL"];
        }
    }
}