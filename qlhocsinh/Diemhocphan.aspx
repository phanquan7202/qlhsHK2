<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Diemhocphan.aspx.cs" Inherits="Default3" Title="Sinh Viên - Điểm Học Phần" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:Image ID="Image8" runat="server" Height="90px" ImageUrl="~/image/diem.jpg" 
    Width="120px" />
&nbsp;
<asp:Image ID="Image9" runat="server" ImageUrl="~/image/bangdiem.png" />
</p>
<p>
    <asp:Label ID="Label1" runat="server" Text="Chọn Học Kỳ: "></asp:Label>
&nbsp;<asp:DropDownList ID="ddhocky" runat="server">
        <asp:ListItem>I</asp:ListItem>
        <asp:ListItem>II</asp:ListItem>
        <asp:ListItem>III</asp:ListItem>
        <asp:ListItem>IV</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;<asp:Button ID="btnhienthi" runat="server" onclick="btnhienthi_Click" 
        Text="Hiển Thị" />
&nbsp;&nbsp;
    </p>
<p>
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
    <br />
</p>
</asp:Content>

