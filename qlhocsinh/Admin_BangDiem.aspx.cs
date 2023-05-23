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

public partial class Admin_BangDiem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getdata(ddchonlop.Text.ToString().Trim());
        layhocky(ddchonlop.Text.ToString().Trim(), ddtenmon.SelectedValue.ToString().Trim());
        if (!IsPostBack)
        {
            AccessData ac = new AccessData();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "st_LayLopforBangDiem";
            ddchonlop.DataTextField = "malop";
            ddchonlop.DataValueField = "malop";
            ddchonlop.DataSource = ac.laydulieu(cmd);
            ddchonlop.DataBind();

            
        }
    }

    protected void bomon()
    {
        AccessData ac = new AccessData();
        SqlCommand cme = new SqlCommand();
        cme.CommandType = CommandType.StoredProcedure;
        cme.CommandText = "st_LayBoMonfromPhancong";
        cme.Parameters.Add("malop", SqlDbType.Char, 10).Value = ddchonlop.Text.ToString().Trim();
        ddtenmon.DataTextField = "tenmon";
        ddtenmon.DataValueField = "mamon";
        ddtenmon.DataSource = ac.laydulieu(cme);
        ddtenmon.DataBind();
    }

    protected void getdata(string lop)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_LayBangDiemfromLop";
        cmd.Parameters.Add("malop", SqlDbType.NChar, 10).Value = ddchonlop.Text.ToString().Trim();
        GridView1.DataSource = ac.laydulieu(cmd);
        GridView1.DataBind();
    }

    public void layhocky(string malop, string mamon)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_LayHocKyfromPhancong";
        cmd.Parameters.Add("malop", SqlDbType.Char, 10).Value = malop.ToString().Trim();
        cmd.Parameters.Add("mamon", SqlDbType.Char, 10).Value = mamon.ToString().Trim();
        ddhocky.DataTextField = "hocky";
        ddhocky.DataValueField = "hocky";
        ddhocky.DataSource = ac.laydulieu(cmd);
        ddhocky.DataBind();
    }

    public void chonsv(string lop)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_ChonSVfromLop";
        cmd.Parameters.Add("malop", SqlDbType.NChar, 10).Value = lop.ToString().Trim();
        ddtensv.DataTextField = "hoten";
        ddtensv.DataValueField = "masv";
        ddtensv.DataSource = ac.laydulieu(cmd);
        ddtensv.DataBind();
    }

    protected void imgcapnhat_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        float diemtb;
        diemtb = (Int32.Parse(txtdiemhs1.Text) + Int32.Parse(txtdiemhs2.Text) + Int32.Parse(txtdiemhs3.Text)) / 3;
        txtdiemtb.Text = diemtb.ToString();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_UpdateAdminBangdiem";
        cmd.Parameters.Add("masv", SqlDbType.Char, 10).Value = ddtensv.SelectedValue.ToString().Trim();
        cmd.Parameters.Add("mamon", SqlDbType.Char, 10).Value = ddtenmon.SelectedValue.ToString().Trim();
        cmd.Parameters.Add("diemhs1", SqlDbType.Int).Value = int.Parse(txtdiemhs1.Text.ToString().Trim());
        cmd.Parameters.Add("diemhs2", SqlDbType.Int).Value = int.Parse(txtdiemhs2.Text.ToString().Trim());
        cmd.Parameters.Add("diemhs3", SqlDbType.Int).Value = int.Parse(txtdiemhs3.Text.ToString().Trim());
        cmd.Parameters.Add("diemtb", SqlDbType.Float).Value = float.Parse(txtdiemtb.Text.ToString().Trim());
        cmd.Parameters.Add("hocky", SqlDbType.Char, 5).Value = ddhocky.Text.ToString().Trim();
        cmd.Parameters.Add("namhoc", SqlDbType.Char, 5).Value = txtnamhoc.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata(ddchonlop.Text.ToString().Trim());
    }
    protected void imgthem_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        float diemtb;
        diemtb = (Int32.Parse(txtdiemhs1.Text) + Int32.Parse(txtdiemhs2.Text) + Int32.Parse(txtdiemhs3.Text)) / 3;
        txtdiemtb.Text = diemtb.ToString();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_InsertAdminBangdiem";
        cmd.Parameters.Add("masv", SqlDbType.Char, 10).Value = ddtensv.SelectedValue.ToString().Trim();
        cmd.Parameters.Add("mamon", SqlDbType.Char, 10).Value = ddtenmon.SelectedValue.ToString().Trim();
        cmd.Parameters.Add("diemhs1", SqlDbType.Int).Value = int.Parse(txtdiemhs1.Text.ToString().Trim());
        cmd.Parameters.Add("diemhs2", SqlDbType.Int).Value = int.Parse(txtdiemhs2.Text.ToString().Trim());
        cmd.Parameters.Add("diemhs3", SqlDbType.Int).Value = int.Parse(txtdiemhs3.Text.ToString().Trim());
        cmd.Parameters.Add("diemtb", SqlDbType.Float).Value = float.Parse(txtdiemtb.Text.ToString().Trim());
        cmd.Parameters.Add("hocky", SqlDbType.Char, 5).Value = ddhocky.Text.ToString().Trim();
        cmd.Parameters.Add("namhoc", SqlDbType.Char, 5).Value = txtnamhoc.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata(ddchonlop.Text.ToString().Trim());
    }
    protected void imgxoa_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_DeleteAdminBangdiem";
        cmd.Parameters.Add("masv", SqlDbType.Char, 10).Value = ddtensv.SelectedValue.ToString().Trim();
        cmd.Parameters.Add("mamon", SqlDbType.Char, 10).Value = ddtenmon.SelectedValue.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        getdata(ddchonlop.Text.ToString().Trim());
    }
    protected void ddchonlop_SelectedIndexChanged(object sender, EventArgs e)
    {
        chonsv(ddchonlop.SelectedValue.ToString().Trim());
        bomon();
    }
    protected void ddtensv_SelectedIndexChanged(object sender, EventArgs e)
    {
        getdata(ddchonlop.Text.ToString().Trim());
        layhocky(ddchonlop.Text.ToString().Trim(), ddtenmon.SelectedValue.ToString().Trim());
    }
    protected void ddtenmon_SelectedIndexChanged(object sender, EventArgs e)
    {
        layhocky(ddchonlop.Text.ToString().Trim(), ddtenmon.SelectedValue.ToString().Trim());
    }
    protected void btnreport_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/RPT_BangDiem.aspx");
    }
}
