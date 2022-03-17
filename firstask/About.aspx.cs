using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;

namespace firstask
{
    public partial class About : System.Web.UI.Page
    {
        static string strcon = ConfigurationManager.ConnectionStrings["taskformEntities"].ConnectionString;
        MySqlConnection con = new MySqlConnection(strcon);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                GetStudentList();
            }

            string sql = "select t.id, t.firstname,t.lastname,t.email,t.address,t.cityid,c.city,t.number from task t join city_fk c on t.cityid=c.cityid ORDER BY t.id ASC ";
            con.Open();
            MySqlCommand cmd = new MySqlCommand(sql, con);
            MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            repeater1.DataSource = dt;
            repeater1.DataBind();
            con.Close();
        }
        protected void submit(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["taskformEntities"].ConnectionString;
            MySqlConnection con = new MySqlConnection(strcon);
            try
            {
                string sql = "insert into task(firstname ,lastname,email ,address ,cityid ,number)values('" + fname.Text + "','" + lname.Text + "','" + email.Text + "','" + address.Text + "','" + Request.Form["cityid"] + "','" + number.Text + "')";
                con.Open();
                MySqlCommand cmd = new MySqlCommand(sql, con);
                int status = cmd.ExecuteNonQuery();
                if (status > 0)
                {
                    Response.Redirect("About.aspx");
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public void GetStudentList()
        {
            con.Open();
            MySqlDataAdapter sda = new MySqlDataAdapter("select * from city_fk", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cityList.DataSource = dt;
            cityList.DataBind();
            con.Close();

        }
    }
}
