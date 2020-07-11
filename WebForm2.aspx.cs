using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = DropDownList1.SelectedItem.ToString();
            string qry="select* from LMS where eid='" +id+"'";
            SqlConnection con = new SqlConnection("data source=INPF1XNVJKMSSQLSERVERHI; intial catalog=msdb; integrates security=true");
                SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
                GridView1.DataSource = ds.Tables["t1"];
            GridView1.DataBind();

        }
    }
}