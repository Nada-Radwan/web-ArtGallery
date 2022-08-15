<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="UploadProduct.aspx.cs" Inherits="UploadProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style64 {
            width: 100%;
        }

* {
    box-sizing: border-box
}

        .auto-style65 {
            height: 26px;
            width: 181px;
        }
        .auto-style66 {
            width: 181px;
            height: 68px;
        }
        .auto-style67 {
            width: 181px;
        }
        .auto-style68 {
            width: 181px;
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style64">
        <tr>
                <td class="auto-style65">
                    <asp:Label ID="lblPid0" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Product ID:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style52S">
                    <asp:TextBox ID="txtPid" runat="server" Height="26px" Width="221px" placeholder=" Ex:1000"></asp:TextBox>
                </td>
                <td class="auto-style10S">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPid" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style25S">
                    &nbsp;</td>
            </tr>
        <tr>
                <td class="auto-style66">
                    <asp:Label ID="lblPname" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Product Name:" Width="175px"></asp:Label>
                </td>
                <td class="auto-style53S">
                    <asp:TextBox ID="txtpname" runat="server" Height="26px" Width="228px" placeholder=" Ex:Painting"></asp:TextBox>
                </td>
                <td class="auto-style44S">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpname" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style45S">
                </td>
            </tr>
        <tr>
                <td class="auto-style67">
                    <asp:Label ID="Country" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Category:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style54S">
                    <asp:DropDownList ID="ddlcat" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" CssClass="auto-style58" Height="42px" Width="264px">
                        <asp:ListItem Selected="True">Nature paintings</asp:ListItem>
                        <asp:ListItem>Gradual Art </asp:ListItem>
                        <asp:ListItem>Islamic</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style11S">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlcat" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style26S">&nbsp;</td>
            </tr>
        <tr>
                <td class="auto-style68">
                    <asp:Label ID="lblprice" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Price:" Width="114px"></asp:Label>
                </td>
                <td class="auto-style55S">
                    <asp:TextBox ID="txtprice" runat="server" Height="26px" Width="228px" placeholder=" Ex:200 EP"></asp:TextBox>
                </td>
                <td class="auto-style15S">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtprice" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style27S">
                    &nbsp;</td>
            </tr>
        <tr>
                <td class="auto-style67">
                    <asp:Label ID="lblQu" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Quantity:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style54S">
                    <asp:TextBox ID="txtQu" runat="server" Height="36px" TextMode="Number" Width="261px" CssClass="auto-style59"></asp:TextBox>
                </td>
                <td class="auto-style11S">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtQu" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style26S">
                    &nbsp;</td>
            </tr>
        <tr>
                <td class="auto-style68">
                    <asp:Label ID="lblPphoto" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Upload photo:" Width="192px" Height="28px"></asp:Label>
                </td>
                <td class="auto-style55S">
                    <asp:FileUpload ID="pPhoto" runat="server" Height="43px" CssClass="auto-style62" />
                </td>
                <td class="auto-style15S">
                    &nbsp;</td>
                <td class="auto-style27S">
                    &nbsp;</td>
            </tr>
        <tr>
                <td class="auto-style68">
                    <asp:Label ID="lblPd" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Description:" Width="114px"></asp:Label>
                </td>
                <td class="auto-style55S">
                    <asp:TextBox ID="txtPd" runat="server" Height="26px" Width="228px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style15S">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPd" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style27S">
                    &nbsp;</td>
            </tr>
        <tr>
                <td class="auto-style68">
                    <asp:Button ID="BtnUploadP" runat="server" Font-Names="arial, medium" ForeColor="#993366" Height="53px" Text="Upload" Width="118px" BorderColor="Black" BorderStyle="Solid" OnClick="BtnUploadP_Click" />
                </td>
                <td class="auto-style55S">
                    <asp:Label ID="lblMsgp" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Brush Script MT" Font-Size="X-Large" ForeColor="Fuchsia"></asp:Label>
                </td>
                <td class="auto-style15S">
                    &nbsp;</td>
                <td class="auto-style27S">
                    &nbsp;</td>
            </tr>
        <tr>
            <td class="auto-style67">
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

