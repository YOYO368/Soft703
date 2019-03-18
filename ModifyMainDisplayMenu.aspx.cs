using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace NuiLunchBoxProject
{
    public partial class WebForm6 : System.Web.UI.Page
    {
         protected void Page_Load(object sender, EventArgs e)
        {
            ConnectDatabase alayer = new ConnectDatabase();
            SqlDataReader reader;
            int i = 0;
            string MenuName, GroupNo, path1;

            if(Session["CheckCount"] != null)
            {
                i = Convert.ToInt32(Session["CheckCount"]);
                if(i > 0)
                {
                    return;
                }
            }
            Session["ImageNum"] = "";
            reader = alayer.GetMainDisplaytMenu();
            if(reader != null)
            {
                if (!reader.HasRows)
                {
                    Response.Write("<script>alert('There is no image in DisplayMenu Table');</script>");
                    return;
                }
                while (reader.HasRows)
                {
                    MenuName = reader.GetName(0);
                    GroupNo = reader.GetName(1);
                    while (reader.Read())
                    {
                        MenuName = reader.GetString(0);
                        GroupNo = reader.GetString(1);
                        path1 = reader.GetString(2);

                        path1 = path1.Trim();
                        if (path1 != "")
                        {
                            ViewMainDisplayMenu(i, GroupNo, MenuName, path1);
                            i++;
                        }
                    }
                    reader.NextResult();
                }
                Session["ImageNum"] = Convert.ToString(i);
            }
           else
            {
                Response.Write("<script>alert('Can not use database table');window.location='ViewManagerPage.aspx';</script>");
                return;
            }
        }

        public void ViewMainDisplayMenu(int number, string groupnum, string name, string path)
        {
            switch (number)
            {
                case 0:
                    CheckBox1.Text = name;
                    Image1.ImageUrl = path;
                    GroupNo1.Text = groupnum;
                    break;
                case 1:
                    CheckBox2.Text = name;
                    Image2.ImageUrl = path;
                    GroupNo2.Text = groupnum;
                    break;
                case 2:
                    CheckBox3.Text = name;
                    Image3.ImageUrl = path;
                    GroupNo3.Text = groupnum;
                    break;
                case 3:
                    CheckBox4.Text = name;
                    Image4.ImageUrl = path;
                    GroupNo4.Text = groupnum;
                    break;
                case 4:
                    CheckBox5.Text = name;
                    Image5.ImageUrl = path;
                    GroupNo5.Text = groupnum;
                    break;
                case 5:
                    CheckBox6.Text = name;
                    Image6.ImageUrl = path;
                    GroupNo6.Text = groupnum;
                    break;
                case 6:
                    CheckBox7.Text = name;
                    Image7.ImageUrl = path;
                    GroupNo7.Text = groupnum;
                    break;
                case 7:
                    CheckBox8.Text = name;
                    Image8.ImageUrl = path;
                    GroupNo8.Text = groupnum;
                    break;
                default:
                    break;
            }
         }
        public void SaveSelectedMainDisplayMenu(string num, string name)
        {
            ConnectDatabase alayer = new ConnectDatabase();
            int checkcount = 0;
            if(Session["CheckCount"] != null && !Session["CheckCount"].ToString().Equals(""))
                checkcount = Convert.ToInt32(Session["CheckCount"]);

            if (name != null && num != null)
            {
                alayer.SaveSelectedMainDisplayMenu(num, name);
            }
            checkcount++;
            Label2.Text = Convert.ToString(checkcount);
            Session["CheckCount"] = Convert.ToString(checkcount);
        }
        public void DecreaseCheckCount()
        {
            int i = 0;

            if(Session["CheckCount"] != null && !Session["CheckCount"].ToString().Equals(""))
                i = Convert.ToInt32(Session["CheckCount"]);
            if(i > 0)
                i--;
            Session["CheckCount"] = Convert.ToString(i);
        }
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
                SaveSelectedMainDisplayMenu(GroupNo1.Text, CheckBox1.Text);
            else
                DecreaseCheckCount();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox2.Checked == true)
                SaveSelectedMainDisplayMenu(GroupNo2.Text, CheckBox2.Text);
            else
                DecreaseCheckCount();
        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox3.Checked == true)
                SaveSelectedMainDisplayMenu(GroupNo3.Text, CheckBox3.Text);
            else
                DecreaseCheckCount();
        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox4.Checked == true)
                SaveSelectedMainDisplayMenu(GroupNo4.Text, CheckBox4.Text);
            else
                DecreaseCheckCount();
        }

        protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox5.Checked == true)
                SaveSelectedMainDisplayMenu(GroupNo5.Text, CheckBox5.Text);
            else
                DecreaseCheckCount();
        }

        protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox6.Checked == true)
                SaveSelectedMainDisplayMenu(GroupNo6.Text, CheckBox6.Text);
            else
                DecreaseCheckCount();
        }

        protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox7.Checked == true)
                SaveSelectedMainDisplayMenu(GroupNo7.Text, CheckBox7.Text);
            else
                DecreaseCheckCount();
        }

        protected void CheckBox8_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox8.Checked == true)
                SaveSelectedMainDisplayMenu(GroupNo8.Text, CheckBox8.Text);
            else
                DecreaseCheckCount();
        }
        protected void btnDelete_Click1(object sender, EventArgs e)
        {
            ConnectDatabase alayer = new ConnectDatabase();

            alayer.DeleteMainDisplayMenu();
            Response.Write("<script> alert('All checked items are deleted');</script>");
        }
    }
}