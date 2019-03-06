<%@ control language="C#" autoeventwireup="true" inherits="AgentWT, House_FreeV2_deploy" %>

<table cellpadding="0" cellspacing="2" border="0" width="250" align="left" id="wt">
    <tr>
        <td nowrap class="tableleft">
            &nbsp;<span class="itemtitle">委托人：</span>
        </td>
        <td align="left" class="dot">
        <asp:TextBox id="tbwtname" runat="server" Height="22px" Width="90px"></asp:TextBox>&nbsp;
        </td>
    </tr>
    <tr>
        <td nowrap class="tableleft">
            &nbsp;<span class="itemtitle">联系电话：</span>
        </td>
        <td align="left" class="dot">
            <asp:TextBox id="tbwttel" runat="server" Height="22px" Width="155px"></asp:TextBox>&nbsp;
        </td>
    </tr>
    <tr>
        <td nowrap class="tableleft">
            &nbsp;<span class="itemtitle">期望价格：</span>
        </td>
        <td align="left" class="dot">
            <asp:TextBox id="tbwtprice" runat="server" Width="49px"></asp:TextBox>
            <asp:DropDownList ID="dlprice" runat="server" Height="22px" Width="102px">
                <asp:ListItem>售价（万）</asp:ListItem>
                <asp:ListItem>租金（元/月）</asp:ListItem>
                <asp:ListItem>租金（元/天）</asp:ListItem>
                <asp:ListItem>租金（元/平方米）</asp:ListItem>
            </asp:DropDownList></td>
    </tr>
        <tr>
        <td nowrap class="tableleft">
            &nbsp;<span class="itemtitle">要求区域：</span>
        </td>
        <td align="left" class="dot">
            <asp:TextBox id="tbregion" runat="server" Height="22px" Width="155px"></asp:TextBox>&nbsp;
        </td>
    </tr>
    <tr>
        <td class="tableleft" nowrap="nowrap" >
            &nbsp;<span class="itemtitle">详细说明：</span></td>
        <td align="left" class="dot">
            <asp:TextBox id="tbwtcontent" runat="server" Height="113px" TextMode="MultiLine" Width="152px"></asp:TextBox></td>
    </tr>
    <tr>
        <td colspan="2" align="left">
            &nbsp;
        </td>
    </tr>
    <tr>
        
        <td colspan=2>
            &nbsp;<asp:Button ID="btnok" runat=server OnClientClick="return checkwtblank()"  Text="免费版不能使用网上委托" OnClick="btnok_Click"  Enabled=false />
        </td>
    </tr>
</table>