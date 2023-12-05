<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminreg.aspx.cs" Inherits="project.Adminreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 41px;
    }
    .auto-style2 {
        width: 403px;
    }
    .auto-style3 {
        height: 41px;
        width: 403px;
    }
        .auto-style4 {
            width: 403px;
            height: 38px;
        }
        .auto-style5 {
            height: 38px;
        }
        .auto-style6 {
            width: 403px;
            height: 24px;
        }
        .auto-style7 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style1">
            <asp:Label runat="server" Font-Size="Large" Text="Name"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="135px"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the name" Font-Size="Large"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style7"></td>
        <td class="auto-style7"></td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style5">
            <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Email"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="131px"></asp:TextBox>
        </td>
        <td class="auto-style5">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Incorrect" Font-Size="Large" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Phone number"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="131px"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter 10 digits" Font-Size="Large" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Username"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Height="33px" Width="130px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Username is incorrect" Font-Size="Large"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Height="29px" Width="134px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="Confirm Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" Height="28px" Width="140px"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Password is incorrect" Font-Size="Large"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Font-Size="Large" Height="36px" Text="Register" Width="98px" OnClick="Button1_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
