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

public partial class addstd : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
         
        
    }
    protected void adsub(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=notice_db;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("INSERT into other values('sub','" + Request.Form["sub"] + "')",con);
       
        SqlDataAdapter sd = new SqlDataAdapter("SELECT * from other where name='" + Request.Form["sub"] + "'",con);
       
        DataTable dt = new DataTable();
        sd.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Write("Subject Already Exists !");
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

    protected void adbatch(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=notice_db;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("INSERT into other values('batch','" + Request.Form["batch"] + "')", con);

        SqlDataAdapter sd = new SqlDataAdapter("SELECT * from other where name='" + Request.Form["batch"] + "'", con);

        DataTable dt = new DataTable();
        sd.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Write("Subject Already Exists !");
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
  



    protected void adstd(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=notice_db;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("INSERT into other values('std','" + Request.Form["std"] + "')", con);

        SqlDataAdapter sd = new SqlDataAdapter("SELECT * from other where name='" + Request.Form["std"] + "'", con);

        DataTable dt = new DataTable();
        sd.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Write("Subject Already Exists !");
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
