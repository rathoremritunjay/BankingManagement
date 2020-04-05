using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankingManagement
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            Database.Script instance = new Database.Script();
            String sql = "insert into Query(Name,Contact,Email,Msg) values ('"+txtName.Text.ToString()+"','"+txtContact.Text.ToString()+"','"+txtEmail.Text.ToString()+"','"+txtMessage.Text.ToString()+"')";
            instance.DataQuery(sql);

            display.InnerHtml = "We will Contact you soon ";

            txtContact.Text = "";
            txtEmail.Text = "";
            txtMessage.Text = "";
            txtName.Text = "";
        }
    }
}