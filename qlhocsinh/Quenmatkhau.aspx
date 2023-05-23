<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Quenmatkhau.aspx.cs" Inherits="Quenmatkhau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <asp:Label ID="Label5" runat="server" Text="Quên mật khẩu" Font-Size="25pt" 
        ForeColor="#FF0066"></asp:Label></center>
    <table align="center">
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label2" runat="server" Text="Password cấp 2"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpassc2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassc2" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label3" runat="server" Text="Password mới"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpassmoi" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpassmoi" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label4" runat="server" Text="Nhập lại Password mới"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnhaplaipassmoi" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassmoi" ControlToValidate="txtnhaplaipassmoi" 
                    Display="Dynamic" ErrorMessage="Phải giống với Password mới đã nhập"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Dangnhap.aspx">Trở lại trang đăng nhập</asp:HyperLink>
                <br />
                <asp:Button ID="btndoimatkhau" runat="server" Text="Đổi mật khẩu" 
                    onclick="btndoimatkhau_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

