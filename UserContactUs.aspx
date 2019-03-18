<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.Master" AutoEventWireup="true" CodeBehind="UserContactUs.aspx.cs" Inherits="NuiLunchBoxProject.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset style="margin-top:50px; margin-left:100px">
        <legend>Contact us</legend>
        <br />
        <table>
            <tr>
                <th style="width:200px">&nbsp;&nbsp;EMAIL :</th>  
                <td style="width:200px">TellMe@NuiLunchBox.co.nz</td>
            </tr>
            <tr>
                <th style="width:200px">&nbsp;&nbsp;PHONE :</th>  
                <td style="width:200px"> 027 268 4940</td>
            </tr>
            <tr>
                <th style="width:200px">&nbsp;&nbsp;PHYSICAL ADDRESS :</th>
            </tr>
            <tr>
                <td style="width:200px">
                <td style="width:200px"> 2 beach road</td>
            </tr>
            <tr>
                <td style="width:200px">
                <td style="width:200px"> Auckland CBD</td>
            </tr> 
            <tr>
                <td style="width:200px">
                <td style="width:200px"> 1010</td>
            </tr> 
            <tr>
                <td style="width:200px">
                <td style="width:200px"> New Zealand</td>
            </tr>
        </table>
    </fieldset>
    <fieldset style="margin-left:100px">
            <legend>Feedback</legend>
        <br />
        <table>
            <tr>
                <th>&nbsp;&nbsp;EMAIL US</th>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <th colspan ="2">We welcome your questions, suggestions or comments about our service. Please note, the feedback form will </th>
            </tr>
            <tr>
                <th colspan ="2">not accept a message longer than 250 characters. Alternatively, please email us at TellMe@NuiLunchBox.co.nz</th>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td style="width: 200px; height: 30px">
                <asp:Label ID="UserFirstName" runat="server" AssociatedControlID="txtUserFirstName" Text="Fist Name :"></asp:Label>
                </td>
                <td style="width: 400px;height: 30px">
                    <asp:TextBox ID="txtUserFirstName" runat="server" Width="300px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 200px; height: 30px">
                <asp:Label ID="UserSecondName" runat="server" AssociatedControlID="txtUserSecondName" Text="Second Name :"></asp:Label>
                </td>
                <td style="width: 400px;height: 30px">
                    <asp:TextBox ID="txtUserSecondName" runat="server" Width="300px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 200px; height: 30px">
                <asp:Label ID="UserEmail" runat="server" AssociatedControlID="txtUserEmail" Text="Email :"></asp:Label>
                </td>
                <td style="width: 400px;height: 30px">
                    <asp:TextBox ID="txtUserEmail" runat="server" Width="300px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th rowspan="4" style="width: 200px; height: 30px">Message</th>
                <td rowspan="4" style="width: 400px">
                    <asp:TextBox ID="txtMessage" runat="server" Width="300px" Height="200px" Rows="10" TextMode="MultiLine" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button class="w3-teal" ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Send" Width="100px" Enabled="False" Height="43px" />
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>
