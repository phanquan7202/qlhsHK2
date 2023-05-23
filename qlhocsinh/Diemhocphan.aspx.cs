using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getdata();
    }

    public void getdata()
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_LayDiemforSinhvien";
        cmd.Parameters.Add("idsinhvien", SqlDbType.Int).Value = int.Parse(Session["idsinhvien"].ToString().Trim());
        cmd.Parameters.Add("hocky", SqlDbType.NVarChar, 10).Value = ddhocky.Text.ToString().Trim();
        GridView1.DataSource = ac.laydulieu(cmd);
        GridView1.DataBind();
    }
    protected void btnhienthi_Click(object sender, EventArgs e)
    {
        getdata();
    }
}
