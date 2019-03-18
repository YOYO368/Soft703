<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.Master" AutoEventWireup="true" CodeBehind="ModifySubDisplayMenu.aspx.cs" Inherits="NuiLunchBoxProject.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <fieldset style="width: 90%;float:left;margin-left:15px">
            <legend> Add New Menu</legend>
            <table style="width: 702px; float:left;margin-left:20px;margin-bottom:10px; height: 148px;">
                <tr>
                    <td style="width: 142px; height: 23px;">
                        <asp:Label ID="Label14" runat="server" AssociatedControlID="txtMenuName" Text="Menu Group :"></asp:Label>
                    </td>
                    <td style="width: 288px; height: 23px;">
                        <asp:TextBox ID="txtMenuGroup" runat="server" Width="270px" ReadOnly="True" EnableViewState="False" Enabled="False"></asp:TextBox>
                    </td>
                    <td style="width: 266px; height: 23px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 142px">
                        <asp:Label ID="Label3" runat="server" AssociatedControlID="txtMenuName" Text="Menu Name :"></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtMenuName" runat="server" Width="270px"></asp:TextBox>
                    </td>
                    <td style="width: 266px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMenuName" EnableTheming="True" ErrorMessage="Please input Menu Name" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 142px">
                        <asp:Label ID="Label4" runat="server" Text="Menu Price : "></asp:Label>
                    </td>
                    <td style="width: 288px">
                        <asp:TextBox ID="txtMenuPrice" runat="server" TextMode="Number" Width="270px"></asp:TextBox>
                    </td>
                    <td style="width: 266px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMenuPrice" EnableTheming="True" ErrorMessage="Please input Menu Price" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 142px">
                        <asp:Label ID="Label5" runat="server" Text="Image Path :"></asp:Label>
                    </td>
                   <td style="width: 288px">
                        <asp:FileUpload ID="ImageUpload" runat="server" Width="272px" accept=".jpg, .jpeg, .png"/>
                   </td>
                </tr>
                <tr>
                    <td style="width: 142px; height: 40px">
                        <asp:Label ID="Label13" runat="server" AssociatedControlID="txtDescription" Text="Description :"></asp:Label>
                    </td>
                    <td style="width: 288px; height: 40px;">
                        <asp:TextBox ID="txtDescription" runat="server" MaxLength="500" TextMode="MultiLine" Width="268px"></asp:TextBox>
                    </td>
                    <td style="width: 266px; height: 40px;"></td>
                </tr>
                <tr>
                    <td colspan="3" style="height:3px"></td>
                </tr>
                <tr>
                    <td style="width: 142px">&nbsp;</td>
                    <td style="width: 288px; text-align: left;" class="auto-style2">
                        <asp:Button class="button button1" ID="btnAddMenu" runat="server" OnClick="btnAddData_Click" Text="Add this table" Width="270px" height="31px" Font-Size="Medium" CausesValidation="False" style="margin-left: 0px" />
                    </td>
                    <td style="width: 266px">
                        <asp:Button class="button button3" ID="btnAddMainView" runat="server" OnClick="btnAddMainMenu_Click" Text="Add main view table" Width="270px" height="31px" Font-Size="Medium" CausesValidation="False" style="margin-left: 0px" />
                    </td>
                </tr>
           </table>
        </fieldset>
        <fieldset style="width: 90%;float:left;margin-left:15px">
            <legend>Menu View</legend>
            <asp:ListView ID="MenuList" runat="server">
                 <ItemTemplate>
                     <div style="float:left;width:25%;">
                        <div><a href="ManagerMenuDetail.aspx?Menu_Group=<%=Session["ClickGroup"]%>&Menu_Name=<%#Eval("Menu_Name")%>">
                        <img style="width:100%" src='<%#Eval("Image_Path") %>', alt='<%#Eval("Menu_Name") %>' /></a></div>
                        <div><center><asp:Label ID="Label1" runat="server" Text='<%#Eval("Menu_Name") %>'></asp:Label></center></div>
                     </div>
           </ItemTemplate>
        </asp:ListView>
    </fieldset>
</asp:Content>
