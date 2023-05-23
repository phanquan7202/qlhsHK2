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

public partial class Admin_PhanCongGiaoVien : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getdata();
        if (!IsPostBack)
        {
            AccessData ac = new AccessData();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "st_chonlop";
            ddchonlop.DataTextField = "malop";
            ddchonlop.DataValueField = "malop";
            ddchonlop.DataSource = ac.laydulieu(cmd);
            ddchonlop.DataBind();
        }
    }
    protected void getdata()
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_LayPhanCongAdmin";
        GridView1.DataSource = ac.laydulieu(cmd);
        GridView1.DataBind();
    }
    protected void imgthem_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_InsertAdminPhanCong";
        cmd.Parameters.Add("mamon", SqlDbType.Char, 10).Value = txtmamon.Text.ToString().Trim();
        cmd.Parameters.Add("magv", SqlDbType.Char, 10).Value = txtmagv.Text.ToString().Trim();
        cmd.Parameters.Add("malop", SqlDbType.Char, 10).Value = ddchonlop.Text.ToString().Trim();
        cmd.Parameters.Add("hocky", SqlDbType.NVarChar, 10).Value = dbhocky.Text.ToString().Trim();
        cmd.Parameters.Add("namhoc", SqlDbType.NVarChar, 10).Value = txtnamhoc.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void imgcapnhat_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_UpdateAdminPhanCong";
        cmd.Parameters.Add("mamon", SqlDbType.Char, 10).Value = txtmamon.Text.ToString().Trim();
        cmd.Parameters.Add("magv", SqlDbType.Char, 10).Value = txtmagv.Text.ToString().Trim();
        cmd.Parameters.Add("malop", SqlDbType.Char, 10).Value = ddchonlop.Text.ToString().Trim();
        cmd.Parameters.Add("hocky", SqlDbType.NVarChar, 10).Value = dbhocky.Text.ToString().Trim();
        cmd.Parameters.Add("namhoc", SqlDbType.NVarChar, 10).Value = txtnamhoc.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void imgxoa_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_DeleteAdminPhanCong";
        cmd.Parameters.Add("mamon", SqlDbType.Char, 10).Value = txtmamon.Text.ToString().Trim();
        cmd.Parameters.Add("magv", SqlDbType.Char, 10).Value = txtmagv.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void btnreport_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/RPT_PhanCong.aspx");
    }
}
