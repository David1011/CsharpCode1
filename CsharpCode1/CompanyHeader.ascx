<%@ control language="C#" autoeventwireup="true" inherits="CompanyHeader, House_FreeV2_deploy" %>
<TABLE cellSpacing=0 cellPadding=0 width=770 align=center border=0>
        <tr>
            <td width="500" align="left">
                 <A href=<%=SiteUrl %> target=_blank>
                    <IMG  src=<%=SiteLogo %>  border=0>
                </A>
            </td>
            <td align="right" width="300" class="lineheight">
                <a href=<%=FormatUrl.RegisterUrl() %> class="black">注册</a> | 
                <a href=<%=FormatUrl.LoginUrl() %> class="black">登录</a> | 
                <A href="javascript:window.external.AddFavorite('<%=SiteUrl %>','<%=SiteName %>')" style="color:Red">收藏本站</A> | 
                <a href="javascript:;" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=SiteUrl %>');return false;" style="color:Red">设为首页</a>
                <br />
                <a href=<%=FormatUrl.RentHomeUrl() %> class="black">出租</a> | 
                <a href=<%=FormatUrl.SellHomeUrl() %> class="black">二手房</a> | 
                <a href=<%=FormatUrl.AgentHomeUrl() %> class="black">经纪人</a> | 
                <a href=<%=FormatUrl.AskHomeUrl() %> class="black">资讯</a> | 
                <a href=<%=FormatUrl.LouPanHomeUrl() %>  class="black">楼盘</a> | 

            </td>
        </tr>
       
        <tr>
            <td style="background:url(images/greeline.gif) repeat-x;height:13px;" colspan="2"></td>
        </tr>  
</TABLE>
