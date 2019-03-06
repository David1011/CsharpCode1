<%@ page language="C#" autoeventwireup="true" inherits="GZHouses, House_FreeV2_deploy" enableEventValidation="false" %>


<%@ Register Src="Searcher_LouPan.ascx" TagName="Searcher_LouPan" TagPrefix="uc1" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title><%=Common.GetCityName() %>楼盘展示,<%=Common.GetCityName() %>新楼盘,<%=Common.GetSiteName() %></title>
    <meta name="keywords" content="惠州新楼盘,惠州楼盘展示,惠州房产网" />
    <meta name="description" content="惠州新楼盘展示" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="robots" content="index,follow">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/search.js" language="javascript"></script>
    <script type="text/javascript" src="js/ajax.js" language="javascript"></script>

    <link href="css/menu.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
           <uc8:LoginUC id="LoginUC2" runat="server">
            </uc8:LoginUC>

            <div>
                <uc1:Header ID="Header1" runat="server" />
            </div>
        
        
             <div class="columncontain3">

                    <div>
                        <uc1:Searcher_LouPan ID="Searcher_LouPan1" runat="server" />
                     </div>
               
            </div>
            <div class="columncontain">
                <div class="currnavtop">
                    &nbsp;您的位置：
                    <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
                    <a href='<%=FormatUrl.LouPanHomeUrl() %>'>楼盘展示</a>
                    
                    <%=RegName %>
                    <%=AreaName %>
                </div>
            </div>
            
            
            
                    <div class="columncontain">
            <div class="twocolumnleft">
               <div class="titlehead">
                按区域查找楼盘
                   
                </div>
               <asp:datalist id="regionList" ItemStyle-CssClass="lineheight2" RepeatColumns="6" Runat="server" RepeatLayout="table" RepeatDirection="Horizontal"
				 EnableViewState="false" ItemStyle-HorizontalAlign="center" Width="100%">
								
						<ItemTemplate>
						        
							    <a href='<%#FormatUrl.LouPanByRegionID(Convert.ToInt32(Eval("RegionID").ToString()))%>'>
								    <font color="black"><%#Eval("RegionName") %>楼盘(<%#FilterRegionCounts(Eval("RegionID").ToString())%>)</font>
							    </a>
								
					    </ItemTemplate>
                </asp:datalist>
	           <%=ForArea %>
                <asp:DataList ID="areaList" ItemStyle-CssClass="lineheight2" RepeatColumns="6" Runat="server" RepeatLayout="table" RepeatDirection="Horizontal"
				 EnableViewState="false" ItemStyle-HorizontalAlign="center" Width="100%">
                        <ItemTemplate>
	                        <a href='<%#FormatUrl.LouPanByAreaID(Convert.ToInt32(Eval("AreaID").ToString()))%>'>
		                        <%#Eval("AreaName") %>(<%#FilterAreaCounts(Eval("AreaID").ToString())%>)
	                        </a>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
	            </asp:DataList>
            </div>
            <div class="columnrightbody">
                <div class="columnright" style="border:0px;"><br />
                   <center><a href='<%=FormatUrl.AddLouPan() %>' style="color:Red;">添加楼盘信息</a></center>
                </div>
            </div>
        </div>

       <div class="columncontain">
                
                 <div class="twocolumnleft" style="border:0px;">
                        <asp:DataList ID="dlselllist" RepeatColumns="2" RepeatLayout="table" RepeatDirection="horizontal" DataKeyField="LPID" runat="server"  EnableViewState="false" Width="100%">
                            <ItemTemplate>
                                <div class="loupancontain">
                                    <div class="loupanhead">
                                    <a href='<%#FormatUrl.LouPanContentUrl(Eval("LPID").ToString())%>'>
                                        <img src="<%=Common.GetSiteUrl() %>/images/setting_icon8.gif" align="absmiddle" />
                                    </a>
                                        <a target="_blank" href='<%#FormatUrl.LouPanContentUrl(Eval("LPID").ToString())%>'>
                                            <%#Eval("LPName") %>
                                       </a>
                                    </div>
                                    <div class="loupanpic">
                                        <a target="_blank" href='<%#FormatUrl.LouPanContentUrl(Eval("LPID").ToString())%>'>
                                            <img class="border" src='<%#Common.FilterInfoPic(Eval("SPic").ToString()) %>' align="absmiddle" width="124" height="104" />
                                         </a>
                                    </div>
                                    <div class="loupantext">
                                       楼盘名称：<a target="_blank" href='<%#FormatUrl.LouPanContentUrl(Eval("LPID").ToString())%>'>
                                            <font color="#f4872d"><b><%#Eval("LPName") %></b></font>
                                       </a>
<br />
                                       参考均价：<font color="#f4872d"><b>
                        <%#Common.FilterLouPanPrice(Eval("LPPrice").ToString())%>
                            </b></font>
                                       <br />
                                       楼盘类型：<%#Eval("LeiXing") %>
                                       <br />
                                       所在地段：
                                       <a  href='<%#FormatUrl.LouPanByRegionID(Convert.ToInt32(Eval("RegionID")))%>'>
                                            <%#Eval("RegionName") %>
                                         </a>
                                       <a  href='<%#FormatUrl.LouPanByAreaID(Convert.ToInt32(Eval("AreaID")))%>'>
                                            <%#Eval("AreaName") %>
                                         </a>
                                       <br />
                                       楼盘地址：<%#Common.myStringWidthoutDot(Eval("LPAddress").ToString(),10) %>
                                      
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <br />
                            <div>
                                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" EnableTheming="true" FirstPageText="首页" HorizontalAlign="center" LastPageText="尾页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="DropDownList" PageSize="20" PrevPageText="前一页" ShowPageIndexBox="Always" TextBeforePageIndexBox="转到 " CssClass="pagercss" UrlPageIndexName="p" UrlPaging="false" Width="100%">
                                </webdiyer:AspNetPager>
                            </div>
                    </div>
                 <div class="columnrightbody">
                    
                    
            
                   		<div class="columnright">
                            <div class=titlehead>新盘动态</div>
                           <%=V.News(0,98,10,false,15,false,false,true,"dot") %>
                         </div>

  

<div class="columnright">
                    
                    
                    <div class="titlehead">热门楼盘</div>
                    <%=V.LouPanListByHot(10,10,true,true,"dot") %>

                    
                </div>
              </div>
        </div>
        <div>
            <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>

