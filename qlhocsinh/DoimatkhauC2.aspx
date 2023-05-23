<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="DoimatkhauC2.aspx.cs" Inherits="DoimatkhauC2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <asp:Label ID="Label5" runat="server" Text="Đổi mật khẩu Cấp 2" Font-Size="25pt" 
        ForeColor="#FF0066"></asp:Label></center>
    <table align="center" class="style1">
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label2" runat="server" Text="Password cấp 2 cũ"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpasscuc2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpasscuc2" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label3" runat="server" Text="Password cấp 2 mới"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpassmoic2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpassmoic2" Display="Dynamic" 
                    ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 50%">
                <asp:Label ID="Label4" runat="server" Text="Nhập lại Password cấp 2 mới"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnhaplaipassc2moi" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassmoic2" ControlToValidate="txtnhaplaipassc2moi" 
                    Display="Dynamic" ErrorMessage="Phải giống với Password mới đã nhập"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Dangnhap.aspx">Trở về trang đăng nhập</asp:HyperLink>
                <br />
                <asp:Button ID="btndoimatkhau" runat="server" Text="Đổi mật khẩu" 
                    onclick="btndoimatkhau_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

