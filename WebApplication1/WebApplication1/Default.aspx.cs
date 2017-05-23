using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonSend_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(this.TextBox1.Text);
            int b = Convert.ToInt32(this.TextBox2.Text);
            //Label3.Text = "Здравствуйте, " + TextBox1.Text + " " + TextBox2.Text + "! Добро пожаловать в приложение ASP.NET";
            //Label2.ForeColor = Color.Green;
            TextBox1.Text = Convert.ToString(Convert.ToInt32(a));
            TextBox2.Text = Convert.ToString(Convert.ToInt32(b));
            TextBox3.Text = Convert.ToString(Convert.ToInt32((a*(b*b)*Math.PI)/3));
            TextBox3.ForeColor = Color.Green;
        }

    }
}
