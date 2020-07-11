using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s1, s2, s3, s4, s5;
            s1 = TextBox1.Text;
            s2 = TextBox2.Text;
            s3 = TextBox3.Text;
            s4 = TextBox4.Text;
            s5 = TextBox5.Text;
                con.Open();
            cmd.Parameters.AddWithValue("@p1", int.Parse(s1));





        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}