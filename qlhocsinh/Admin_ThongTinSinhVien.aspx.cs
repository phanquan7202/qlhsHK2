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

public partial class Admin_ThongTinSinhVien : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getdata();
        if (!IsPostBack)
        {
            AccessData ac = new AccessData();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "st_LayLopforBangDiem";
            ddlop.DataTextField = "malop";
            ddlop.DataValueField = "malop";
            ddlop.DataSource = ac.laydulieu(cmd);
            ddlop.DataBind();
        }
    }
    protected void getdata()
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_LaythongtinsinhvienAdmin";
        GridView1.DataSource = ac.laydulieu(cmd);
        GridView1.DataBind();
    }
    protected void imgthem_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_InsertAdminthongtinsinhvien";
        cmd.Parameters.Add("masv", SqlDbType.Char, 10).Value = txtmasv.Text.ToString().Trim();
        cmd.Parameters.Add("hoten", SqlDbType.NVarChar, 50).Value = txtensv.Text.ToString().Trim();
        cmd.Parameters.Add("gioitinh", SqlDbType.NVarChar, 10).Value = ddgioitinh.Text.ToString().Trim();
        cmd.Parameters.Add("ngaysinh", SqlDbType.SmallDateTime).Value = txtngaysinh.Text.ToString().Trim();
        cmd.Parameters.Add("malop", SqlDbType.Char, 10).Value = ddlop.Text.ToString().Trim();
        cmd.Parameters.Add("diachi", SqlDbType.NVarChar, 50).Value = txtdiachi.Text.ToString().Trim();
        cmd.Parameters.Add("quequan", SqlDbType.NVarChar, 50).Value = txtquequan.Text.ToString().Trim();
        cmd.Parameters.Add("sdt", SqlDbType.NChar, 30).Value = txtsodienthoai.Text.ToString().Trim();
        cmd.Parameters.Add("bachoc", SqlDbType.NVarChar, 50).Value = dbbachoc.Text.ToString().Trim();
        cmd.Parameters.Add("nienkhoa", SqlDbType.NVarChar, 50).Value = txtnienkhoa.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void imgcapnhat_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_UpdateAdminthongtinsinhvien";
        cmd.Parameters.Add("masv", SqlDbType.Char, 10).Value = txtmasv.Text.ToString().Trim();
        cmd.Parameters.Add("hoten", SqlDbType.NVarChar, 50).Value = txtensv.Text.ToString().Trim();
        cmd.Parameters.Add("gioitinh", SqlDbType.NVarChar, 10).Value = ddgioitinh.Text.ToString().Trim();
        cmd.Parameters.Add("ngaysinh", SqlDbType.SmallDateTime).Value = txtngaysinh.Text.ToString().Trim();
        cmd.Parameters.Add("malop", SqlDbType.Char, 10).Value = ddlop.Text.ToString().Trim();
        cmd.Parameters.Add("diachi", SqlDbType.NVarChar, 50).Value = txtdiachi.Text.ToString().Trim();
        cmd.Parameters.Add("quequan", SqlDbType.NVarChar, 50).Value = txtquequan.Text.ToString().Trim();
        cmd.Parameters.Add("sdt", SqlDbType.NChar, 30).Value = txtsodienthoai.Text.ToString().Trim();
        cmd.Parameters.Add("bachoc", SqlDbType.NVarChar, 50).Value = dbbachoc.Text.ToString().Trim();
        cmd.Parameters.Add("nienkhoa", SqlDbType.NVarChar, 50).Value = txtnienkhoa.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void imgxoa_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_DeleteAdminthongtinsinhvien";
        cmd.Parameters.Add("masv", SqlDbType.Char, 10).Value = txtmasv.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void btnreport_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/RPT_Sinhvien.aspx");
    }
}
