<%@ Page Title="Sinh Viên - Giáo Viên Bộ Môn" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Giaovienbomon.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:Label ID="Label2" runat="server" Font-Size="18pt" ForeColor="#FF6699" 
        Text="Giáo viên Bộ Môn"></asp:Label>
</p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Chọn Học Kỳ: "></asp:Label>
        <asp:DropDownList ID="ddhocky" runat="server">
            <asp:ListItem>I</asp:ListItem>
            <asp:ListItem>II</asp:ListItem>
            <asp:ListItem>III</asp:ListItem>
            <asp:ListItem>IV</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;
        <asp:Button ID="btnhienthi" runat="server" onclick="btnhienthi_Click" 
            Text="Hiển Thị" />
    <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Width="100%">
            <RowStyle BackColor="#EFF3FB" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
</p>
</asp:Content>

