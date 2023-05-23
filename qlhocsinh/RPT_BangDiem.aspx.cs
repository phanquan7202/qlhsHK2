﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using System.Data.SqlClient;
using System.Data;

public partial class RPT_BangDiem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AccessData ac = new AccessData();
        ReportDocument rpt = new ReportDocument();
        rpt.Load(MapPath("~/crystalreportBD.rpt"));
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = ac.GetConnect();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "st_rpt_bangdiem";
        rpt.SetDataSource(ac.laydulieu(cmd));
        CrystalReportViewer1.ReportSource = rpt;
    }
}
