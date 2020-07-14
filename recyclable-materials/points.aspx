<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="points.aspx.cs" Inherits="recyclable_materials.points" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <center>
    <div style="text-align: center; width: 50%;">
    <form id="form1" runat="server">
        <div style="text-align: center">
            Cadastre um Ponto de coleta
            <br />
            <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="point" DataSourceID="conexao" DefaultMode="Insert" Height="50px" Width="125px">
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="point" HeaderText="point" ReadOnly="True" SortExpression="point" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="expedient" HeaderText="expedient" SortExpression="expedient" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="uf" HeaderText="uf" SortExpression="uf" />
                        <asp:ButtonField ButtonType="Button" CommandName="Insert" Text="Inserir" />
                    </Fields>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:DetailsView>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="point" DataSourceID="conexao" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="point" HeaderText="point" ReadOnly="True" SortExpression="point" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="expedient" HeaderText="expedient" SortExpression="expedient" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="uf" HeaderText="uf" SortExpression="uf" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="conexao" runat="server" ConnectionString="<%$ ConnectionStrings:Points %>" DeleteCommand="DELETE FROM [points] WHERE [point] = @point" InsertCommand="INSERT INTO [points] ([point], [address], [expedient], [phone], [city], [uf]) VALUES (@point, @address, @expedient, @phone, @city, @uf)" SelectCommand="SELECT * FROM [points]" UpdateCommand="UPDATE [points] SET [address] = @address, [expedient] = @expedient, [phone] = @phone, [city] = @city, [uf] = @uf WHERE [point] = @point">
                <DeleteParameters>
                    <asp:Parameter Name="point" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="point" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="expedient" Type="String" />
                    <asp:Parameter Name="phone" Type="Int32" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="uf" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="expedient" Type="String" />
                    <asp:Parameter Name="phone" Type="Int32" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="uf" Type="String" />
                    <asp:Parameter Name="point" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <div style="text-align: right";><a href="default.aspx">Voltar</a></div>
        </div>
    </form>
    </div>
    </center>
</body>
</html>
