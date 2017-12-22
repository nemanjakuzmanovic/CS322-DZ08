using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace CS322_DZ08
{
    public partial class _Default : Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void test_Click(object sender, EventArgs e)
        {


            

            string firstname = fName.Text;
            string lastname = lName.Text;
            string uemail = uEmail.Text;
            string semail = sEmail.Text;
            string password = pW.Text;
            string month = uMonth.Text;
            string day = uDay.Text;
            string year = uYear.Text;
            string sex = "Male";
            string date = year + "-" + month + "-" + day;

            if (rb1.Selected)
            {
                sex = "Male";
            }
            else
            {
                sex = "Female";
            }
            
            string connString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            MySqlConnection conn = new MySqlConnection(connString);
            conn.Open();
            MySqlCommand comm = conn.CreateCommand();
            comm.CommandText = "INSERT INTO registration(firstname,lastname,email,password,birthday,sex) VALUES(@fname,@lname,@eemail,@ppassword,@ddate,@ssex)";
            comm.Parameters.AddWithValue("@fname", firstname);
            comm.Parameters.AddWithValue("@lname", lastname);
            comm.Parameters.AddWithValue("@eemail", uemail);
            comm.Parameters.AddWithValue("@ppassword", password);
            comm.Parameters.AddWithValue("@ddate", date);
            comm.Parameters.AddWithValue("@ssex", sex);
            comm.ExecuteNonQuery();
            conn.Close();

            




        }
    }
}