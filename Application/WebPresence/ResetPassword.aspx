<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="WellAware.ResetPassword" %>
<%@ Register Src="~/UserControls/PortalCssJs.ascx" TagName="CssJs" TagPrefix="jQuerySupport" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
        <jQuerySupport:CssJs runat="server" ID="jQueryCssJs" />
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <section id="page-holder">
    	<!----inner-page-holder-start---->
    	<section id="inner-page-holder">
        	<header>
            	<img style="margin:0px 10px; float:left;" src="images/WellAwarelogo.png" alt="WellAware Students" /><section class="logo"><img src="images/logo.png" alt="WellAware Students" /></section>                
            </header>
            <section id="wrapLogin">            	
                <!------content-wrap-start------->        
                   <div style="width:345px; padding-top:94px; margin:0 auto;"> 
                       <%--<telerik:RadScriptManager ID="RadScriptManager1" Runat=server></telerik:RadScriptManager>--%>
     <div>
          <table width="100%" style="border: thin solid black; height: 207px;">
            <caption style="border: thin solid black; height: 40px">
                <asp:Label runat="server" ID="Label1" Text="WellAware New Password" Font-Size="Large"></asp:Label></caption>
            <tr>
                <td class="style1">
                    <asp:RequiredFieldValidator ID="rfvNewPwd" runat="server" 
                        ControlToValidate="txtNewPwd" Display="None" 
                        ErrorMessage="Please enter new password." SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvConfirmPwd" runat="server" 
                        ControlToValidate="txtConfirmPwd" Display="None" 
                        ErrorMessage="Please enter confirm password." SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvPassword" runat="server" 
                        ControlToCompare="txtConfirmPwd" ControlToValidate="txtNewPwd" Display="None" 
                        ErrorMessage="Both Password Does not match." SetFocusOnError="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="padding-left:25px">
                    &nbsp;&nbsp; Enter New Password Here:</td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    <asp:TextBox ID="txtNewPwd" TextMode="Password" runat="server" Width="266px" Height="20px" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ></asp:TextBox>
                </td>
           
           
           </tr>
        <tr>
                <td style="padding-left:25px">
                    &nbsp;&nbsp; Confirm Password Here:</td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    <asp:TextBox ID="txtConfirmPwd" TextMode="Password" runat="server" Width="266px" Height="20px" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ></asp:TextBox>
                </td>
           
           
           </tr>
            <tr>
                <td style="padding-left:25px">
                    <table border="1">
                        <tr>
                            <td>
                                <asp:Button ID="btnSetPassword" runat="server" Text="Confirm" 
                                    Width="67px" onclick="btnSetPassword_Click"  CssClass="btn_button" />
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="lblEmailID" runat="server" Visible="False"></asp:Label>
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
