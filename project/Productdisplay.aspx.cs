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
    public partial class Productdisplay : System.Web.UI.Page
    {
        conectionClass1 obj = new conectionClass1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select*from prodTab_1";
                DataSet ds = obj.Fn_DataAdapter(s);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int pdtid = Convert.ToInt32(e.CommandArgument);
            Session["Pdt_id"] = pdtid;
            Response.Redirect("Productview.aspx");
        }
    }
}