<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebPresence.Login" %>
<%@ Register Src="~/UserControls/PortalCssJs.ascx" TagName="CssJs" TagPrefix="jQuerySupport" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>WebPresence Login</title>
        <jQuerySupport:CssJs runat="server" ID="jQueryCssJs" />
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
       <form id="form1" runat="server">
	<section id="page-holder">
    	<!----inner-page-holder-start---->
    	<section id="inner-page-holder">
        	<header>
            	<section class="logo"><img src="images/logo.png" alt="WebPresence " /></section> </header></section>       
                <section id="wrapLogin"><!------content-wrap-start-------><div style="width:345px; padding-top:94px; margin:0 auto;"> 
     <%--<telerik:RadScriptManager ID="RadScriptManager1" Runat=server></telerik:RadScriptManager>--%>
     <div>
        <table width="100%"  style="border:thin solid black; padding-bottom:9px;">
         <caption style="border:thin solid black;height:40px">  <asp:Label runat=server 
                 ID="Label1" Text="Login To WebPresence" Font-Size="Large" CssClass="hdng_top"></asp:Label></caption>
           <tr>
           <td colspan=2 height=20px></td>
           </tr>
            <tr>
                <td style="text-align:left;padding-left:55px;">
                <asp:Label runat="server" ID="lblemail" Text="Email Id:"></asp:Label>
                </td>
                <td width="60%">
                    <asp:RequiredFieldValidator ID="rfvemail" ErrorMessage="Please enter valid email id" 
                        runat="server" ControlToValidate="txtuserid" ValidationGroup="Login" 
                        Display="None"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revemail" runat="server" 
                        ErrorMessage="Enter a valid Email Id" ControlToValidate="txtuserid" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="Login" Display="None"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding-left:50px; text-align:center;">
                    <asp:TextBox ID="txtuserid" runat="server" Width="266px" class="inset-board-login" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:left;padding-left:55px;">
                   <asp:Label runat="server" ID="lblpassword" Text="Password:"></asp:Label>
                &nbsp;</td>
                <td width="60%">
                    <asp:RequiredFieldValidator ID="rfvpassword" ErrorMessage="Please enter valid password." 
                        runat="server" ControlToValidate="txtpassword" ValidationGroup="Login" 
                        Display="None"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center; padding-left:50px;">
                    <asp:TextBox ID="txtpassword" runat="server" Width="266px" TextMode="Password" class="inset-board-login"></asp:TextBox>
                </td>
            </tr>
        <tr>
       <td colspan=2 align="right">
           &nbsp;</td>
        </tr>
        <tr>
       <td colspan=2 style="padding-left:50px">
           <asp:Label ID="lblFeedback" runat="server" CssClass="feedback_failure"></asp:Label>
            </td>
        </tr>
        <tr>
       <%-- <td width="50%" class="frgt-pswrd">--%>
        <td width="50%" class="login-btn" style="padding-left:58px;">
         <asp:Button ID="btnlogin" runat="server" Text="Login" ValidationGroup="Login"  CssClass="btn_button"  onclick="btnlogin_Click" />
        </td>
        <td width="50%" style="padding-left:15px;">
       <a href="ForgotPassword.aspx">Forgot Password</a>
        </td>
        </tr>
        </table>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ShowMessageBox="True" ShowSummary="False" ValidationGroup="Login" />


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
