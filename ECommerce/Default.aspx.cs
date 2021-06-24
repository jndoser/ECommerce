using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerce
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxPageControl1_ActiveTabChanged(object source, DevExpress.Web.TabControlEventArgs e)
        {

        }

        protected void ASPxDataView1_PageIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ASPxDataView1_ItemCommand(object source, DevExpress.Web.DataViewItemCommandEventArgs e)
        {
            DataViewItemTemplateContainer templateContainer = GetTemplateContainer(e.CommandSource as Control);
            WebControl commandInfo = new WebControl(HtmlTextWriterTag.P);
            commandInfo.Style.Add(HtmlTextWriterStyle.Color, "#6FBF45");
            commandInfo.Controls.Add(new LiteralControl(string.Format("Command received (\"{0}\", \"{1}\")",
                e.CommandName, e.CommandArgument)));
            templateContainer.Controls.Add(commandInfo);
        }

        private DataViewItemTemplateContainer GetTemplateContainer(Control innerControl)
        {
            Control container = innerControl.Parent;
            while (!(container is DataViewItemTemplateContainer) && container.Parent != null)
                container = container.Parent;
            return container as DataViewItemTemplateContainer;
        }

        protected void Image1_Init(object sender, EventArgs e)
        {
           
        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            ASPxButton btn = sender as ASPxButton;
            DataViewItemTemplateContainer container = 
                (DataViewItemTemplateContainer)btn.NamingContainer;
            Label nameLabel = container.FindControl("Label1") as Label;
            string name = nameLabel.Text;
            Response.Write("<script>alert('"+ name +"')</script>");
            Response.Redirect("Laptop.aspx");
        }

        protected void ASPxButton1_Command(object sender, CommandEventArgs e)
        {

        }
    }
}