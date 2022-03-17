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
    public partial class edit : System.Web.UI.Page
    {
        static string strcon = ConfigurationManager.ConnectionStrings["taskformEntities"].ConnectionString;
        MySqlConnection con = new MySqlConnection(strcon);
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string sql = "select * from task  where id='" + id + "'";
            con.Open();
            MySqlDataAdapter sda = new MySqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            repeater2.DataSource = dt;
            repeater2.DataBind();
            con.Close();
        }
       
        protected void update(object sender, EventArgs e)
        {
            try
            {
                string id = Request.QueryString["id"];
                RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
                string fname = (item.FindControl("fname") as TextBox).Text;
                string laname = (item.FindControl("lname") as TextBox).Text;
                string address = (item.FindControl("address") as TextBox).Text;
                string email = (item.FindControl("email") as TextBox).Text;
                //Repeater dropdown = item.FindControl("cityrptCustomers") as Repeater;
                string city = (item.FindControl("citydrop") as DropDownList).SelectedItem.Value;
                //string city = Request.Form["cityid"];
                string number = (item.FindControl("number") as TextBox).Text;
                string sql = "update task set firstname='" + fname + "' ,lastname='" + laname + "' ,email='"+email+"',address='" + address + "' ,cityid='" + city + "' ,number='" + number + "' where id='" + id + "' ";
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
        protected void ItemBound(object sender, RepeaterItemEventArgs args)
        {
            string id = Request.QueryString["id"];
            string sql1 = "select * from city_fk where cityid=(select cityid from task where id='" + id + "')";
            MySqlDataAdapter sda = new MySqlDataAdapter("select * from city_fk", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (args.Item.ItemType == ListItemType.Item || args.Item.ItemType == ListItemType.AlternatingItem)
            {
                DropDownList drop = (DropDownList)args.Item.FindControl("citydrop");
                int ID = (int)((DataRowView)args.Item.DataItem)["cityid"];
                drop.DataSource = dt;
                drop.DataValueField = "cityid";
                drop.DataTextField = "city";
                drop.SelectedValue = ID.ToString();
                drop.DataBind();
                //Repeater childRepeater = (Repeater)args.Item.FindControl("cityrptCustomers");
                //childRepeater.DataSource = dt;
                //childRepeater.DataBind();
            }
        }
        //protected void childItemBound(object sender, RepeaterItemEventArgs args)
        //{
        //    MySqlDataAdapter sda = new MySqlDataAdapter("select * from city_fk", con);
        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);
        //    if (args.Item.ItemType == ListItemType.Item || args.Item.ItemType == ListItemType.AlternatingItem)
        //    {
        //        //DropDownList childRepeater = (DropDownList)args.Item.FindControl("citydrop");
        //        //int ID = (int)((DataRowView)args.Item.DataItem)["cityid"];
        //        //childRepeater.DataSource = dt;
        //        //childRepeater.DataValueField = "cityid";
        //        //childRepeater.DataTextField = "city";
        //        //childRepeater.SelectedValue = ID.ToString();
        //        //childRepeater.DataBind();
        //    }
        //}


    }
}