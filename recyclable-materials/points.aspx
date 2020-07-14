<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="points.aspx.cs" Inherits="recyclable_materials.points" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div style="text-align: center">
            Cadastro dos pontos de coleta<br />
            <br />
            <a href="points.aspx">Pontos de coleta</a><br />
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="point_id" DataSourceID="conexao" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                <EditRowStyle BackColor="#7C6F57" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="point_id" HeaderText="point_id" InsertVisible="False" ReadOnly="True" SortExpression="point_id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="expedient" HeaderText="expedient" SortExpression="expedient" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="uf" HeaderText="uf" SortExpression="uf" />
                    <asp:BoundField DataField="recommendations" HeaderText="recommendations" SortExpression="recommendations" />
                    <asp:ButtonField ButtonType="Button" CommandName="Insert" Text="Inserir" />
                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="point_id" DataSourceID="conexao" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="point_id" HeaderText="point_id" InsertVisible="False" ReadOnly="True" SortExpression="point_id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="expedient" HeaderText="expedient" SortExpression="expedient" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="uf" HeaderText="uf" SortExpression="uf" />
                    <asp:BoundField DataField="recommendations" HeaderText="recommendations" SortExpression="recommendations" />
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
            <asp:SqlDataSource ID="conexao" runat="server" ConnectionString="<%$ ConnectionStrings:Points %>" DeleteCommand="DELETE FROM [points] WHERE [point_id] = @point_id" InsertCommand="INSERT INTO [points] ([name], [address], [expedient], [phone], [city], [uf], [recommendations]) VALUES (@name, @address, @expedient, @phone, @city, @uf, @recommendations)" SelectCommand="SELECT * FROM [points]" UpdateCommand="UPDATE [points] SET [name] = @name, [address] = @address, [expedient] = @expedient, [phone] = @phone, [city] = @city, [uf] = @uf, [recommendations] = @recommendations WHERE [point_id] = @point_id">
                <DeleteParameters>
                    <asp:Parameter Name="point_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="expedient" Type="String" />
                    <asp:Parameter Name="phone" Type="Int32" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="uf" Type="String" />
                    <asp:Parameter Name="recommendations" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="expedient" Type="String" />
                    <asp:Parameter Name="phone" Type="Int32" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="uf" Type="String" />
                    <asp:Parameter Name="recommendations" Type="String" />
                    <asp:Parameter Name="point_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <div style="text-align: right";><a href="default.aspx">Voltar</a></div>
        </div>
    </form>
    </center>
</body>
</html>
