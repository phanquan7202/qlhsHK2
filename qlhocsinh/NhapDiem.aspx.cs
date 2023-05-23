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

public partial class NhapDiem : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            AccessData ac = new AccessData();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "st_chonlopfromphancong";
            MyDBDataContext db = new MyDBDataContext();
            int username = Convert.ToInt32(Session["idgiaovien"]);
            st_getgiaovieninfoResult giaovien = db.st_getgiaovieninfo(username).FirstOrDefault();
            cmd.Parameters.Add("magv", SqlDbType.Char, 10).Value = giaovien.magv;
            drplop.DataTextField = "malop";
            drplop.DataValueField = "malop";
            drplop.DataSource = ac.laydulieu(cmd);
            drplop.DataBind();
        } 
    }

    public void chonmon(string malop, string hocky)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_chonmon";
        MyDBDataContext db = new MyDBDataContext();
        int username = Convert.ToInt32(Session["idgiaovien"]);
        st_getgiaovieninfoResult giaovien = db.st_getgiaovieninfo(username).FirstOrDefault();
        cmd.Parameters.Add("magv", SqlDbType.Char, 10).Value = giaovien.magv;
        cmd.Parameters.Add("malop", SqlDbType.NVarChar, 30).Value = malop.ToString().Trim();
        cmd.Parameters.Add("hocky", SqlDbType.NVarChar, 30).Value = hocky.ToString().Trim();
        drpmon.DataTextField = "tenmon";
        drpmon.DataValueField = "mamon";
        drpmon.DataSource = ac.laydulieu(cmd);
        drpmon.DataBind();
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

    protected void drplop_SelectedIndexChanged(object sender, EventArgs e)
    {
        chonmon(drplop.Text.ToString().Trim(), drphocky.Text.ToString().Trim());
        chonsv(drplop.Text.ToString().Trim());
     
    }
    protected void drphocky_SelectedIndexChanged(object sender, EventArgs e)
    {
        chonmon(drplop.Text.ToString().Trim(), drphocky.Text.ToString().Trim());
    }

    private void laythongtin(string malop, string hocky, string mamon)
    {
        AccessData ac = new AccessData();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_laythongtinbandiem";
        cmd.Parameters.Add("malop", SqlDbType.NVarChar, 30).Value = malop.ToString().Trim();
        cmd.Parameters.Add("hocky", SqlDbType.NVarChar, 30).Value = hocky.ToString().Trim();
        cmd.Parameters.Add("mamon", SqlDbType.NVarChar, 30).Value = mamon.ToString().Trim();
        GridView1.DataSource= ac.laydulieu(cmd);
        GridView1.DataBind();
    }
    protected void btnbatdau_Click(object sender, EventArgs e)
    {
        laythongtin(drplop.SelectedValue.ToString().Trim(), drphocky.Text.ToString().Trim(), drpmon.SelectedValue.ToString().Trim());
    }
    protected void imgcapnhat_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        float diemtb;
        diemtb = (Int32.Parse(txtdiemhs1.Text) + Int32.Parse(txtdiemhs2.Text) + Int32.Parse(txtdiemhs3.Text)) / 3;
        txtdiemtb.Text = diemtb.ToString();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_InsertAdminBangdiem";
        cmd.Parameters.Add("masv", SqlDbType.Char, 10).Value = ddtensv.SelectedValue.ToString().Trim();
        cmd.Parameters.Add("mamon", SqlDbType.Char, 10).Value = drpmon.SelectedValue.ToString().Trim();
        cmd.Parameters.Add("diemhs1", SqlDbType.Int).Value = int.Parse(txtdiemhs1.Text.ToString().Trim());
        cmd.Parameters.Add("diemhs2", SqlDbType.Int).Value = int.Parse(txtdiemhs2.Text.ToString().Trim());
        cmd.Parameters.Add("diemhs3", SqlDbType.Int).Value = int.Parse(txtdiemhs3.Text.ToString().Trim());
        cmd.Parameters.Add("diemtb", SqlDbType.Float).Value = float.Parse(txtdiemtb.Text.ToString().Trim());
        cmd.Parameters.Add("hocky", SqlDbType.Char, 10).Value = drphocky.Text.ToString().Trim();
        cmd.Parameters.Add("namhoc", SqlDbType.Char, 10).Value = txtnamhoc.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        laythongtin(drplop.SelectedValue.ToString().Trim(), drphocky.Text.ToString().Trim(), drpmon.SelectedValue.ToString().Trim());
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        float diemtb;
        diemtb = (Int32.Parse(txtdiemhs1.Text) + Int32.Parse(txtdiemhs2.Text) + Int32.Parse(txtdiemhs3.Text)) / 3;
        txtdiemtb.Text = diemtb.ToString();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_UpdateAdminBangdiem";
        cmd.Parameters.Add("masv", SqlDbType.Char, 10).Value = ddtensv.SelectedValue.ToString().Trim();
        cmd.Parameters.Add("mamon", SqlDbType.Char, 10).Value = drpmon.SelectedValue.ToString().Trim();
        cmd.Parameters.Add("diemhs1", SqlDbType.Int).Value = int.Parse(txtdiemhs1.Text.ToString().Trim());
        cmd.Parameters.Add("diemhs2", SqlDbType.Int).Value = int.Parse(txtdiemhs2.Text.ToString().Trim());
        cmd.Parameters.Add("diemhs3", SqlDbType.Int).Value = int.Parse(txtdiemhs3.Text.ToString().Trim());
        cmd.Parameters.Add("diemtb", SqlDbType.Float).Value = float.Parse(txtdiemtb.Text.ToString().Trim());
        cmd.Parameters.Add("hocky", SqlDbType.Char, 10).Value = drphocky.Text.ToString().Trim();
        cmd.Parameters.Add("namhoc", SqlDbType.Char, 10).Value = txtnamhoc.Text.ToString().Trim();
        ac.ExcuteNonequery_sqlcommnand(cmd);
        laythongtin(drplop.SelectedValue.ToString().Trim(), drphocky.Text.ToString().Trim(), drpmon.SelectedValue.ToString().Trim());
    }
}
