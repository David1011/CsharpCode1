<%@ control language="C#" autoeventwireup="true" inherits="Footer, House_FreeV2_deploy" %>
<div class="bottomContain">
    
    <div class="bottomMenu">
        <a href=<%=FormatUrl.AboutUsUrl() %>>关于我们</a> - 
        <a href=<%=FormatUrl.ContactUsUrl() %>>联系我们</a> - 
        <a href=<%=FormatUrl.AdUrl() %>>广告合作</a> - 
        <a href=<%=Common.GetSiteUrl()+"/advertising" %> target=_blank>购买广告</a> - 
        <a href=<%=FormatUrl.GetFeedBackUrl() %>>用户留言</a> - 
        <a href=<%=FormatUrl.SiteMapUrl() %>>网站地图</a> - 
<a href="SiteHelp.aspx" target="_blank">网站帮助</a> -
        <a href=<%=FormatUrl.LinksUrl() %>>友情链接</a> - 
        <a href="javascript:window.external.addFavorite('<%=SiteUrl %>','<%=SiteName %>')">收藏本站</a> - 
        <a href="http://www.miibeian.gov.cn" target="_blank"><%=BeiAn %></a>
    </div>
    <div id="copyrightContain"> 
        
        <div class="bottomcontain">
            
            <div class="copyright">
                
                 
                <%=Copyrights %>
            </div>
        </div>
    </div>
    
</div>