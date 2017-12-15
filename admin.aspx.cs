using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class admin : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        //con = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=notice_db;Integrated Security=True");
        //SqlCommand com = new SqlCommand("");
    }

    protected void addbatch(object sender, EventArgs e)
    {
       SqlConnection con = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=notice_db;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("INSERT into timetable values('" + Request.Form["day"] + "','" + DropDownList1.Text + "','" + Request.Form["med"] + "','" + DropDownList3.Text + "','" + Request.Form["time"] + "','" + DropDownList2.Text + "')", con);


        SqlDataAdapter sd = new SqlDataAdapter("SELECT * from timetable where day='" + Request.Form["day"] + "' and std='" + DropDownList1.Text + "'and med='" + Request.Form["med"] + "' and sub='" + DropDownList3.Text + "'and batch='" + DropDownList2.Text + "'", con);


        DataTable dt = new DataTable();
        sd.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Write("timetable Already Exists !");
        }



        else
        {
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i != -1)
            {

                Response.Write("Added");

            }
            else
            {
                Response.Write("Failed");
            }
        }
        
    }
}
