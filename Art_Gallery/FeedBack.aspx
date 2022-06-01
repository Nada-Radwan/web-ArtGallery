<%@ Page Title="" Language="C#" MasterPageFile="~/UserLogin.Master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
             <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#660033" Text="FeedBack :"></asp:Label>
             <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2" Height="140px"></asp:TextBox>
             <asp:Button ID="Button1" runat="server" Text="Submit" />
        </p>

</asp:Content>

