using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankingManagement
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            if (txtName.Text.ToString().Equals("") || txtPassword.Text.ToString().Equals(""))
            {
                display.InnerHtml = "Must fill the User Name or Password ";
            }
            else {
                Database.Script instance = new Database.Script();
                String Sql = "select * from Login where Name='"+txtName.Text.ToString()+"' and Password='"+txtPassword.Text.ToString()+"'";
                DataTable tbl = new DataTable();
                tbl = instance.Validation(Sql);
                if (tbl.Rows.Count > 0)
                {
                    Response.Redirect("AdminDashboard.aspx");
                }
                else {
                    display.InnerHtml = "Invalid User Name or Password ";
                }

            }
        }
    }
}