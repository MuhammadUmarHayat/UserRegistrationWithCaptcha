using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MyPrototype
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string pw = txtPw.Text;
            if (isExist(username,pw))
            {
                Session["username"] = username;
                Response.Redirect("Home.aspx");//navigate to home
            }
          else
                {
                lblResult.Text = "user name and or password is not correct!";

            }

        }
        string constring = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Moeedptdb;Integrated Security=True;Pooling=False";

        public Boolean isExist(string username, string password)
        {
            string query = "select * from users where username='" + username + "' and  password='" + password + "'";
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)
            {
                return true;

            }
            return false;

        }
    }
}