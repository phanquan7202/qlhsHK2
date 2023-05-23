<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Admin_Lop.aspx.cs" Inherits="Admin_Lop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="17pt" 
        ForeColor="#0066FF" Text="Các Lớp Học"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <RowStyle BackColor="#EFF3FB" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <table cellpadding="3" cellspacing="0" style="width: 100%">
        <tr>
            <td style="padding-right: 10px; width: 50%; text-align: right">
                <asp:Label ID="Label2" runat="server" Text="Mã Lớp"></asp:Label>
            </td>
            <td style="text-align: left; padding-left: 5px; width: 50%">
                <asp:TextBox ID="txtmalop" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="padding-right: 10px; width: 50%; text-align: right">
                <asp:Label ID="Label3" runat="server" Text="Sỉ Số"></asp:Label>
            </td>
            <td style="text-align: left; padding-left: 5px; width: 50%">
                <asp:TextBox ID="txtsiso" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="padding-right: 10px; width: 50%; text-align: right">
                <asp:Label ID="Label4" runat="server" Text="Mã GV Chủ Nhiệm"></asp:Label>
            </td>
            <td style="text-align: left; padding-left: 5px; width: 50%">
                <asp:DropDownList ID="ddtengv" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="padding-right: 10px; text-align: center" colspan="2">
                <asp:Button ID="btnreport" runat="server" onclick="btnreport_Click" 
                    Text="Report" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
    <asp:ImageButton ID="imgthem" runat="server" ImageUrl="~/icon/Add.png" 
        ToolTip="Thêm mới" onclick="imgthem_Click" />
&nbsp;
    <asp:ImageButton ID="imgcapnhat" runat="server" ImageUrl="~/icon/Load.png" 
        ToolTip="Cập nhật" onclick="imgcapnhat_Click" />
&nbsp;
    <asp:ImageButton ID="imgxoa" runat="server" ImageUrl="~/icon/Delete.png" 
        ToolTip="Xóa" onclick="imgxoa_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

