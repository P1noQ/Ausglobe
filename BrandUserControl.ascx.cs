using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BrandUserControl : System.Web.UI.UserControl
{
    Data dt = new Data();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpBrand.DataSource = dt.GetLeftBrand().OrderByDescending(p=>p.Id);
        rpBrand.DataBind();
    }
}