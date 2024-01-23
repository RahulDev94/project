using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace project
{
    public partial class Productview : System.Web.UI.Page
    {
        conectionClass1 obj = new conectionClass1();
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "select Pdt_name,Pdt_image,Pdt_price,Pdt_desc from prodTab_1 where Pdt_id=" + Session["Pdt_id"] + "";
            SqlDataReader dr = obj.Fn_DataReader(s);
            while (dr.Read())
            {
                Image1.ImageUrl = dr["Pdt_image"].ToString();
                Label1.Text = dr["Pdt_name"].ToString();
                Label2.Text = dr["Pdt_price"].ToString();
                Label3.Text = dr["Pdt_desc"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
			string s = "select max(Cart_id) from CartTab_1";
			string Cartid = obj.Fn_scalar(s);
			int Cart_id = 0;
			if (Cartid == "")
			{
				Cart_id = 1;
			}
			else
			{
				int newregid = Convert.ToInt32(Cart_id);
				Cart_id = newregid + 1;
			}
			string selprice = "select Pdt_price from prodTab_1 where Pdt_id=" + Session["Pdtid"] + "";
			string str = obj.Fn_scalar(selprice);
			int tprice = Convert.ToInt32(TextBox1.Text) * Convert.ToInt32(str);
			string inscart = "insert into Cart values('" + Cart_id + "','" + Session["userid"] + "','" + Session["Pdt_id"] + "','" + TextBox1.Text + "','" + tprice + "')";
			int i = obj.fn_Nonquery(inscart);
			if (i == 1)
			{
				Label3.Visible = true;
				Label3.Text = "Added to cart successfully";
			}
		}
    }
}