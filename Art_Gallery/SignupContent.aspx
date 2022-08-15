<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster1.Master" %>

<script runat="server">



   
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">'
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%@ Import Namespace="System.Data.SqlClient" %>
    <script runat="server">
            
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            //1-Create connection object
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQL\\LocalDB;AttachDbFilename=|DataDirectory|ArtGallery.mdf;Integrated Security=True";

            //2-create insert statment
            // string strInsert = String.Format("INSERT INTO Member VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}')", txtFname.Text, txtLname.Text, rblGender.SelectedValue, txtEmail.Text, txtPhone.Text, ddlCountry.SelectedValue, txtUsename.Text, txtPass.Text);

            string strInsert = String.Format("INSERT INTO Member VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')",txtFname.Text,txtLname.Text,rblGender.SelectedValue,txtEmail.Text,txtPhone.Text,ddlCountry.SelectedValue,txtUsename.Text,txtPass.Text);

            //3-create SQL command
            SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
            try
            {
                //4-open database
                conn.Open();

                //5-execute the sql command
                cmdInsert.ExecuteNonQuery();

                //6-close database
                conn.Close();

                lblMsg.Text = "Welcome " + txtFname.Text + ", Your Account has been Successfully Created!!";
                //7-save user profile picture
                if (fupPic.HasFile)
                    fupPic.SaveAs(Server.MapPath("UserPic") + "\\" + txtUsename.Text + "jpg");
            }
            catch(SqlException error)
            {
                if (error.Number == 2627)
                {
                    lblMsg.Text = "The username" + UserName.Text + " is already used!";
                  
                }
                  else
                        lblMsg.Text = "Sorry! database problem, please try later.";
            }
        }
</script>
    <table class="auto-style60S" class="auto-style1S" style="border-style: none; border-color: #CC0099; background-color: #FFFFFF">
            <tr>
                <td class="auto-style17S" colspan="4">
        <asp:Label ID="label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva" Font-Size="XX-Large" ForeColor="#660066" Text="To Sign Up, Fill In all the Following Fields, Then Click Submit"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style46S">
                    <asp:Label ID="Fname" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="First Name:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style52S">
                    <asp:TextBox ID="txtFname" runat="server" Height="26px" Width="228px" placeholder=" Ex:Somia or Abd Alrahman"></asp:TextBox>
                </td>
                <td class="auto-style10S">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style25S">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="Invalid First name Format" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="([A-Z][a-z]\s[A-Z][a-z])|([A-z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style47S">
                    <asp:Label ID="Lname" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Last Name:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style53S">
                    <asp:TextBox ID="txtLname" runat="server" Height="26px" Width="228px" placeholder=" Ex:Somia or Abd Alrahman"></asp:TextBox>
                </td>
                <td class="auto-style44S">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style45S">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Invalid Last name Format" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="([A-Z][a-z]\s[A-Z][a-z])|([A-z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style48S">
                    <asp:Label ID="Gender" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Gender:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style54S">
                    <asp:RadioButtonList ID="rblGender" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC3399" RepeatDirection="Horizontal" CssClass="auto-style58">
                        <asp:ListItem Selected="True" Value="F">Female</asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style11S">&nbsp;</td>
                <td class="auto-style26S">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style48S">
                    <asp:Label ID="Email" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Email Address:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style54S">
                    <asp:TextBox ID="txtEmail" runat="server" Height="26px" Width="228px" placeholder=" Ex:20195372@fue.edu.eg"></asp:TextBox>
                </td>
                <td class="auto-style11S">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style26S">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style48S">
                    <asp:Label ID="Phone" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Phone number:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style54S">
                    <asp:TextBox ID="txtPhone" runat="server" Height="26px" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style11S">
                    &nbsp;</td>
                <td class="auto-style26S">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style48S">
                    <asp:Label ID="Country" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Country:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style54S">
                    <asp:DropDownList ID="ddlCountry" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" CssClass="auto-style58" Height="42px" Width="264px">
                        <asp:ListItem Selected="True">Egypt</asp:ListItem>
                        <asp:ListItem>saudi</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>Lebanon</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style11S">&nbsp;</td>
                <td class="auto-style26S">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style49S">
                    <asp:Label ID="UserName" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="UserName:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style55S">
                    <asp:TextBox ID="txtUsename" runat="server" Height="26px" Width="228px" placeholder=" Ex:Somia2019"></asp:TextBox>
                </td>
                <td class="auto-style15S">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUsename" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style27S">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtUsename" ErrorMessage="Should be 8 characters at least !" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style48S">
                    <asp:Label ID="Pss" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Password:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style54S">
                    <asp:TextBox ID="txtPass" runat="server" Height="36px" TextMode="Password" Width="261px" CssClass="auto-style59"></asp:TextBox>
                </td>
                <td class="auto-style11S">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPass" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style26S">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style49S">
                    <asp:Label ID="ConfirmPass" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Confirm Password:" Width="192px"></asp:Label>
                </td>
                <td class="auto-style55S">
                    <asp:TextBox ID="txtConfirmPass" runat="server" Height="36px" TextMode="Password" Width="263px" CssClass="auto-style61"></asp:TextBox>
                </td>
                <td class="auto-style15S">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConfirmPass" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style27S">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" ErrorMessage="No matching , Retype !" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style46S">
                    <asp:Label ID="ConfirmPass0" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Upload Profile Pic:" Width="192px" Height="28px"></asp:Label>
                </td>
                <td class="auto-style52S">
                    <asp:FileUpload ID="fupPic" runat="server" Height="43px" CssClass="auto-style62" />
                </td>
                <td class="auto-style10S"></td>
                <td class="auto-style25S"></td>
            </tr>
            <tr>
                <td class="auto-style50S">
                    <asp:Button ID="btnSubmit" CssClass="textL"  runat="server" BorderStyle="Solid" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#993366" OnClick="btnSubmit_Click" Text="Submit" Height="51px" Width="115px" />
                </td>
                <td class="auto-style56S"></td>
                <td class="auto-style20S"></td>
                <td class="auto-style28S"></td>
            </tr>
            <tr>
                <td class="auto-style51S">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style57S"></td>
                <td class="auto-style24S"></td>
                <td class="auto-style29S"></td>
            </tr>
            <tr>
                <td class="auto-style17S" colspan="4">
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Brush Script MT" Font-Size="X-Large" ForeColor="Fuchsia"></asp:Label>
                </td>
            </tr>
            <tr>
                
                <td class="auto-style48S"></td>
                <td class="auto-style54S"></td>
                <td class="auto-style26S"></td>
            </tr>
        </table>

</asp:Content>

