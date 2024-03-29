﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.Master" AutoEventWireup="true" CodeBehind="ManagerMenuDetail.aspx.cs" Inherits="NuiLunchBoxProject.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width=100%>
        <tr>
            <td style="width:50%">
                <table style="width: 100%; float:left; margin-left:150px">
                    <tr>
                        <td class="auto-style2" style="text-align: left"><asp:Label ID="Label3" runat="server" EnableViewState="True" Text=" " Width="300px" Font-Size="30px" FontColor="red"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Image ID="Image1" runat="server" Height="400px" Width="400px" /></td>
                    </tr>
                </table>
            </td>
            <td style="width:50%">
                <table style="width:600px; float:left; height: 400px;">
                    <tr>
                        <td style="height:30px; width: 270px;">
                            <asp:Label ID="Label_Groupno" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 270px; height: 20px">
                            <asp:Label ID="Label_Name" runat="server" AssociatedControlID="txtMenuName" EnableViewState="False" Text="Menu Name : " Width="70px"></asp:Label>
                            <asp:TextBox ID="txtMenuName" runat="server" Height="16px" Width="170px" Enabled="False"></asp:TextBox>
                        </td>
                        <td rowspan="6">
                        <asp:Button class="Button_style" ID="btnModify" runat="server" Height="45px" Text="Modify" Width="130px" OnClick="btnModify_Click" Visible="False" />
                        <br />
                        <asp:Button class="Button_style" ID="btnSave" runat="server" Height="45px" Text="Save" Width="130px" OnClick="btnSave_Click" Visible="False" />
                            <br />
                        <asp:Button class="Button_style" ID="btnDelete" runat="server" Height="45px" Text="Delete" Width="130px" Visible="False" OnClick="btnDelete_Click" />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 270px; height: 20px; text-align: left;">
                        <asp:Label ID="Label1" runat="server" AssociatedControlID="txtMenuPrice" EnableViewState="False" Text="Menu Price : "></asp:Label>
                            &nbsp;<asp:TextBox ID="txtMenuPrice" runat="server" Height="16px" Width="135px" Enabled="False"></asp:TextBox>
                            <asp:Label ID="Label4" runat="server" AssociatedControlID="txtMenuPrice" Text="NZ $"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 270px">
                        <asp:FileUpload ID="ImageUpload" runat="server" Width="264px" Visible="False" accept=".jpg, .jpeg, .png" Enabled="False" />
                        </td>
                     </tr>
                     <tr>
                        <td style="width: 270px">
                        <asp:Label ID="Label2" runat="server" AssociatedControlID="txtMenuDescription" EnableViewState="False" Text="Menu Description : "></asp:Label>
                        </td>
                     </tr>
                     <tr>
                        <td rowspan="2" style="width: 270px">
                        <asp:TextBox ID="txtMenuDescription" runat="server" Height="316px" Width="258px" Rows="30" TextMode="MultiLine" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
