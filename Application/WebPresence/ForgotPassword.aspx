<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs"
    Inherits="WebPresence.ForgotPassword" %>

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
                <asp:Label runat="server" ID="Label1" Text="WebPresence Forgot Password" Font-Size="Large"></asp:Label></caption>
            <tr>
                <td class="style1">
                </td>
            </tr>
            <tr>
                <td >
                    &nbsp;&nbsp; Enter your email id, we will send a link to your mentioned email :</td>
            </tr>
            <tr>
                <td align="center" class="style1">
                <asp:RequiredFieldValidator ID="rfvemail" runat="server" 
                  Display="None"      ErrorMessage="Please Enter Your Email Id" ControlToValidate="txtuserid" 
                    ValidationGroup="RercoverPassword"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revemail" runat="server" 
                        ErrorMessage="Enter a valid EmailId" ControlToValidate="txtuserid" 
                       ValidationGroup="RercoverPassword" Display="None" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server" Visible="False" ForeColor="Red"></asp:Label>
                    <asp:TextBox ID="txtuserid" runat="server" Width="266px" Height="20px" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ></asp:TextBox>
                </td>
           
           
           </tr>
        
            <tr>
                <td class="style1">
                    &nbsp;&nbsp; Click on that link and you can change your password.&nbsp;</td>
           
           
           </tr>
        
            <tr>
                <td class="style1">
                    <table border="1">
                        <tr>
                            <td style="width:50%;">
                                <asp:Button ID="btnrecoverpassword" runat="server" Text="Send" 
                                    ValidationGroup="RercoverPassword" 
                                    Width="67px" onclick="btnrecoverpassword_Click"  CssClass="btn_button" />
                            </td>
                            <td>
                                <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn_button" 
                                    CausesValidation="False" PostBackUrl="~/Login.aspx" 
                                    onclick="btncancel_Click"  />
                            </td>
                        </tr>
                    </table>
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
