//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace WebApp1
//{
//    public partial class WebForm8 : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }

//        protected void Button1_Click(object sender, EventArgs e)
//        { 
//            {
//                for (int i = 0; i < GridView1.Rows.Count; i++)
//                {
//                    string id = GridView1.Rows[i].Cells[0].Text;
//                    CheckBox c1 = (CheckBox)GridView1.Rows[i].Cells[5].FindControl("CheckBox1");
//                    string qry;
//                    if (c1.Checked == true)
//                        qry = "update lms set status='Approved' where eid='" + id + "'";
//                    else
//                        qry = "update lms set status='Rejected' where eid='" + id + "'";



//                    SqlConnection con = new SqlConnection("data source = IBM-DBS-001 ; initial catalog = db11; integrated security = true");
//                    con.Open();
//                    SqlCommand cmd = new SqlCommand(qry, con);
//                    cmd.ExecuteNonQuery();
//                    con.Close();


//                }


//                Response.Write("Leave table updated");
//            }

//    internal class SqlConnection
//    {
//        private string v;

//        public SqlConnection(string v)
//        {
//            this.v = v;
//        }
//    }
//}