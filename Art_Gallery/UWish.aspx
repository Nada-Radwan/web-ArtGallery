<%@ Page Title="" Language="C#" MasterPageFile="~/UserLogin.Master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#660033" Text="Description :"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2" Height="140px"></asp:TextBox>
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style1" ForeColor="#CC0066" Height="57px" />
    <asp:Button ID="Button1" runat="server" Text="Submit" />
</asp:Content>

