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
    public partial class Editproduct : System.Web.UI.Page
    {
        conectionClass1 obj = new conectionClass1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                gridBind();
            }
        }
        public void gridBind()
        {
            string selall = "select * from prodTab_1";
            DataSet ds = obj.Fn_DataAdapter(selall);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from prodTab_1 where Pdt_id=" + getid + "";
            obj.fn_Nonquery(del);
            gridBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gridBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gridBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtname = (TextBox)GridView1.Rows[i].Cells[0].Controls[0];
            TextBox txtdesc = (TextBox)GridView1.Rows[i].Cells[1].Controls[0];
            TextBox txtprice = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            TextBox txtstock = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            string upd = "update prodTab_1 set Pdt_name='" + txtname.Text + "', Pdt_desc='" + txtdesc.Text + "',Pdt_price='" + txtprice.Text + "',Pdt_stock='" + txtstock.Text + "' where Pdt_id=" + getid + "";
            obj.fn_Nonquery(upd);
            gridBind();
        }
    }
}