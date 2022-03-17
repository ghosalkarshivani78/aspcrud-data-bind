using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;
namespace firstask
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public string deleteperson(string id)
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["taskformEntities"].ConnectionString;
                MySqlConnection con = new MySqlConnection(strcon);
                string sql = "delete from task where id='" + id + "'";
                con.Open();
                MySqlCommand cmd = new MySqlCommand(sql, con);
                int status = cmd.ExecuteNonQuery();
                if (status > 0)
                {
                    return "success";
                }
                else
                {
                    return "Fail";
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return null;
        }
    }
}
