<%@ control language="C#" autoeventwireup="true" inherits="Shops_Deal, House_FreeV2_deploy" %>
<asp:DataList ID="dlrent" runat="server" ItemStyle-CssClass="lineheight2" Width="100%">
    <HeaderTemplate><table width="100%"></HeaderTemplate>
    <FooterTemplate></table></FooterTemplate>
    <ItemTemplate>
        <tr>
            <td>
                · <%#FilterUName(Eval("RealName").ToString(),Eval("LoginAcc").ToString()) %>
            </td>
            <td width="50"><%#FilterRegionName(Eval("ShopID").ToString()) %></td>
            <td width="70"><span class="red"><b><%#Eval("RentDealCounts") %></b></span>&nbsp;套(租)</td>
        </tr>
    </ItemTemplate>
</asp:DataList>

<hr class="dothr" />

<asp:DataList ID="dlselled" ItemStyle-CssClass="lineheight2" runat="server" Width="100%">
   <HeaderTemplate><table width="100%"></HeaderTemplate>
    <FooterTemplate></table></FooterTemplate>
    <ItemTemplate>
        <tr>
            <td>
                · <%#FilterUName(Eval("RealName").ToString(),Eval("LoginAcc").ToString()) %>
            </td>
            <td width="50"><%#FilterRegionName(Eval("ShopID").ToString()) %></td>
            <td width="70"><span class="red"><b><%#Eval("SellDealCounts") %></b></span>&nbsp;套(售)</td>
        </tr>
       </ItemTemplate>
</asp:DataList>