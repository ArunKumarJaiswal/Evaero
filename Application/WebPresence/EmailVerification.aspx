<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmailVerification.aspx.cs" Inherits="WebPresence.EmailVerification" %>

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
            </header>
            <section id="wrapLogin">            	
                <!------content-wrap-start------->        
                   <div style="width:345px; padding-top:94px; margin:0 auto;"> 
     <%--<telerik:RadScriptManager ID="RadScriptManager1" Runat=server></telerik:RadScriptManager>--%>
     <div>
          <table width="100%" style="border: thin solid black; height: 207px;">
            <caption style="border: thin solid black; height: 40px">
                <asp:Label runat="server" ID="Label1" Text="WebPresence Email Verification" Font-Size="Large"></asp:Label></caption>
            <tr>
                <td width="25%">
                    &nbsp;</td>
                <td width="25%">
                    &nbsp;</td>
                <td width="25%">
                    &nbsp;</td>
                <td width="25%">
                    &nbsp;</td>
            </tr>
            <tr id="trSuccess" runat="server" visible="false">
                <td colspan="4">
                    Your email has been been verified successfully. Login <a href="Login.aspx">Here</a>.</td>
            </tr>
            <tr id="trError" runat="server" visible="false">
                <td colspan="4">
                    Sorry! your email has not been verified. Please try again!</td>
            </tr>
            <tr id="trUnauthorized" runat="server" visible="false">
                <td colspan="4">
                    Unauthorized access!</td>
            </tr>
            <tr>
                <td width="25%">
                    &nbsp;</td>
                <td width="25%">
                    &nbsp;</td>
                <td width="25%">
                    &nbsp;</td>
                <td width="25%">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
         </div>
                </section>
                <!------content-wrap-end------->
            </section>
            <div class="clear"></div>
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
