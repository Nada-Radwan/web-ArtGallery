<%@ Page Title="" Language="C#" MasterPageFile="~/UserLogin.Master" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|ArtGallery.mdf;Integrated Security=True";
            //2-create insert statment
            // string strInsert = String.Format("INSERT INTO Member VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}')", txtFname.Text, txtLname.Text, rblGender.SelectedValue, txtEmail.Text, txtPhone.Text, ddlCountry.SelectedValue, txtUsename.Text, txtPass.Text);

            string strInsert = String.Format("INSERT INTO Feedback VALUES('{0}')", TextBox2.Text) ;

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

                lblMsgF.Text = "Thank you! ^^ ";
                //7-save user profile picture
            }
            catch (Exception error)
            {

                lblMsgF.Text = "Sorry! database problem, please try later.";
            }
        }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
             <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#660033" Text="FeedBack :"></asp:Label>
             <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2" Height="140px"></asp:TextBox>
             <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </p>
    <p>
                    <asp:Label ID="lblMsgF" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Brush Script MT" Font-Size="X-Large" ForeColor="Fuchsia"></asp:Label>
        </p>

</asp:Content>

