using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;

namespace MyPrototype
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       



        string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Moeedptdb;Integrated Security=True;Pooling=False";
        protected void btnRegister_Click(object sender, EventArgs e)
        {

            string name = txtName.Text;
            string sirname = txtSirName.Text;
            string username = txtUsername.Text;
            string pw = txtPw.Text;
            string email = txtEmail.Text;
            string language = ddlLanguage.Text;

           

            captcha1.ValidateCaptcha(txtCapcha.Text.Trim());
            if (captcha1.UserValidated)
            {




                //save data into table
                if (isExist(username, email))
            {//true
                lblResult.Text = "You are already registered ";

            }
            else
            {
                string query = "insert into users(name,sirname,username,password,email,language) values('" + name + "','" + sirname + "','" + username + "','" + pw + "','" + email + "','" + language + "')";

                SqlConnection con = new SqlConnection(constring);
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                lblResult.Text = "You are registered successfully";
            }

            }
            else
            {

                lblResult.Text = "Enter Correct Captcha Text";
            }


        }


        public Boolean isExist(string username, string email)
        {
            string query = "select * from users where username='" + username + "' or email='"+email+"'";
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query,con);
            da.Fill(dt);
            con.Close();

            if (dt.Rows.Count>0)
            {
                return true;

            }
            return false;

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //cancel now

            Response.Redirect("RegistrationForm.aspx");
        }
    }
}