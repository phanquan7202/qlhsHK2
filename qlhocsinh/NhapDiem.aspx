<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="NhapDiem.aspx.cs" Inherits="NhapDiem" Title="Giáo Viên - Nhập Điểm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <table class="style1" style="text-align: center">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Chọn lớp"></asp:Label>
&nbsp;
                <asp:DropDownList ID="drplop" runat="server" 
                    onselectedindexchanged="drplop_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Chọn Học Kỳ"></asp:Label>
                <asp:DropDownList ID="drphocky" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drphocky_SelectedIndexChanged">
                    <asp:ListItem>I</asp:ListItem>
                    <asp:ListItem>II</asp:ListItem>
                    <asp:ListItem>III</asp:ListItem>
                    <asp:ListItem>IV</asp:ListItem>
                </asp:DropDownList>
            &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Chọn môn"></asp:Label>
&nbsp;&nbsp;
                <asp:DropDownList ID="drpmon" runat="server" AutoPostBack="True">
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:Button ID="btnbatdau" runat="server" onclick="btnbatdau_Click" 
                    Text="Bắt đầu" />
                &nbsp;
                </td>
        </tr>
        <tr>
            <td style="text-align: center">
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
                <table cellpadding="3" cellspacing="0" class="style2">
                    <tr>
                        <td style="text-align: right; padding-right: 8px">
                            <asp:Label ID="Label4" runat="server" Text="Tên Sinh Viên"></asp:Label>
                        </td>
                        <td style="text-align: left; padding-left: 8px">
                            <asp:DropDownList ID="ddtensv" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; padding-right: 8px">
                            <asp:Label ID="Label5" runat="server" Text="Điểm Hệ Số 1"></asp:Label>
                        </td>
                        <td style="padding-left: 8px; text-align: left">
                            <asp:TextBox ID="txtdiemhs1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; padding-right: 8px">
                            <asp:Label ID="Label6" runat="server" Text="Điểm Hệ Số 2"></asp:Label>
                        </td>
                        <td style="text-align: left; padding-left: 8px">
                            <asp:TextBox ID="txtdiemhs2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; padding-right: 8px">
                            <asp:Label ID="Label7" runat="server" Text="Điểm Hệ Số 3"></asp:Label>
                        </td>
                        <td style="text-align: left; padding-left: 8px">
                            <asp:TextBox ID="txtdiemhs3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; padding-right: 8px">
                            <asp:Label ID="Label8" runat="server" Text="Điểm Trung Bình"></asp:Label>
                        </td>
                        <td style="text-align: left; padding-left: 8px">
                            <asp:TextBox ID="txtdiemtb" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; padding-right: 8px">
                            <asp:Label ID="Label9" runat="server" Text="Năm Học"></asp:Label>
                        </td>
                        <td style="text-align: left; padding-left: 8px">
                            <asp:TextBox ID="txtnamhoc" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:ImageButton ID="imgcapnhat" runat="server" ImageUrl="~/icon/Add.png" 
                    ToolTip="Cập nhật" onclick="imgcapnhat_Click" />
            &nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/Load.png" 
                    onclick="ImageButton1_Click" />
            </td>
        </tr>
    </table>
</center>
</asp:Content>

