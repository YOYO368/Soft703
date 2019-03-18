<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="NuiLunchBoxProject.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <fieldset style="width: 90%;float:left;margin-left:15px;margin-left:40px">
        <asp:GridView ID="CartView" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="4" ForeColor="#333333"
                GridLines="None" CssClass="table" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Menu_Name" HeaderText="Menu Name"></asp:BoundField>
                    <asp:BoundField DataField="Menu_Price" HeaderText="Price"></asp:BoundField>
                    <asp:BoundField DataField="Menu_Count" HeaderText="Count"></asp:BoundField>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate >
                          <asp:Image ID="Image1" runat="server" ImageUrl ='<%# Eval("Image_Path") %>' height="120px" Width="120px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
			            <ItemTemplate>
                             <asp:Button ID="btnOrder" runat="server" CssClass="button button2" Text="Order" OnClick="OnOrderItem" CommandName='<%# Eval("Menu_Name")%>'  CommandArgument='<%# Eval("Menu_count")%>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnDelete" runat="server" CssClass="button button3" Text="Delete" OnClick="OnDeleteItem" CommandName='<%# Eval("Menu_Name")%>' />
		                </ItemTemplate>
                    </asp:TemplateField>
	            </Columns>
            </asp:GridView>
    </fieldset>
</asp:Content>
