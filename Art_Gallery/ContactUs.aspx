<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster1.Master" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">

        protected void BtnUploadP_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|ArtGallery.mdf;Integrated Security=True";
            //2-create insert statment
            // string strInsert = String.Format("INSERT INTO Member VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}')", txtFname.Text, txtLname.Text, rblGender.SelectedValue, txtEmail.Text, txtPhone.Text, ddlCountry.SelectedValue, txtUsename.Text, txtPass.Text);

            string strInsert = String.Format("INSERT INTO Contacts VALUES('{0}','{1}','{2}','{3}')", Cnametxt.Text, Cpntxt.Text,Cemailtxt.Text, Cmsgtxt.Text) ;

            //3-create SQL command
            SqlCommand cmdInsert = new SqlCommand(strInsert, conn);

            //4-open database
            try
            {
                conn.Open();

                //5-execute the sql command
                cmdInsert.ExecuteNonQuery();

                //6-close database
                conn.Close();

                lblMsgC.Text = "Thank you! ^^ ";
                //7-save user profile picture
            }
            catch (Exception error)
            {

                lblMsgC.Text = "Sorry! database problem, please try later.";
            }
        }

    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style63 {
            width: 233px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1H">
        <tr>
            <td class="auto-style63">
                <asp:Label ID="Cname" runat="server" Text="Your name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Cnametxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style63">
                <asp:Label ID="Cpn" runat="server" Text="Your Phone Number:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Cpntxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style63">
                <asp:Label ID="Cname0" runat="server" Text="Your Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Cemailtxt" runat="server" TextMode="Email" Width="364px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style63">
                <asp:Label ID="Cname1" runat="server" Text="Your Message:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Cmsgtxt" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style63">
                    <asp:Button ID="BtnUploadC" runat="server" Font-Names="arial, medium" ForeColor="#993366" Height="53px" Text="Send" Width="118px" BorderColor="Black" BorderStyle="Solid" OnClick="BtnUploadP_Click" />
                </td>
            <td>
                    <asp:Label ID="lblMsgC" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Brush Script MT" Font-Size="X-Large" ForeColor="Fuchsia"></asp:Label>
                </td>
        </tr>
    </table>
</asp:Content>

