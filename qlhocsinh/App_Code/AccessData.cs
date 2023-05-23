using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for AccessData
/// </summary>
public class AccessData
{
    private string ConnectString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|MyDatabase.mdf;Integrated Security=True;User Instance=True";
    public SqlConnection GetConnect()
    {
        return new SqlConnection(ConnectString);
    }
    //datatable - string
    public DataTable GetTable(string sql)
    {
        SqlConnection con = GetConnect();
        SqlDataAdapter ad = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        con.Close();
        return dt;
    }
    //datatable - sqlcommand
    public DataTable laydulieu(SqlCommand CMD)
    {
        CMD.Connection = GetConnect();
        SqlDataAdapter DA = new SqlDataAdapter(CMD);
        DataSet DS = new DataSet();
        DA.Fill(DS);
        return DS.Tables[0];

    }
    //executenonquery
    public void ExeCuteNonquery(string sql)
    {
        SqlConnection con = GetConnect();
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
    }

    public void ExcuteNonequery_sqlcommnand(SqlCommand cmd)
    {
        SqlConnection con = GetConnect();
        con.Open();
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
    }
    //ExecuteScalar trả về giá trị
    public string ExecuteScalar(string sql)
    {
        SqlConnection con = GetConnect();
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        string kq = cmd.ExecuteScalar().ToString();
        con.Close();
        cmd.Dispose();
        return kq;
    }

    public SqlDataReader ExecuteReader(string sql)
    {
        SqlConnection con = GetConnect();
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader reader = cmd.ExecuteReader();
        return reader;
    }
}
