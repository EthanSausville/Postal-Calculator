using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Postal_Calculator
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void groundRadioButton_CheckedChanged1(object sender, EventArgs e)
        { getCost(); }

        protected void airRadioButton_CheckedChanged(object sender, EventArgs e)
        { getCost(); }

        protected void nextDayRadioButton_CheckedChanged(object sender, EventArgs e)
        { getCost(); }

        protected void widthTextBox_TextChanged(object sender, EventArgs e)
        { getCost(); }

        protected void heightTextBox_TextChanged(object sender, EventArgs e)
        { getCost(); }

        protected void lengthTextBox_TextChanged(object sender, EventArgs e)
        { getCost(); }

        private void getCost()
        {
            if (groundRadioButton.Checked)
                writeString(0.15);
            if (airRadioButton.Checked)
                writeString(0.25);
            if (nextDayRadioButton.Checked)
                writeString(0.45);
        }

        private void writeString(double rate)
        {
            if (widthTextBox.Text != "" && heightTextBox.Text != "")
            {
                double cost = getPrice(rate);
                resultLabel.Text = string.Format("Your parcel will cost {0:C} to ship.", cost);
            }
        }

        private double getPrice(double rate)
        {
            double width = double.Parse(widthTextBox.Text);
            double height = double.Parse(heightTextBox.Text);
            double length = 1;
            if (lengthTextBox.Text != "")
                length = double.Parse(lengthTextBox.Text);
            double cost = width * height * length * rate;
            return cost;
        }
    }
}