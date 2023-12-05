using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Login : System.Web.UI.Page
    {
        conectionClass1 obj = new conectionClass1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            string str = "select count(Reg_id) from Logtab_1 where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            string cid = obj.Fn_scalar(str);
            ////int cid1 = Convert.ToInt32(cid);
            if (cid == "1")
            {
                string s1 = "select Reg_id from Logtab_1 where username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'";
                string regid = obj.Fn_scalar(s1);
                Session["userid"] = regid;
                string s2 = "select Log_type from Logtab_1 where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                string log_type = obj.Fn_scalar(s2);
                if (log_type == "admin")
                {
                    Response.Redirect("Adminhome.aspx");

                }
                else if (log_type == "user")
                {
                    Response.Redirect("Userhome.aspx");

                }
                else
                {
                    Label1.Text = "inavlid username or password";
                }
            }
        }
    }
}