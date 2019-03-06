<%@ page language="C#" autoeventwireup="true" inherits="Agent, House_FreeV2_deploy" enableEventValidation="false" %>

<%@ Register Src="Searcher_Agent.ascx" TagName="Searcher_Agent" TagPrefix="uc3" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=PageTitle %> <%=Common.GetCityName() %>房产中介,<%=Common.GetSiteName() %></title>
    <meta name="keywords" content="惠州中介,惠州房产中介,惠州网络中介" />
    <meta name="description" content="惠州中介,惠州房产中介,惠州网络中介" />
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
                        <uc3:Searcher_Agent ID="Searcher_Agent1" runat="server" />
                     </div>
               
            </div>
            <div class="columncontain">
            <div class="currnavtop">
             
            您的位置：
            <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.AgentHomeUrl() %>'>经纪人</a>
            <%=RegName %>
        </div>
       
        <!--快速查询-->
        <div class="columncontain">
            <div class="twocolumnleft">
               <div class="titlehead">
                查找经纪人
                </div>
               <asp:datalist id="regionList" RepeatColumns="5" Runat="server" RepeatLayout="table" RepeatDirection="Horizontal"
				ItemStyle-HorizontalAlign="left"  EnableViewState="false" Width="100%">
								
						<ItemTemplate>
						        <div><ul>
						        <li class="lineheight2">
								    <a href='<%#FormatUrl.AgentListByRegionUrl(Eval("RegionID").ToString())%>'>
									    <font color="black"><%#Eval("RegionName") %>经纪人(<%#FilterCounts(Eval("RegionID").ToString()) %>)</font>
								    </a>
								</li>
								</ul></div>
					    </ItemTemplate>
                </asp:datalist>
            </div>
            <div class="columnrightbody">
                 
            </div>
        </div>
        </div>
        <div class="columncontain">
            <div>
               <div class="listborder">
                 
                   <div class="titlehead"><%=RegName2 %></div>
                   <div>
                        <asp:DataList id="dlagent" runat="server" ItemStyle-CssClass="agentitem" Width="98%" RepeatColumns="2" RepeatDirection="horizontal" EnableViewState="false">
                            <ItemTemplate>
                                <div class="itemwidth" onmouseover="javascript:this.style.backgroundColor='#f3f3f3';" onmouseout="javascript:this.style.backgroundColor='#FFFFFF';">
                                    <div class="agentitemleft">
                                        <a target="_blank" href='<%#FormatUrl.ShowAgent(Convert.ToInt64(Eval("UserID").ToString())) %>'><img class="userpic2" src='<%#Common.FilterPic(Eval("SPic").ToString()) %>' /></a><br />
                                        
                                        <a class="black" target="_blank"  href='<%#FormatUrl.ShowAgent(Convert.ToInt64(Eval("UserID").ToString())) %>'>
                                            <%#Eval("RealName") %>
                                        </a>
                                        <br />
                                        <%#Common.FilterQQ(Eval("QQ").ToString(),Eval("Msn").ToString(),Eval("RealName").ToString()) %>
                                    </div>
                                    <div class="agentitemright">
                                        
                                        所属公司：<a target="_blank" href='<%#FormatUrl.ShowAgent(Convert.ToInt64(Eval("UserID").ToString())) %>'>
                                        <%#Common.myStringWidthoutDot(Eval("Company").ToString(),10) %>
                                        </a>
                                        <br />
                                        会员类型：<%#Common.FilterAgentDegree(Eval("AgentScore").ToString()) %>
                                        
                                        <br />
                                        联系电话：<%#Eval("Tel") %> <%#Eval("Mobile") %>
                                        <br />
                                        服务区域：<%#Eval("RegionName") %>
                                        <br />
                                        <img src="images/nav.gif" align="absmiddle" />&nbsp;
                                        <a  target="_blank" href='<%#FormatUrl.ShowAgent(Convert.ToInt64(Eval("UserID").ToString()))+"#wt" %>'>委托我为您服务</a>
                                        <br />
                                        <img src="images/nav.gif" align="absmiddle" />&nbsp;
                                        <a target="_blank"  href='<%#FormatUrl.ShowAgent(Convert.ToInt64(Eval("UserID").ToString())) %>'>进入我的网店</a>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <br /><webdiyer:AspNetPager ID="AspNetPager1" runat="server" EnableTheming="true" FirstPageText="首页" HorizontalAlign="center" LastPageText="尾页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="DropDownList" PageSize="10" CssClass="pagercss" PrevPageText="前一页" ShowPageIndexBox="Always" TextBeforePageIndexBox="转到 " UrlPageIndexName="p" UrlPaging="false" Width="100%" NumericButtonCount="10">
                        </webdiyer:AspNetPager>
                    </div>
                </div>
                <div class="columnrightbody">
                    
                    <div class="columnright">
                        <div class="titlehead"><img src="<%=Common.GetSiteUrl() %>/images/line.gif" align="absmiddle" />&nbsp;房产经纪人气排行榜</div>
                        <div class="adrightitem">
                        <asp:DataList ID="dlhot" ItemStyle-HorizontalAlign="center" runat="server"  Width="100%" RepeatColumns="2" RepeatDirection="horizontal" EnableViewState="false" >
                            <ItemTemplate>
                                <a href='<%#FormatUrl.ShowAgent(Convert.ToInt64(Eval("UserID").ToString())) %>' target="_blank">
                                    <img class="userpic2" src='<%#Common.FilterPic(Eval("SPic").ToString()) %>' align="absmiddle" />
                                </a>
                                <br />
                                <a href='<%#FormatUrl.ShowAgent(Convert.ToInt64(Eval("UserID").ToString())) %>' target="_blank">
                                <%#Common.myStringWidthoutDot(Eval("RealName").ToString(),4) %>
                              </a>
                           
                            </ItemTemplate>
                        </asp:DataList> 
                            
                        </div>
                    </div>
                    <div class="columnright">
                        <div class="titlehead"><img src="<%=Common.GetSiteUrl() %>/images/line.gif" align="absmiddle" />&nbsp;最新加入房产经纪人</div>
                        <div class="adrightitem">
                            
                        </div>
                    </div>

                </div>
            </div>
        </div>

         <div>
            <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
