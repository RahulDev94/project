using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Userreg : System.Web.UI.Page
    {
        conectionClass1 obj = new conectionClass1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(Reg_id) from Logtab_1";
            string regid = obj.Fn_scalar(sel);
            int reg_id = 0;
            if (regid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(regid);
                reg_id = newregid + 1;
            }
            string s1 = "insert into usereg_1 values(" + reg_id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+ TextBox4.Text+"')";
            int i = obj.fn_Nonquery(s1);
            string s2 = "insert into Logtab_1 values(" + reg_id + ",'" + TextBox5.Text + "','" + TextBox6.Text + "','user','active')";
            int j = obj.fn_Nonquery(s2);
            Response.Redirect("Login.aspx");
        }
    }
}