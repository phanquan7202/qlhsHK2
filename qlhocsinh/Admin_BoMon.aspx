<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Admin_BoMon.aspx.cs" Inherits="Admin_BoMon" Title="Administrator - Bộ Môn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" 
        ForeColor="#33CC33" Text="Bộ Môn"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="mamon" 
        ForeColor="#333333" GridLines="None" PageSize="5">
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="mamon" HeaderText="Mã môn" ReadOnly="True" 
                SortExpression="mamon" />
            <asp:BoundField DataField="tenmon" HeaderText="Tên môn" 
                SortExpression="tenmon" />
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [mon] WHERE [mamon] = @mamon" 
        InsertCommand="INSERT INTO [mon] ([mamon], [tenmon]) VALUES (@mamon, @tenmon)" 
        SelectCommand="SELECT * FROM [mon]" 
        UpdateCommand="UPDATE [mon] SET [tenmon] = @tenmon WHERE [mamon] = @mamon">
        <DeleteParameters>
            <asp:ControlParameter ControlID="txtmamon" Name="mamon" PropertyName="Text" 
                Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="txttenmon" Name="tenmon" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtmamon" Name="mamon" PropertyName="Text" 
                Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtmamon" Name="mamon" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txttenmon" Name="tenmon" PropertyName="Text" 
                Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />    
        <br />
        <table align="center" style="width: 100%; text-align: right;">
            <tr>
                <td style="width: 50%">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Mã Môn"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtmamon" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtmamon" Display="Dynamic" 
                        ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 50%">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Tên Môn"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="txttenmon" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txttenmon" Display="Dynamic" 
                        ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;" colspan="2">
                    <asp:Button ID="btnreport" runat="server" onclick="btnreport_Click" 
                        Text="Report" />
                </td>
            </tr>
        </table>
    <br />
        <asp:ImageButton ID="imgthem" runat="server" ImageUrl="~/icon/Add.png" 
            ToolTip="Thêm mới" onclick="imgthem_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="imgcapnhat" runat="server" ImageUrl="~/icon/Load.png" 
            ToolTip="Cập nhật" onclick="imgcapnhat_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="imgxoa" runat="server" ImageUrl="~/icon/Delete.png" 
            ToolTip="Xóa" onclick="imgxoa_Click" />
</asp:Content>

