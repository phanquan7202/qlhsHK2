using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Taikhoan : System.Web.UI.Page
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
        cmd.CommandText = "st_LayBangTaiKhoan";
        GridView1.DataSource = ac.laydulieu(cmd);
        GridView1.DataBind();
    }
    protected void imgthem_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_InsertTaiKhoan";
        cmd.Parameters.Add("matv", SqlDbType.Char, 10).Value = txtmathanhvien.Text.ToString().Trim();
        cmd.Parameters.Add("password1", SqlDbType.NVarChar, 50).Value = txtpassc1.Text.ToString().Trim();
        cmd.Parameters.Add("password2", SqlDbType.NVarChar, 50).Value = txtpassc2.Text.ToString().Trim();
        cmd.Parameters.Add("nhom", SqlDbType.NVarChar, 30).Value = ddlnhom.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void imgcapnhat_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_UpdateTaiKhoan";
        cmd.Parameters.Add("matv", SqlDbType.Char, 10).Value = txtmathanhvien.Text.ToString().Trim();
        cmd.Parameters.Add("password1", SqlDbType.NVarChar, 50).Value = txtpassc1.Text.ToString().Trim();
        cmd.Parameters.Add("password2", SqlDbType.NVarChar, 50).Value = txtpassc2.Text.ToString().Trim();
        cmd.Parameters.Add("nhom", SqlDbType.NVarChar, 30).Value = ddlnhom.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void imgxoa_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_DeleteTaiKhoan";
        cmd.Parameters.Add("matv", SqlDbType.Char, 10).Value = txtmathanhvien.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void btnreport_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/RPT_TaiKhoan.aspx");
    }
}
