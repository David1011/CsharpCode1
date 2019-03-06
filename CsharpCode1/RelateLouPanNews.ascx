<%@ control language="C#" autoeventwireup="true" inherits="RelateLouPanNews, House_FreeV2_deploy" %>
 <div class="titlehead">
     相关新闻
</div>
<asp:DataList ID="dlnews1" runat="server" Width="100%" EnableViewState="false">
<HeaderTemplate><table border="0" cellpadding="0" cellspacing="0" width="100%"></HeaderTemplate>
<FooterTemplate></table></FooterTemplate>
<ItemTemplate>
    <tr>
        <td class="lineheight">
            ·
            <a title='<%#Eval("Title") %>'  href='<%#FormatUrl.AskContentUrl(Eval("NewsID").ToString()) %>' target="_blank">
                <%#Common.FilterTitle(Eval("Title").ToString(), Eval("TitleColor").ToString(),15)%>
            </a>
        </td>
        <td class="lineheight"><%#Eval("AddDate","{0:d}").Substring(5)%></td>
    </tr>
</ItemTemplate>
</asp:DataList>
