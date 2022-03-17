//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Data.SqlClient;
//using System.Configuration;
//using System.Data;
//using MySql.Data.MySqlClient;

//namespace firstask
//{
//    public partial class _Default : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            string strcon = ConfigurationManager.ConnectionStrings["taskformEntities"].ConnectionString;
//            MySqlConnection con = new MySqlConnection(strcon);
//            string sql = "select * from task";
//            con.Open();
//            MySqlDataAdapter sda = new MySqlDataAdapter(sql,con);
//            DataTable dt=new DataTable();
//            sda.Fill(dt);
//            repeater1.DataSource = dt;
//            repeater1.DataBind();
//            con.Close();
//        }

//        protected void submit(object sender, EventArgs e)
//        {
//            string strcon = ConfigurationManager.ConnectionStrings["taskformEntities"].ConnectionString;
//            MySqlConnection con = new MySqlConnection(strcon);
//            try
//            {
//                string sql = "insert into task(firstname ,lastname ,address ,city ,number)values('" + fname.Text + "','" + lname.Text + "','" + address.Text + "','" + city.SelectedValue + "','" + number.Text + "')";
//                con.Open();
//                MySqlCommand cmd = new MySqlCommand(sql, con);
//                int status=cmd.ExecuteNonQuery();
//                if (status > 0)
//                {
//                    Response.Redirect("Default.aspx");
//                }
//                else 
//                {
//                    Response.Redirect("About.aspx");
//                }

//            }
//            catch (Exception ex)
//            {
//                Console.WriteLine(ex.Message);
//            }
//            finally
//            {
//                con.Close();
//            }
//        }

        
//    }
//}
