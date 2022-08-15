using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UploadProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnUploadP_Click(object sender, EventArgs e)
    {
        //1-Create connection object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|ArtGallery.mdf;Integrated Security=True";
        //2-create insert statment
        // string strInsert = String.Format("INSERT INTO Member VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}')", txtFname.Text, txtLname.Text, rblGender.SelectedValue, txtEmail.Text, txtPhone.Text, ddlCountry.SelectedValue, txtUsename.Text, txtPass.Text);

        string strInsert = String.Format("INSERT INTO Product VALUES('{0}','{1}','{2}','{3}','{4}')", txtPid.Text, txtpname.Text, ddlcat.SelectedValue ,txtprice.Text, txtQu.Text, txtPd.Text) ;

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

            lblMsgp.Text = "Uploaded successfully ^^ ";
            //7-save user profile picture
            if (pPhoto.HasFile)
                pPhoto.SaveAs(Server.MapPath("product") + "\\" + txtpname.Text + ".jpg");
        }
        catch (SqlException error)
        {
            if (error.Number == 2627)
            {
                lblMsgp.Text = "The username" + txtPid.Text + " is already used!";

            }
            else
                lblMsgp.Text = "Sorry! database problem, please try later.";
        }
    }
}
