<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dangnhap.aspx.cs" Inherits="Dangnhap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trường Cao Đẳng Công Nghệ Thủ Đức</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="margin: 80px 50px 10px 50px;">
    
        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/image/Logo.jpg" 
            NavigateUrl="http://tdc.edu.vn" ToolTip="Trường Cao Đẳng Công Nghệ Thủ Đức">HyperLink</asp:HyperLink>
        <br />
        <br />
    
    </div>
    
    <table align="center" class="style1" style="text-align: right; width: 240px;">
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="15pt" 
                    ForeColor="#0066FF" Text="Đăng nhập vào hệ thống TDC"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server" Text="Username" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtuser" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtpass" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Quenmatkhau.aspx">Bạn Quên Mật Khẩu?</asp:HyperLink>
                <br />
                <asp:ImageButton ID="imgdangnhap" runat="server" 
                    ImageUrl="~/image/dangnhap.png" ToolTip="Đăng nhập vào hệ thống TDC" 
                    onclick="imgdangnhap_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
