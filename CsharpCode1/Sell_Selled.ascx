<%@ control language="C#" autoeventwireup="true" inherits="Sell_Selled, House_FreeV2_deploy" %>
<asp:DataList ID="dlselled" ItemStyle-CssClass="lineheight2" runat="server" Width="100%">
    <ItemTemplate>
        &nbsp;
        <a href='<%#FormatUrl.SellContentUrl(Convert.ToInt64(Eval("SellID").ToString())) %>' target=_blank>
            <%#Common.myStringWidthoutDot(Eval("Title").ToString(),12) %>
        </a>&nbsp;<span class="red"><%#Common.FilterSellPrice(Eval("SellPrice").ToString()) %></span>(<%#FilterUName(Eval("RealName").ToString(),Eval("LoginAcc").ToString()) %>)
    </ItemTemplate>
</asp:DataList>