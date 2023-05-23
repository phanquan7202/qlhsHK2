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

public partial class Admin_ThongTinGiaoVien : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getdata();
    }
    protected void getdata()
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_LayThongTinGiaoVienAdmin";
        GridView1.DataSource = ac.laydulieu(cmd);
        GridView1.DataBind();
    }
    protected void imgthem_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_InsertAdminthongtingiaovien";
        cmd.Parameters.Add("magv", SqlDbType.Char, 10).Value = txtmagv.Text.ToString().Trim();
        cmd.Parameters.Add("tengv", SqlDbType.NVarChar, 50).Value = txthoten.Text.ToString().Trim();
        cmd.Parameters.Add("gioitinh", SqlDbType.NVarChar, 10).Value = ddgioitinh.Text.ToString().Trim();
        cmd.Parameters.Add("ngaysinh", SqlDbType.SmallDateTime).Value = txtngaysinh.Text.ToString().Trim();
        cmd.Parameters.Add("diachi", SqlDbType.NVarChar, 50).Value = txtdiachi.Text.ToString().Trim();
        cmd.Parameters.Add("quequan", SqlDbType.NVarChar, 50).Value = txtquequan.Text.ToString().Trim();
        cmd.Parameters.Add("sdt", SqlDbType.NVarChar, 30).Value = txtsdt.Text.ToString().Trim();
        cmd.Parameters.Add("capbac", SqlDbType.NVarChar, 30).Value = dbcapbac.Text.ToString().Trim();
        cmd.Parameters.Add("email", SqlDbType.NVarChar, 40).Value = txtemail.Text.ToString().Trim();
        cmd.Parameters.Add("ngayvaolam", SqlDbType.SmallDateTime).Value = txtngayvaolam.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void imgcapnhat_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_UpdateAdminthongtingiaovien";
        cmd.Parameters.Add("magv", SqlDbType.Char, 10).Value = txtmagv.Text.ToString().Trim();
        cmd.Parameters.Add("tengv", SqlDbType.NVarChar, 50).Value = txthoten.Text.ToString().Trim();
        cmd.Parameters.Add("gioitinh", SqlDbType.NVarChar, 10).Value = ddgioitinh.Text.ToString().Trim();
        cmd.Parameters.Add("ngaysinh", SqlDbType.SmallDateTime).Value = txtngaysinh.Text.ToString().Trim();
        cmd.Parameters.Add("diachi", SqlDbType.NVarChar, 50).Value = txtdiachi.Text.ToString().Trim();
        cmd.Parameters.Add("quequan", SqlDbType.NVarChar, 50).Value = txtquequan.Text.ToString().Trim();
        cmd.Parameters.Add("sdt", SqlDbType.NVarChar, 30).Value = txtsdt.Text.ToString().Trim();
        cmd.Parameters.Add("capbac", SqlDbType.NVarChar, 30).Value = dbcapbac.Text.ToString().Trim();
        cmd.Parameters.Add("email", SqlDbType.NVarChar, 40).Value = txtemail.Text.ToString().Trim();
        cmd.Parameters.Add("ngayvaolam", SqlDbType.SmallDateTime).Value = txtngayvaolam.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void imgxoa_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_DeleteAdminthongtingiaovien";
        cmd.Parameters.Add("magv", SqlDbType.Char, 10).Value = txtmagv.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void btnreport_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/RPT_GiaoVien.aspx");
    }
}
