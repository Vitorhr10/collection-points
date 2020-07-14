<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="itens.aspx.cs" Inherits="recyclable_materials.itens" %>

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
            Cadastre um Item de coleta
            <br />
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="item_id,Expr1" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="item_id" HeaderText="item_id" InsertVisible="False" ReadOnly="True" SortExpression="item_id" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="recommendations" HeaderText="recommendations" SortExpression="recommendations" />
                    <asp:TemplateField HeaderText="point" SortExpression="point">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("point") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="points1" DataTextField="point" DataValueField="point" SelectedValue='<%# Bind("point") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="points1" runat="server" ConnectionString="<%$ ConnectionStrings:Points %>" SelectCommand="SELECT * FROM [points] ORDER BY [point]"></asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("point") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField ButtonType="Button" CommandName="Insert" Text="Inserir" />
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="item_id,Expr1" DataSourceID="SqlDataSource1" EmptyDataText="Não há registros de dados a serem exibidos." ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="item_id" HeaderText="item_id" InsertVisible="False" ReadOnly="True" SortExpression="item_id" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="recommendations" HeaderText="recommendations" SortExpression="recommendations" />
                    <asp:TemplateField HeaderText="point" SortExpression="point">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="points2" DataTextField="point" DataValueField="point" SelectedValue='<%# Bind("point") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="points2" runat="server" ConnectionString="<%$ ConnectionStrings:Points %>" SelectCommand="SELECT * FROM [points] ORDER BY [point]"></asp:SqlDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("point") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Points %>" DeleteCommand="DELETE FROM [items] WHERE [item_id] = @item_id" InsertCommand="INSERT INTO [items] ([title], [recommendations], [point]) VALUES (@title, @recommendations, @point)" SelectCommand="SELECT items.item_id, items.title, items.recommendations, items.point, points.point AS Expr1 FROM items INNER JOIN points ON items.point = points.point" UpdateCommand="UPDATE [items] SET [title] = @title, [recommendations] = @recommendations, [point] = @point WHERE [item_id] = @item_id">
                <DeleteParameters>
                    <asp:Parameter Name="item_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="recommendations" Type="String" />
                    <asp:Parameter Name="point" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="recommendations" Type="String" />
                    <asp:Parameter Name="point" Type="String" />
                    <asp:Parameter Name="item_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <div style="text-align: right";><a href="default.aspx">Voltar</a></div>
        </div>
    </form>
    </center>
</body>
</html>
