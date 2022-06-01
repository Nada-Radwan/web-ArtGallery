<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster1.Master" AutoEventWireup="true" CodeBehind="LogInContent.aspx.cs" Inherits="Art_Gallery.WebForm3" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">


    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Student.mdf;Integrated Security=True";

            string strSelect = "SELECT * FROM Member " + "WHERE Email = '" + txtEmail.Text + "'AND Password = '" + txtPass.Text + "'";

            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            SqlDataReader reader;

            conn.Open();

            reader = cmdSelect.ExecuteReader();

            if (reader.Read())
                Response.Redirect("~/Home2.aspx");
            else
                Label2.Text = "Not found";

            conn.Close();
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




                    <table class="done">
                        <tr><td class="auto-style2"><p class="toz">Art Gallery</p></td></tr>
                        <tr>
                            <td class="auto-style2">&nbsp;<asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style1" placeholder="Email address" Width="337px" Height="32px"></asp:TextBox>
                                <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)@\w+([-.]\w+)\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtPass" runat="server" Height="32px" CssClass="auto-style1" placeholder=" password" Width="337px"></asp:TextBox>
                                <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPass" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPass" ErrorMessage="RegularExpressionValidator" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[#?!@$%^&*-]).{8,15}$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Button  ID="btnLogin"  CssClass="text" runat="server" Text="Login" PostBackUrl="~/index.html" OnClick="btnLogin_Click" />&nbsp;<br />
                                <asp:Button ID="Button1" runat="server" Text="Log in" />
                            </td>

                        </tr>
                        <tr>

                            <td id="best" class="auto-style2"><a href="forgptten.html">Forrgotten password?</a></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Button ID="btnAccount" runat="server" CssClass="bad" Text="Create New Account" />
                            </td>

                        </tr>
                    </table>

              
           
</asp:Content>
