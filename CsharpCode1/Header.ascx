<%@ control language="C#" autoeventwireup="true" inherits="Header, House_FreeV2_deploy" %>

<link rel="stylesheet" href="<%=Common.GetSiteUrl() %>/css/menu.css" type="text/css">

<div class="headcontain">
    <div class="floatleft" style="text-align:center;">
        <a href='<%=SiteUrl %>'><img src="<%=SiteLogo %>" alt="<%=SiteName %>" /></a>
    </div>
    
    <div class="floatright">
    
       
   </div>

</div>
<!--菜单开始-->

<div class="headcontain">
<table width="980" class="menubg" cellpadding=0 cellspacing=0>
    <tr>
        <td  class="bigmenu">
            <table  cellpadding=0 cellspacing=0 width="100%">
                <tr>
                <td>
                    <a href='<%=FormatUrl.AskHomeUrl() %>'><img src=<%=Common.GetSiteUrl() %>/images/menu3.jpg /><br/>资讯</a>
                </td>
                <td>
                    <span class="ment12"><a href="http://www.0752house.com/NewsList-Sid-14.htm">新盘动态</a></span>
	              <span class="ment12"><a href="http://www.0752house.com/NewsList-Cid-7.htm">惠州楼市</a></span>
    	          
	              <br />
                  <span class="ment12"><a href="http://www.0752house.com/NewsList-Cid-11.htm">专家看盘</a></span>
	              <span class="ment12"><a href="http://www.0752house.com/NewsList-Cid-8.htm">政策法规</a></span>
    	           
	              <br />
                  <span class="ment12" ><a href="http://www.0752house.com/NewsList-Sid-25.htm">惠州新闻</a></span>
	              <span class="ment12" ><a href="http://www.0752house.com/NewsList-Cid-9.htm">置业投资</a></span>
                </td>
            </tr>
            </table>
         </td>
        <td  class="bigmenu">
            <table  cellpadding=0 cellspacing=0 width="100%">
                <tr>
            <td>
                <a href='<%=FormatUrl.LouPanHomeUrl() %>'><img src=<%=Common.GetSiteUrl() %>/images/menu1.jpg /><br/>楼盘</a>
            </td>
            <td>
                <span class='ment12'><a href="http://www.0752house.com/House-Region-7.htm">惠城区</a></span>
	              <span class="ment12" ><a href="http://www.0752house.com/House-Region-8.htm" target="_blank">惠阳区</a></span><br />
                  <span class="ment12" ><a href="http://www.0752house.com/House-Region-9.htm" >惠东县</a></span>
	              <span class="ment12">
	  	          <a href="http://www.0752house.com/House-Region-11.htm">博罗县</a></span>
            </td>
            </tr>
            </table>
        </td>
        <td  class="bigmenu">
            <table  cellpadding=0 cellspacing=0 width="100%">
                <tr>
            <td>
                <a href='<%=FormatUrl.SellHomeUrl()%>'><img src=<%=Common.GetSiteUrl() %>/images/menu4.jpg /><br/>购房</a>
            </td>
            <td>
                <span class="ment12"><a href='<%=FormatUrl.BuyHouseHomeUrl()%>'>求购</a></span>
	            <span class="ment12">
	  	          <a href='<%=FormatUrl.SellHomeUrl()%>' target="_blank">二手房</a>
	  	        </span>
	              <span class="ment12">
	  	              <a href="" target="_blank"></a>
	  	              </span>
	              
	              <span class="ment12">
	              <a href="http://www.0752house.com/NewsList-Cid-3.htm">购房指南</a></span>
            	  
	              <br />
                  <span class="ment12"><a href='<%=FormatUrl.QiuZuHomeUrl()%>' target="_blank">求租</a></span>
	              <span class="ment12"><a href='<%=FormatUrl.RentHomeUrl()%>'>出租房</a></span>
	              
	              <span class="ment12"><a href="http://www.0752house.com/NewsList-Sid-16.htm">租房指南</a></span><br />
                  <span class="ment12" ><a href="RentList.aspx?t=sp">商铺</a></span>
	              <span class="ment12"><a href="RentList.aspx?t=xzl">写字楼</a></span>

	              <span class="ment12"><a href="http://www.0752house.com/NewsList-Cid-17.htm">家居风水</a></span>
            	  
	              
            </td>
            </tr>
            </table>
        </td>
        <td  class="bigmenu">
            <table  cellpadding=0 cellspacing=0 width="100%">
                <tr>
                    <td>
                        <a href='<%=FormatUrl.BBSDefaultUrl() %>' target="_blank"><img src=<%=Common.GetSiteUrl() %>/images/menu5.jpg /><br/>交流</a>
                    </td>
                    <td>
                          <span class="ment12"><a href="http://www.0752house.com/bbs/class-2.htm" target="_blank">业主论坛</a></span>
	                      <span class="ment12"><a href="http://www.0752house.com/bbs/class-3.htm" target="_blank">中介交流</a></span><br />
	                      <span class='ment12'><a href="http://www.0752house.com/bbs/sclass-3.htm" target="_blank">买房交流</a></span>	  
	                      <span class="ment12"><a href="http://www.0752house.com/bbs/sclass-2.htm" target="_blank">租房交流</a></span> 
                    </td>
                 </tr>
            </table>
        </td>
        <td  class="bigmenu">
            <table  cellpadding=0 cellspacing=0 width="100%">
                <tr>
                    <td>
                        <a href='<%=FormatUrl.AgentHomeUrl() %>'><img src=<%=Common.GetSiteUrl() %>/images/menu6.jpg /><br/>经纪人</a>
                    </td>
                    <td>
                        <a href="javascript:window.external.addFavorite('<%=SiteUrl %>','<%=SiteName %>')">
                            <img src="<%=Common.GetSiteUrl() %>/images/ydot.gif" align="absmiddle" />&nbsp;收藏本站
                        </a><br />
                        <a href="javascript:;" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=SiteUrl %>');return false;">
                            <img src="<%=Common.GetSiteUrl() %>/images/ydot.gif" align="absmiddle" />&nbsp;设为首页
                        </a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<%=AD.Show("首页","搜索上方") %>
</div>
<div style="width:980px;height:3px;line-height:3px;">&nbsp;</div>




