<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Productdisplay.aspx.cs" Inherits="project.Productdisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="123px" ImageUrl='<%# Eval("Pdt_image") %>' OnCommand="ImageButton1_Command" CommandArgument='<%# Eval("Pdt_id") %>' />
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pdt_name") %>'></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Pdt_image") %>'></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pdt_desc") %>'></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
