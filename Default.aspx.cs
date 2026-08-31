using System;
using System.Web.UI;

namespace IndustrialSparePartPortal
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string query = txtSearchQuery.Text.Trim();
            if (!string.IsNullOrEmpty(query))
            {
                Response.Redirect("~/Public/SearchParts.aspx?q=" + Server.UrlEncode(query));
            }
            else
            {
                Response.Redirect("~/Public/SearchParts.aspx");
            }
        }
    }
}
