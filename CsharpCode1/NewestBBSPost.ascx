<%@ control language="C#" autoeventwireup="true" inherits="NewestBBSPost, House_FreeV2_deploy" %>
<div class="border">
<div class="titlehead">
    <div class="floatleft">
        <a href='<%=FormatUrl.BBSDefaultUrl() %>'>房产论坛&nbsp;·&nbsp;业主论坛&nbsp;·&nbsp;经纪人交流论坛</a>
    </div>
    <div class="floatright">
        <a href='<%=FormatUrl.BBSDefaultUrl() %>'>进入论坛</a>&nbsp;
    </div>
</div>
<%=BBSState %>
<asp:DataList ID="dlpsotlist" runat="server" Width="100%">
    <HeaderTemplate><table Width="100%" cellpadding="0" cellspacing="0">
        
    </HeaderTemplate>
    <FooterTemplate></table></FooterTemplate>
    <ItemTemplate>
        <tr onmouseover="javascript:this.style.backgroundColor='#f7fbff';" onmouseout="javascript:this.style.backgroundColor='#FFFFFF';">
            <td width="430"  class="dot" style="text-align:left;">
                &nbsp;<a href='<%#FormatUrl.BBSContentUrl(Eval("Bid").ToString()) %>' target="_blank">
                    <%#Common.FilterTitle(Eval("Title").ToString(), Eval("TitleColor").ToString(), 18)%>
                </a>&nbsp;<%#Common.FilterIsRecom(Eval("IsRecom").ToString()) %>
            </td>
            <td width="120" class="dot" ><a href='<%#FormatUrl.BBSSubClassUrl(Eval("Sid").ToString()) %>'><%#Eval("SName") %></a></td>
            <td width="80" class="dot" ><%#FilterUser(Eval("Uid").ToString(),Eval("Uip").ToString())%></td>
            <td width="90" class="dot"><%#Eval("AddDate", "{0:d}")%></td>
        </tr>
    </ItemTemplate>
</asp:DataList>
</div>