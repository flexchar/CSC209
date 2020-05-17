using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace D2
{
    public partial class Quiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            result.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            result.Text = "Wrong, try again";

            if (answer.Text.ToLower() == "Osmis".ToLower())
            {
                result.Text = "High five! You've got it right :)";
            }
        }
    }
}