using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Lop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getdata();
        if (!IsPostBack)
        {
            AccessData ac = new AccessData();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "st_LayThongTinGiaoVienAdmin";
            ddtengv.DataTextField = "tengv";
            ddtengv.DataValueField = "magv";
            ddtengv.DataSource = ac.laydulieu(cmd);
            ddtengv.DataBind();
        }
    }
    protected void getdata()
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_LayLopAdmin";
        GridView1.DataSource = ac.laydulieu(cmd);
        GridView1.DataBind();
    }
    protected void imgthem_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_InsertAdminLop";
        cmd.Parameters.Add("malop", SqlDbType.NChar, 10).Value = txtmalop.Text.ToString().Trim();
        cmd.Parameters.Add("siso", SqlDbType.Int).Value = int.Parse(txtsiso.Text.ToString().Trim());
        cmd.Parameters.Add("magv", SqlDbType.NChar, 10).Value = ddtengv.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void imgcapnhat_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_UpdateAdminLop";
        cmd.Parameters.Add("malop", SqlDbType.NChar, 10).Value = txtmalop.Text.ToString().Trim();
        cmd.Parameters.Add("siso", SqlDbType.Int).Value = int.Parse(txtsiso.Text.ToString().Trim());
        cmd.Parameters.Add("magv", SqlDbType.NChar, 10).Value = ddtengv.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void imgxoa_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_DeleteAdminLop";
        cmd.Parameters.Add("malop", SqlDbType.NChar, 10).Value = txtmalop.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata();
    }
    protected void btnreport_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/RPT_Lop.aspx");
    }
}
