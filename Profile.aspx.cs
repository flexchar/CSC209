using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace D2
{
    public partial class Profile : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void analyse_subject(object sender, EventArgs e)
        {
            List<string> mon = new List<string>();
            foreach (ListItem m in months.Items)
            {
                if (m.Selected)
                {
                    mon.Add(m.Text);
                }
            }


            response.Text = $"Thanks! Now we know that you desire {food.Text}, " +
                $"that you eat {meals.Text} meals a day, " +
                $"that you are {person_type.Text.ToLower()} person, " +
                $"who loves {String.Join(", ", mon)}, " +
                $"and will spend cash from {holiday.SelectedDate.ToShortDateString()}. " +
                $"This infromation will be safe with your secret '{secret1.Text}' stored in plaintext ;).";            
        }
    }
}