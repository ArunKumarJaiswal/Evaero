<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrialAccount.aspx.cs" Inherits="WebPresence.TrialAccount" %>

<%@ Register Src="~/UserControls/PortalCssJs.ascx" TagName="CssJs" TagPrefix="jQuerySupport" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<jQuerySupport:CssJs runat="server" ID="CssJs1" />
<head id="Head1" runat="server">
    <title>WebPresence Forgot Password</title>
    <jQuerySupport:CssJs runat="server" ID="jQueryCssJs" />
    <link href="css/styles.css" rel="stylesheet" type="text/css" />

</head>
<body>
 <form id="form1" runat="server">
	<section id="page-holder">
    	<!----inner-page-holder-start---->
    	<section id="inner-page-holder">
        	<header>
            	<section class="logo"><img src="images/logo.png" alt="WebPresence " /></section>
                <section class="right-header">
                	<p class="my-account"><a href="Login.aspx">LogIn</a></p>
                </section>
            </header>
            <section id="wrapLogin">            	
                <!------content-wrap-start------->        
                  
     <%--<telerik:RadScriptManager ID="RadScriptManager1" Runat=server></telerik:RadScriptManager>--%>
    <center>
       
          
          <div  class="content_title"  style="border: 1px groove Black;  color:white;    position:absolute; width:200px;height:250px;top:250px;left:910px;">
          For Agency<br /><br /><br />

              25 Domains<br /><br />
        

       7 Days Trial<br /><br />

            <asp:Button ID="Button1" class="btncontent" runat="server" 
                  style="position:relative;top:30px; left: 0px; width: 160px;" 
                  Text="SignUp for Agency" onclick="Button3_Click"></asp:Button>

          </div>
           <div   class="content_title"  style="border: 1px groove Black;  color:white; width:200px;height:250px;position:absolute;left:610px;top:250px;">
           For WebMaster<br /><br /><br />
               5 Domains<br /><br />
         
       7 days Trial<br /><br />
<asp:Button ID="btnSignupWebmaster" class="btncontent"   
                   style="position:relative;top:30px; left: 0px; width: 160px;"   runat="server" 
                   Text="SignUp for WebMaster" onclick="Button2_Click"></asp:Button>
          </div>
           <div  class="content_title"     style="border: 1px groove Black;position:absolute;  color:white; left:300px;top:250px; width:200px;height:250px;">
               For User<br /><br /><br />
               1 Domain<br />
        
         <br />
         14 days Trial<br /><br />
     <asp:Button ID="btnSignupUser" class="btncontent" 
                   style="position:relative;top:30px; left: 0px; width: 160px;" runat="server" 
                   Text="SignUp for User" onclick="btnSignupUser_Click"></asp:Button>

    </div>
     </center> 
                </section>
                <!------content-wrap-end------->
            </section>
        </section>
        <!----inner-page-holder-end---->
    </section>
    <!------footer-start-------->
  <%--  <footer>
    	<section id="inner-footer">
        	© Copyright - 2012  WellAware, All Rights Reserved.
        </section>
    </footer>--%>
    <!------footer-end-------->
    </form>   
</body>
</html>