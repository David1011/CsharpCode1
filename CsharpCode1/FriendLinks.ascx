<%@ control language="C#" autoeventwireup="true" inherits="FriendLinks, House_FreeV2_deploy" %>
<div class="columncontain">
<div class="border">
    <div class="titlehead">
        <a href='<%=FormatUrl.LinksUrl() %>' class="black">友情链接</a> - <span class="font12"><a href='<%=FormatUrl.LinksUrl()+"#addl" %>' class="black">申请友情链接</a> </span>
    </div>
    <div>
        <asp:DataList ID="dllinks"  ItemStyle-CssClass="linkitem" runat="server" Width="100%" ItemStyle-HorizontalAlign="left" RepeatLayout="table"  EnableViewState="false" RepeatDirection="horizontal" RepeatColumns="10">
            <ItemTemplate>
                <a href='<%#Eval("SiteUrl") %>' target="_blank"><%#Eval("SiteName") %></a>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>
</div>