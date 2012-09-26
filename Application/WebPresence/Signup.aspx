<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebPresence.Signup" %>

<%@ Register Src="~/UserControls/PortalCssJs.ascx" TagName="CssJs" TagPrefix="jQuerySupport" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
    .style2
    {
        height: 20px;
    }
    .style3
    {
        height: 21px;
    }
    .style4
    {
        height: 22px;
    }
    .style5
    {
        height: 23px;
    }
    .style6
    {
        width: 174px;
    }
    .style7
    {
        width: 91px;
    }
    </style>

<jQuerySupport:CssJs runat="server" ID="CssJs1" />
<head id="Head1" runat="server">
    <title>WebPresence SignUp</title>
    <jQuerySupport:CssJs runat="server" ID="jQueryCssJs" />
    <link href="css/styles.css" rel="stylesheet" type="text/css" />

      <link href="<%=Page.ResolveUrl("~/css/redmond/jquery-ui-1.8.23.custom.css")%>" rel="stylesheet" type="text/css" />
    <link href="<%=Page.ResolveUrl("~/css/DefaultText.css")%>" rel="stylesheet" type="text/css" />
    <link href="<%=Page.ResolveUrl("~/css/tooltip.css")%>" rel="stylesheet" type="text/css" />
    <link href="<%=Page.ResolveUrl("~/css/ui.jqgrid.css")%>" rel="stylesheet" type="text/css" />
    <link href="<%=Page.ResolveUrl("~/css/Validation.css")%>" rel="stylesheet" type="text/css" />

    <script src="<%=Page.ResolveUrl("~/js/jquery-1.8.0.min.js")%>" type="text/javascript"></script>
    <script src="<%=Page.ResolveUrl("~/js/jquery-ui-1.8.23.custom.min.js")%>" type="text/javascript"></script>
    <script src="<%=Page.ResolveUrl("~/js/tooltip.js")%>" type="text/javascript"></script>
    <script src="<%=Page.ResolveUrl("~/js/Common.js")%>" type="text/javascript"></script>
 
    <script src="<%=Page.ResolveUrl("~/js/jquery.maskedinput-1.3.min.js")%>" type="text/javascript"></script>
    <script src="<%=Page.ResolveUrl("~/js/jquery-ui-timepicker-addon.js")%>" type="text/javascript"></script>


      <script type="text/javascript">
          $(document).ready(function () {

//              $("#txtConfirmPassword").blur(function () {
//                  var password = $("#txtPassword").val();
//                  var confirmpass = $("#txtConfirmPassword").val();
//              
//                  if (password == confirmpass) {
//                      return false;
//                  }


//              });

          });

          function CheckValid() {

              //            $("[id$='btnAdd']").click(function () {
              if (IsFormValid()) {

                  return true;
              }
              else {

                  return false;
              }
                
          }


    </script>
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
                   <div style="width:755px; padding-top:20px; margin:0 auto;"> 
                       <%--<telerik:RadScriptManager ID="RadScriptManager1" Runat=server></telerik:RadScriptManager>--%>
     <div>
              <table style="width: 90%">
            <tr>
                <td class="style2">
                </td>
                <td class="style3">
                </td>
                <td class="style4">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <h1 class="table_hdng">
                        Get WebPresence - Sign Up Now
                    </h1>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" class="ContentTitle">
                    Basic Information
                </td>
            </tr>
            <tr>
                <td class="style5" colspan="4">
          <asp:ValidationSummary ID="vsSummary" runat="server" ShowMessageBox="True" 
                    ShowSummary="False" ForeColor="#CC0000" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <table class="tableClassStudent" style="width:100%;">
                        <tr>
                            <td><asp:HiddenField ID="usertupeId" Value="1" runat="server" />
                                First Name:</td>
                            <td>
                    <asp:TextBox ID="txtFirstName"  CssClass="inset-board2 banner-select required AlphabeticOnly" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                Last Name:</td>
                            <td>
                    <asp:TextBox ID="txtLastName"  CssClass="inset-board2 banner-select required AlphabeticOnly" runat="server" 
                       ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Contact No.</td>
                            <td>
                    <asp:TextBox ID="TexContact"  CssClass="inset-board2 banner-select required NumericOnly"  runat="server"></asp:TextBox>
                            </td>
                            <td>
                                Addrress:</td>
                            <td>
                    <asp:TextBox ID="TexAddrress"  CssClass="inset-board2 banner-select required " runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                City:</td>
                            <td>
                    <asp:TextBox ID="TextCity"  CssClass="inset-board2 banner-select required AlphabeticOnly" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                State:</td>
                            <td>
                    <asp:DropDownList ID="DropDownState" runat="server" CssClass="select_new banner-select" 
                                    Width="222px">
                        <asp:ListItem Value="--Select--" Text="--Select--" />
                                    <asp:ListItem Value="AL" Text="Alabama" />
                                       <asp:ListItem Value="AK" Text="Alaska" />
                                       <asp:ListItem Value="AZ" Text="Arizona" />
                                       <asp:ListItem Value="AR" Text="Arkansas" />
                                       <asp:ListItem Value="CA" Text="California" />
                                       <asp:ListItem Value="CO" Text="Colorado" />
                                       <asp:ListItem Value="CT" Text="Connecticut" />
                                       <asp:ListItem Value="DC" Text="District of Columbia" />
                                       <asp:ListItem Value="DE" Text="Delaware" />
                                       <asp:ListItem Value="FL" Text="Florida" />
                                       <asp:ListItem Value="GA" Text="Georgia" />
                                       <asp:ListItem Value="HI" Text="Hawaii" />
                                       <asp:ListItem Value="ID" Text="Idaho" />
                                       <asp:ListItem Value="IL" Text="Illinois" />
                                       <asp:ListItem Value="IN" Text="Indiana" />
                                       <asp:ListItem Value="IA" Text="Iowa" />
                                       <asp:ListItem Value="KS" Text="Kansas" />
                                       <asp:ListItem Value="KY" Text="Kentucky" />
                                       <asp:ListItem Value="LA" Text="Louisiana" />
                                       <asp:ListItem Value="ME" Text="Maine" />
                                       <asp:ListItem Value="MD" Text="Maryland" />
                                       <asp:ListItem Value="MA" Text="Massachusetts" />
                                       <asp:ListItem Value="MI" Text="Michigan" />
                                       <asp:ListItem Value="MN" Text="Minnesota" />
                                       <asp:ListItem Value="MS" Text="Mississippi" />
                                       <asp:ListItem Value="MO" Text="Missouri" />
                                       <asp:ListItem Value="MT" Text="Montana" />
                                       <asp:ListItem Value="NE" Text="Nebraska" />
                                       <asp:ListItem Value="NV" Text="Nevada" />
                                       <asp:ListItem Value="NH" Text="New Hampshire" />
                                       <asp:ListItem Value="NJ" Text="New Jersey" />
                                       <asp:ListItem Value="NM" Text="New Mexico" />
                                       <asp:ListItem Value="NY" Text="New York" />
                                       <asp:ListItem Value="NC" Text="North Carolina" />
                                       <asp:ListItem Value="ND" Text="North Dakota" />
                                       <asp:ListItem Value="OH" Text="Ohio" />
                                       <asp:ListItem Value="OK" Text="Oklahoma" />
                                       <asp:ListItem Value="OR" Text="Oregon" />
                                       <asp:ListItem Value="PA" Text="Pennsylvania" />
                                       <asp:ListItem Value="RI" Text="Rhode Island" />
                                       <asp:ListItem Value="SC" Text="South Carolina" />
                                       <asp:ListItem Value="SD" Text="South Dakota" />
                                       <asp:ListItem Value="TN" Text="Tennessee" />
                                       <asp:ListItem Value="TX" Text="Texas" />
                                       <asp:ListItem Value="UT" Text="Utah" />
                                       <asp:ListItem Value="VT" Text="Vermont" />
                                       <asp:ListItem Value="VA" Text="Virginia" />
                                       <asp:ListItem Value="WA" Text="Washington" />
                                       <asp:ListItem Value="WV" Text="West Virginia" />
                                       <asp:ListItem Value="WI" Text="Wisconsin" />
                                       <asp:ListItem Value="WY" Text="Wyoming" />
                    </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Postal code:</td>
                            <td>
                            <asp:TextBox  CssClass="inset-board2 banner-select required AlphaNumericOnly" ID="TexPostal" runat="server"></asp:TextBox>
                                <%--<asp:TextBox ID="TexState"  CssClass="inset-board2 banner-select required AlphabeticOnly" runat="server"></asp:TextBox>--%>
                            </td>
                            <td>
                                </td>
                            <td>
                    
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="ContentTitle" colspan="4">
                    Login Information
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <table style="width:100%;" class="tableClassStudent"> 
                        <tr>
                            <td>
                                Email ID:</td>
                            <td>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="inset-board2 banner-select required ValidEmail"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Password:</td>
                            <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" 
                        CssClass="inset-board2 banner-select required"></asp:TextBox>
                            </td>
                            <td>
                                Confirm Password:</td>
                            <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" 
                        CssClass="inset-board2 banner-select required"></asp:TextBox>
                            </td>
                        </tr>
                        </table>
                </td>
            </tr>
            <tr>
                <td colspan="4">
           <asp:Label ID="lblEmailExists" runat="server" CssClass="feedback_failure" 
                        Visible="False">Email already exists! Please try again with another email id.</asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <table style="width:100%;">
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style7">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style7">
                    <asp:Button ID="btnSave" runat="server" Text="Save" Width="56px" 
                   OnClientClick="return CheckValid();"      onclick="btnSave_Click" CssClass="btn_button" />
                            </td>
                            <td>
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel"  
                        CausesValidation="False"  PostBackUrl="TrialAccount.aspx" 
                        CssClass="btn_button"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style7">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
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
