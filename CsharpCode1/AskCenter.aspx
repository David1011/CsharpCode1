<%@ page language="C#" autoeventwireup="true" inherits="AskCenter, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="Searcher_Ask.ascx" TagName="Searcher_Ask" TagPrefix="uc1" %>
<%@ Register Src="AskClassList.ascx" TagName="AskClassList" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <title>房产资讯,<%=Common.GetSiteName() %></title>
    <meta name="keywords" content="惠州房产资讯,惠州房产新闻,惠州楼市" />
    <meta name="description" content="本站是惠州市专业租房、二手房信息网,每天大量房产信息,在惠州地区有较好的口碑,获得网民喜爱.为惠州十佳专业房产网" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="robots" content="index,follow">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/search.js" language="javascript"></script>
    <script type="text/javascript" src="js/ajax.js" language="javascript"></script>


</head>
<body>
    <form id="form1" runat="server">
            <uc8:LoginUC id="LoginUC1" runat="server">
            </uc8:LoginUC>
        <div>
             <uc1:Header ID="Header1" runat="server" />
        </div>
         <div class="columncontain3">

                    <div>
                        <uc1:Searcher_Ask ID="Searcher_Ask1" runat="server" />
                     </div>
               
            </div>
       
    <div class="columncontain">
<table width=100%>
	<tr>
	<td width=4 bgcolor="#c41717">
	</td>
	<td>
<a href='<%=FormatUrl.AskHomeUrl() %>'><img src="images/news_logo.gif" /></a>
	</td>
	<td>
<table width=100% style="background:#c41717 ;height:43px;">
	<tr>
	<td  align=left>
<uc3:AskClassList id="AskClassList1" runat="server"></uc3:AskClassList>  
	</td>
	</tr>
	<tr>
	<td>

	</td>
	</tr>
</table>
	</td>
	</tr>
</table>

    </div>
    
    <div class="columncontain">
        <div class="twocolumnleft">
            <div>
                <div class=floatleft style="width:260px;padding:4px;">
                    
                        <%=V.SiteSlideFlash(4,250,270,20,"lineheight2") %>
                        
                   
                </div>
                <div class=floatright style="width:440px;">
                    <%=V.NewsOfHeadLine(1, false, false, 15, "headline", "headlineintro")%>
                    <%=V.News(0,0,10,false,18,true,true,true,"todaynewsitem") %>
                </div>
            </div>
        </div>
        <div class="columnrightbody">
            <div class="columnright">
                <div class="titlehead">新盘动态</div>
                <%=V.News(0,98,9,false,15,false,true,true,"dot") %>
            </div>
        </div>
    </div>
    
    <div class="columncontain">
        <div class="twocolumnleft">
             <div class="titlehead">
                <div class="floatleft">
                    <span class="font14">惠州楼市</span>
                </div>
                <div class="floatright" style="padding-right:28px;">更多</div>
             </div>
             <table width="100%">
                            <tr>
                                <td valign="top" width=350>
                                <%=V.News(0, 0, 10, false, 30, false, true, true, "lineheight2")%>
                        
                                   
                               </td>
                               <td>
                               <%=V.NewsPicByRecom(0,98,2,true,35,120,110,16,"lineheight2",false) %>
                               </td>
                           </tr>
                           
                      </table>
                                  
                    <div class="titlehead">
                        <div class="floatleft">
                            <span class="font14">购房知识</span>
                        </div>
                        <div class="floatright" style="padding-right:28px;">更多</div>
                    </div>
                    <table width="100%">
                            <tr>
                                <td valign="top" width=350>
                                <%=V.News(0, 0, 10, false, 30, false, true, true, "lineheight2")%>
                        
                                   
                               </td>
                               <td>
                               <%=V.NewsPicByRecom(0,98,2,true,35,120,110,16,"lineheight2",false) %>
                               </td>
                           </tr>
                           
                      </table>
                    
                     
                     
                            
        </div>
        <div class="columnrightbody">
            <div class="columnright">
                <div class="titlehead">新闻点击排行榜</div>
                
                <%=V.NewsByHot(10,false,false,true,false,18,"dot") %>
                  
                
            </div>
            <div class="columnright">
                <div class="titlehead">热门楼盘</div>
                
                <%=V.LouPanListByHot(10,10,true,true,"lineheight2") %>
                  
                
            </div>
        </div>
    </div>
         <div>
            <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
