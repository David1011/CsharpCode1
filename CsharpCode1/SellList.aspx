<%@ page language="C#" autoeventwireup="true" inherits="SellList, House_FreeV2_deploy" enableEventValidation="false" %>

<%@ Register Src="Searcher_Sell.ascx" TagName="Searcher_Sell" TagPrefix="uc4" %>

<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=PageTitle %> <%=Common.GetCityName() %>二手房信息,<%=Common.GetCityName() %>二手房出售</title>
    <meta name="keywords" content="惠州二手房信息,惠州二手房出售" />
    <meta name="description" content="惠州二手房信息,惠州二手房出售" />
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
            <uc8:LoginUC id="LoginUC1" runat="server">
            </uc8:LoginUC>

            <div>
                <uc1:Header ID="Header1" runat="server" />
            </div>
             <div class="columncontain3">

                   
                        <uc4:Searcher_Sell ID="Searcher_Sell1" runat="server" />
                     
               
            </div>
            <div class="columncontain">
                <div class="currnavtop">
            &nbsp;您的位置：
            <a href='<%=FormatUrl.HomeUrl() %>' >网站首页</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.SellHomeUrl() %>'><%=Common.GetCityName() %>二手房</a>
            <%=RegName %>
            <%=AreaName %>
            <%=Sub %>
        </div>
            </div>
          
        <!--快速查询-->
         <div class="columncontain">
            <div class="listborder" style="border:0px;">
                <div class="navregion">
               
                区域：
                <asp:datalist id="regionList" Runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal"
				ItemStyle-HorizontalAlign="Center" EnableViewState="false" Width="90%">
										<ItemStyle HorizontalAlign="Center"></ItemStyle>
						<ItemTemplate>
								<a href='<%#FormatUrl.SellListByRegionUrl(Eval("RegionID").ToString())%>'>
									<%#Eval("RegionName") %>
								</a>
					    </ItemTemplate>
                </asp:datalist>
	            
                <asp:DataList ID="areaList"  BackColor="#f3f3f3" ItemStyle-HorizontalAlign="Center" RepeatDirection="Horizontal" RepeatLayout="Flow"
			                    Runat="server" EnableViewState="False" Width="90%">
                        <ItemTemplate>
	                        <a href='<%#FormatUrl.SellListByAreaUrl(Eval("AreaID").ToString())%>'>
		                        <font color="#f4871e"><%#Eval("AreaName") %></font>
	                        </a>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
	            </asp:DataList>
                </div>
                 <div class="navregion">
                    类型：
                    <a href="<%=XiaoQu %>">小区楼</a>&nbsp;
                    <a href="<%=MinFang %>">民房/宿舍楼</a>&nbsp;
                    <a href="<%=GaoCheng %>">高层住宅</a>&nbsp;
                    <a href="<%=XieZi %>">写字楼</a>&nbsp; 
                    <a href="<%=ShangPin %>">商品房</a>&nbsp; 
                    <a href="<%=CangKu %>">仓库</a>&nbsp; 
                    <a href="<%=ChangFang %>">厂房</a>&nbsp;
                    <a href="<%=ShangPu %>" style="color:#ff6600;">商铺</a>&nbsp; 
                    <a href="<%=GongYu %>">公寓</a>&nbsp; 
                    <a href="<%=BeiXu %>">别墅</a>
                </div>
                <div class="navregion">
                    间隔：
                    <a href="<%=Single %>">单间</a>&nbsp;
                    <a href="<%=One %>">一房(厅)</a>&nbsp;
                    <a href="<%=Two %>">二房</a>&nbsp;
                    <a href="<%=Three %>">三房</a>&nbsp; 
                    <a href="<%=Four %>">四房</a>&nbsp; 
                    <a href="<%=Five %>">五房</a>&nbsp; 
                    <a href="<%=FuShi %>">复式楼</a>&nbsp;
                    <a href="<%=Under %>">地下室</a>&nbsp; 
                    <a href="<%=Oth %>">其它户型</a>&nbsp; 
                </div>
                 <div class="navregion">
                     售价：
                    <a href="<%=SW %>">35万以下</a>&nbsp;
                    <a href="<%=WS %>">35-50万</a>&nbsp;
                    <a href="<%=BS %>">50-80万</a>&nbsp;
                    <a href="<%=YES %>">80-120万</a>&nbsp; 
                    <a href="<%=EBW %>">120-200万</a>&nbsp; 
                    <a href="<%=YH %>">200万以上</a>&nbsp; 
       
                </div>
                <hr />
               
             </div>
             <div class="columnrightbody">
                <div class="columnright" style="border:0px;"><br />
                    <table width="98%">
                        <tr>
                        <td class="lineheight">
                            <a href='<%=FormatUrl.AddSellUrl() %>'>
                                <img src="<%=Common.GetSiteUrl() %>/images/pubsellbg.gif" align="absmiddle" />
                            </a>
                        </td>
                        <td class="lineheight">
                             <a href='<%=FormatUrl.AddBuyUrl() %>'>
                                <img src="<%=Common.GetSiteUrl() %>/images/pubqgbg.gif" align="absmiddle" />
                            </a>
                        </td>
                        </tr>
                        <tr>
                        <td class="lineheight">
                             <a href='<%=FormatUrl.BuyHouseHomeUrl() %>'>
                                <img src="<%=Common.GetSiteUrl() %>/images/qgbg.gif" align="absmiddle" />
                            </a>
                        </td>
                        <td class="lineheight">
                             <a href='<%=FormatUrl.RegisterAgentUrl() %>'>
                                <img src="<%=Common.GetSiteUrl() %>/images/regagentbg.gif" align="absmiddle" />
                            </a>
                        </td>
                        </tr>
                    </table>
                </div>
             </div>
         </div> 
        <div class="middlebody">
                <div class="listborderbody">
                <table cellpadding="0" cellspacing="0" border="0" align="left" width="710">
                <tr>
                    <td  class="blueblock" nowrap width="95">
                        <a href='<%=FormatUrl.SellHomeUrl() %>'><b>所有房源</b></a>
                    </td>
                    <td width="5px"></td>
                    <td  class="silverblock" nowrap width="95">
                        <a href='<%=FormatUrl.SellHomeUrl() %>?type=person'><b>个人房源</b></a>
                    </td>
                    <td width="5px"></td>
                    <td  class="silverblock" nowrap width="95">
                        <a href='<%=FormatUrl.SellHomeUrl() %>?type=agent'><b>中介房源</b></a>
                    </td>
                    <td width="5px"></td>
                    <td  class="silverblock" nowrap width="95">
                        <a href='<%=FormatUrl.BuyHouseHomeUrl() %>'>求购房源</a>
                    </td>
                    <td width="515"></td>
                </tr>
                
               </table>
               
                <div class="listborder">
                       
                        <asp:DataList ID="dltoplist" DataKeyField="SellID" runat="server"  EnableViewState="false" Width="100%">
                            <HeaderTemplate>
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                <tr >
                                                                            
                                <td  class="loginbar2" nowrap width="70">物业名称</td>
                                <td class="loginbar2"  nowrap width="330" align="left">标题</td>
                                <td class="loginbar2" nowrap width="70">间隔</td>
                                <td class="loginbar2" nowrap width="70">面积</td>
                                <td class="loginbar2" nowrap width="50">售价</td>
                                <td class="loginbar2" nowrap width="40">时间</td>
                            </tr>
                            </HeaderTemplate>
                        <ItemTemplate>
                            <tr  onmouseover="javascript:this.style.backgroundColor='#f3f3f3';" onmouseout="javascript:this.style.backgroundColor='#FFFFFF';">
                            
                            <td class="listitem" align="center" width="70">
                                <a  href='<%#FormatUrl.SellListByRegionUrl(Eval("RegionID").ToString())%>'>
                                    <%#Eval("RegionName") %>
                               </a>
                            </td>
                            <td class="listitem_title" width="330">
                                <%#FilterTitle(Eval("SellID").ToString(),Eval("Title").ToString(),Eval("FCZ").ToString(),Eval("HouseAge").ToString()) %>
                                &nbsp;<img src="images/ding.gif" alt="二手房" />
                                <%#Common.FilterPicInfo(Eval("SPic").ToString()) %><br />
                                <%#Eval("QuarterName") %> <%#Eval("LeiXing") %> 楼层(<%#Eval("Floors") %>/<%#Eval("TopFloors") %>)
                            </td>
                             <td class="listitem" width="70">
                               <%#Convert.ToString(DataBinder.Eval(Container.DataItem,"HuXing"))%>
                            </td>
                            <td class="listitem" width="70">
                                <%#Common.FilterHouseSize(Eval("HouseSize").ToString()) %>
                            </td>
                            <td class="listitem" width="50">
                                <%#Common.FilterSellPrice(Eval("SellPrice").ToString()) %>
                            </td>

                            <td class="listitem" width="40">
                                <%#Eval("AddDate","{0:d}").ToString().Substring(5)%>
                            </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate></table></FooterTemplate>
                        </asp:DataList>
                        
                        <asp:DataList ID="dlselllist" DataKeyField="SellID" runat="server"  EnableViewState="false" Width="100%">
                            <HeaderTemplate>
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                               
                            </HeaderTemplate>
                        <ItemTemplate>
                            <tr  onmouseover="javascript:this.style.backgroundColor='#f3f3f3';" onmouseout="javascript:this.style.backgroundColor='#FFFFFF';">
                            
                            <td class="listitem" align="center" width="70">
                                <a  href='<%#FormatUrl.SellListByRegionUrl(Eval("RegionID").ToString())%>'>
                                    <%#Eval("RegionName") %>
                               </a>
                            </td>
                            <td class="listitem_title" width="330">
                                <%#FilterTitle(Eval("SellID").ToString(),Eval("Title").ToString(),Eval("FCZ").ToString(),Eval("HouseAge").ToString()) %>
                                <%#Common.FilterPicInfo(Eval("SPic").ToString()) %>
                                <br />
                                <%#Eval("QuarterName") %> <%#Eval("LeiXing") %> 楼层(<%#Eval("Floors") %>/<%#Eval("TopFloors") %>)
                            </td>
                             <td class="listitem" width="70">
                               <%#Convert.ToString(DataBinder.Eval(Container.DataItem,"HuXing"))%>
                            </td>
                            <td class="listitem" width="70">
                                <%#Common.FilterHouseSize(Eval("HouseSize").ToString()) %>
                            </td>
                            <td class="listitem" width="50">
                                <%#Common.FilterSellPrice(Eval("SellPrice").ToString()) %>
                            </td>

                            <td class="listitem" width="40">
                                <%#Eval("AddDate","{0:d}").ToString().Substring(5)%>
                            </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate></table></FooterTemplate>
                        </asp:DataList>
                        <br />
                        <div>
                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" EnableTheming="true" FirstPageText="首页" HorizontalAlign="center" LastPageText="尾页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="DropDownList" PageSize="20" PrevPageText="前一页" ShowPageIndexBox="Always" TextBeforePageIndexBox="转到 " CssClass="pagercss" UrlPageIndexName="p" UrlPaging="false" Width="100%">
                            </webdiyer:AspNetPager>
                        </div>
                        
                </div>
                 
                  </div>
            
                <div class="columnrightbody">
                 
                  <div class="columnright">
                        <div class="titlehead">十万火急出售的房源</div>
                        <div class="adrightitem">
                            <%=V.SellByRecom(5,false,false,false,false,false,false,false,false,15,true,0,0,"dot") %>
                        </div>
                    </div>
                    <div class="columnright">
                        <div class="titlehead"><img src="<%=Common.GetSiteUrl() %>/images/line.gif" align="absmiddle" />&nbsp;本站推荐经纪人</div>
                        <div class="adrightitem">
                             <%=V.AgentByRecom(2,false,true,true,true,true,90,80,8,"dot") %>
                        </div>
                    </div>
                    <div class="columnright">
                        <div class="titlehead"><img src="<%=Common.GetSiteUrl() %>/images/line.gif" align="absmiddle" />&nbsp;最新求购房源</div>
                        <div class="adrightitem">
                             <%=V.QiuGou(10,true,16,false,"dot") %>
                            <center><span><a href='<%=FormatUrl.BuyHouseHomeUrl() %>' target="_blank"><font color="red">更多求购信息>>></font></a></span></center>
                        </div>
                    </div>
                    
                     <div class="columnright">
                        <div class="titlehead">置业投资</div>
                        <div class="adrightitem">
                            <%=V.News(0,98,8,false,14,true,false,true,"dot") %>
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
