<%@ Page Title="" Language="C#" MasterPageFile="~/WebPortal/WebPresence.Master" AutoEventWireup="true" CodeBehind="AddEditDomain.aspx.cs" Inherits="WebPresence.WebPortal.WebForm1" %>
<%@ Register Src="~/UserControls/PortalCssJs.ascx" TagName="CssJs" TagPrefix="jQuerySupport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    

    <style type="text/css">
        .style3
        {
            width: 191px;
        }
        .style4
        {
        width: 76px;
    }
        .style5
        {
        width: 295px;
    }
        .style6
        {
            width: 97px;
        }
    </style>
<jQuerySupport:CssJs runat="server" ID="CssJs1" />
    
    <link href="../css/styles.css" rel="stylesheet" type="text/css" />

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
        function CheckValid() {
            if (IsFormValid()) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table  width="100%" style="margin:0px auto;">
<tr><td colspan="5"   class="ContentTitle" align="left">Add/Edit Domain</td></tr>


<tr><td colspan="5">
          &nbsp;</td></tr>


<tr><td colspan="5" align="left">
    <table class="tableClassStudent" style="width:100%;">
        <tr>
            <td class="style3">
                Company/Website Name :</td>
            <td>
        <asp:TextBox ID="txtwebname" runat="server" class="inset-board2 banner-select required" ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Website Address :</td>
            <td>
    <asp:TextBox ID="txtWebAddress" runat="server"  class="inset-board2 banner-select required"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Keywords :</td>
            <td>
    <asp:TextBox ID="txtKeywords" runat="server" 
         class="inset-board2 banner-select required" ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </td></tr>


<tr><td class="style5">&nbsp;</td><td class="style6">&nbsp;</td><td class="style4">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td colspan="5" class="ContentTitle" align="left">Website Location(Used for ranking)</td></tr>


<tr><td colspan="5">&nbsp;</td></tr>


<tr><td colspan="5" align="left">
    <table style="width:100%;" class="tableClassStudent" >
        <tr>
            <td>
                Location :</td>
            <td>
        <asp:TextBox ID="txtLocation" runat="server" 
        class="inset-board2 banner-select required" ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                City :</td>
            <td>
        <asp:TextBox ID="txtCity" runat="server" 
        class="inset-board2 banner-select required" ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                State :</td>
            <td>
        <asp:TextBox ID="txtState" runat="server" 
         class="inset-board2 banner-select required"  ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </td></tr>


<tr><td class="style5">&nbsp;</td><td class="style6">&nbsp;</td><td class="style4">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td class="style5">&nbsp;</td><td class="style6">
    <asp:Button ID="btnsave" runat="server" Text="Save" Width="55px"  
        OnClientClick="CheckValid(); return false" CssClass="btn_button" onclick="btnsave_Click" 
        />
    </td><td class="style4">
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="54px"   CausesValidation="False"   CssClass="btn_button"/>
    </td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td class="style5">&nbsp;</td><td class="style6">&nbsp;</td><td class="style4">
        &nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td class="style5">&nbsp;</td><td class="style6">
    &nbsp;</td><td class="style4">
        &nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td class="style5">&nbsp;</td><td class="style6">&nbsp;</td><td class="style4">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td class="style5">&nbsp;</td><td class="style6">&nbsp;</td><td class="style4">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td class="style5">&nbsp;</td><td class="style6">&nbsp;</td><td class="style4">&nbsp;</td><td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td><td>&nbsp;</td></tr>
</table>

</asp:Content>
