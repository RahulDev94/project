using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class AddCat : System.Web.UI.Page
    {
        conectionClass1 obj = new conectionClass1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s1 = "~/catpic/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(s1));

            string s = "insert into CatTab_1 values('" + TextBox1.Text + "','" + s1 + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            int i = obj.fn_Nonquery(s);
        }
    }
}