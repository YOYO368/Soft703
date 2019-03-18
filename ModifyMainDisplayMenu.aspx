<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.Master" AutoEventWireup="true" CodeBehind="ModifyMainDisplayMenu.aspx.cs" Inherits="NuiLunchBoxProject.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset style="width: 100%; margin-top:10px">
        <legend> Delete Main Display Menu</legend>
        <br />
        <table style="width: 100%;margin-left:20px;margin-bottom:10px">
            <tr>
                <td style="height: 35px; width: 30%;">
                    <asp:Label ID="Label1" runat="server" Text="Selected :" Height="26px"></asp:Label>
                </td>
                <td style="height: 35px; width: 20%;">
                    <asp:Label ID="Label2" runat="server" style="margin-left: 7px" Text="0" Width="30px" Height="26px"></asp:Label>
                </td>    
                <td style="height: 35px; width: 50%;">
                    <asp:Button class="button button1" ID="Button1" runat="server" OnClick="btnDelete_Click1" Text="Delete" Width="250px" CausesValidation="False" Height="35px" />
                </td>
            </tr>
        </table>
    </fieldset>
    <fieldset style="width: 100%; margin-top:10px">
        <legend> View Main Display Menu</legend>
        <br />
        <table style="width: 100%;margin-left:20px;">
            <tr>
                <td class="auto-style2" style="width: 300px; text-align: left;">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Name" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="GroupNo1" runat="server" Text="GroupNo1" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style2" style="width: 300px; text-align: left;">
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Name" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="GroupNo2" runat="server" Text="GroupNo2;" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2" style="width: 300px; text-align: left;">
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Name" AutoPostBack="True" OnCheckedChanged="CheckBox3_CheckedChanged" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="GroupNo3" runat="server" Text="GroupNo3" Visible="False"></asp:Label>
&nbsp;
                </td>
                <td class="auto-style2" style="width: 300px; text-align: left;">
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="Name" AutoPostBack="True" OnCheckedChanged="CheckBox4_CheckedChanged" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="GroupNo4" runat="server" Text="GroupNo4" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 300px">
                    <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" />
                </td>
                <td class="auto-style2" style="width: 300px">
                    <asp:Image ID="Image2" runat="server" Height="200px" Width="200px" />
                </td>
                <td class="auto-style2" style="width: 300px">
                    <asp:Image ID="Image3" runat="server" Height="200px" Width="200px" />
                </td>
                <td class="auto-style2" style="width: 300px">
                    <asp:Image ID="Image4" runat="server" Height="200px" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 300px; text-align: left;">
                    <asp:CheckBox ID="CheckBox5" runat="server" Text="Name" AutoPostBack="True" OnCheckedChanged="CheckBox5_CheckedChanged" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="GroupNo5" runat="server" Text="GroupNo5" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2" style="width: 300px; text-align: left;">
                    <asp:CheckBox ID="CheckBox6" runat="server" Text="Name" AutoPostBack="True" OnCheckedChanged="CheckBox6_CheckedChanged" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="GroupNo6" runat="server" Text="GroupNo6" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2" style="width: 300px; text-align: left;">
                    <asp:CheckBox ID="CheckBox7" runat="server" Text="Name" AutoPostBack="True" OnCheckedChanged="CheckBox7_CheckedChanged" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="GroupNo7" runat="server" Text="GroupNo7" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2" style="width: 300px; text-align: left;">
                    <asp:CheckBox ID="CheckBox8" runat="server" Text="Name" AutoPostBack="True" OnCheckedChanged="CheckBox8_CheckedChanged" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="GroupNo8" runat="server" Text="GroupNo8" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 300px">
                    <asp:Image ID="Image5" runat="server" Height="200px" Width="200px" />
                </td>
                <td class="auto-style2" style="width: 300px">
                    <asp:Image ID="Image6" runat="server" Height="200px" Width="200px" />
                </td>
                <td class="auto-style2" style="width: 300px">
                    <asp:Image ID="Image7" runat="server" Height="200px" Width="200px" />
                </td>
                <td class="auto-style2" style="width: 300px">
                    <asp:Image ID="Image8" runat="server" Height="200px" Width="200px" />
                </td>
           </tr>
        </table>
    </fieldset>
</asp:Content>
