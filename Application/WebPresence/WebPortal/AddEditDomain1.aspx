<%@ Page Title="" Language="C#" MasterPageFile="~/WebPortal/WebPresence.Master" AutoEventWireup="true" CodeBehind="AddEditDomain1.aspx.cs" Inherits="WebPresence.WebPortal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    

    <style type="text/css">
    .style1
    {
        width: 243px;
    }
    .style2
    {
        width: 285px;
    }
</style>
    
    <link href="../css/styles.css" rel="stylesheet" type="text/css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
    <table  width="800px">
<tr><td colspan="5"   class="ContentTitle">Add/Edit Domain</td></tr>


<tr><td>&nbsp;</td><td class="style1">&nbsp;</td>
    <td class="style2">
        &nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td>&nbsp;</td><td class="style1">Comapany/Website Name :</td>
    <td class="style2">
        <asp:TextBox ID="TextBox1" runat="server" Width="172px" class="inset-board2" ></asp:TextBox>
    </td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td>&nbsp;</td><td class="style1">Website Address :</td><td class="style2">
    <asp:TextBox ID="TextBox2" runat="server" Width="172px" class= "inset-board2"></asp:TextBox>
    </td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td>&nbsp;</td><td class="style1">Keywords :</td><td class="style2">
    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="172px" 
        class="inset-board2" ></asp:TextBox>
    </td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td>&nbsp;</td><td class="style1">&nbsp;</td><td class="style2">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td>&nbsp;</td><td class="style1">&nbsp;</td><td class="style2">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td colspan="5" class="ContentTitle">Website Location(Used for ranking)</td></tr>


<tr><td>&nbsp;</td><td class="style1">&nbsp;</td><td class="style2">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td>&nbsp;</td><td class="style1">Loction :</td><td class="style2">
        <asp:TextBox ID="TextBox4" runat="server" Width="172px" 
        class="inset-board2" ></asp:TextBox>
    </td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td>&nbsp;</td><td class="style1">City :</td><td class="style2">
        <asp:TextBox ID="TextBox6" runat="server" Width="172px" 
        class="inset-board2" ></asp:TextBox>
    </td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td>&nbsp;</td><td class="style1">State :</td><td class="style2">
        <asp:TextBox ID="TextBox5" runat="server" Width="172px" 
        class="inset-board2" ></asp:TextBox>
    </td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td>&nbsp;</td><td class="style1">&nbsp;</td><td class="style2">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td>&nbsp;</td><td class="style1">&nbsp;</td><td class="style2">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>


<tr><td>&nbsp;</td><td class="style1">&nbsp;</td><td class="style2">&nbsp;</td><td>
    <asp:Button ID="btnsave" runat="server" Text="Save" Width="55px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="54px" />
    </td><td>&nbsp;</td></tr>
</table>
</center>
</asp:Content>
