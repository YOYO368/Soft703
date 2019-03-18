using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NuiLunchBoxProject
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindListView();
            }
        }
        public void BindListView()
        {
            ConnectDatabase alayer = new ConnectDatabase();
            DataTable dt;

            if (Request.Cookies["UserID"] == null)
            {
                Response.Write("<script>alert('You have to register or login');window.location='UserLogin.aspx';</script>");
            }
            dt = alayer.GetViewCartMenuTableFromDB();

            CartView.DataSource = dt;
            CartView.DataBind();
        }
        protected void OnOrderItem(object sender, EventArgs e)
        {
            string UserID = "";
            ConnectDatabase alayer = new ConnectDatabase();
            Button btn = (Button)sender;

            if(Request.Cookies["UserID"] != null)
            {
                HttpCookie acookie = Request.Cookies["UserID"];
                UserID = acookie.Values["UserID"];
            }
            alayer.SaveCartMenuToOrder(UserID,btn.CommandName,btn.CommandArgument);
            Response.Write("<script>alert('Selected menu is ordered');</script>");
        }
        protected void OnDeleteItem(object sender, EventArgs e)
        {
            ConnectDatabase alayer = new ConnectDatabase();
            Button btn = (Button)sender;
            alayer.DeleteCartMenu(btn.CommandName);
            Response.Write("<script>alert('Selected menu is deleted');</script>");
            BindListView();
        }
    }
 }