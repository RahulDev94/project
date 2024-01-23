using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Addproduct : System.Web.UI.Page
    {
        conectionClass1 obj = new conectionClass1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s1 = "~/prodpic/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(s1));
            string d = DropDownList1.SelectedItem.Value;
            string ins = "insert into prodTab_1 values('" + d + "','" + TextBox1.Text + "','" + s1 + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            int i = obj.fn_Nonquery(ins);
        }
    }
}