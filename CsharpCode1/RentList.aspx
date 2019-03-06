<%@ page language="C#" autoeventwireup="true" inherits="RentList, House_FreeV2_deploy" enableEventValidation="false" %>

 
<%@ Register Src="Search_Rent.ascx" TagName="Search_Rent" TagPrefix="uc3" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=PageTitle %>,<%=Common.GetSiteName() %></title>
     <meta name="keywords" content=<%=PageTitle %> />
    <meta name="description" content="惠州出租房信息,每天上千条信息更新" />
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
            <uc8:LoginUC id="LoginUC2" runat="server">
            </uc8:LoginUC>

            <div>
                 <uc1:Header ID="Header1" runat="server" />
            </div>

            <div class="columncontain3">

                    <div>
                        <uc3:Search_Rent ID="Search_Rent1" runat="server" />
                     </div>
               
            </div>
           <div class="columncontain">
                <div class="currnavtop">
                    &nbsp;您的位置：
                    <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
                    <a href='<%=FormatUrl.RentHomeUrl() %>'><%=Common.GetCityName() %>租房</a>
                    
                    <%=RegName %>
                    <%=AreaName %>
                    <%=Sub %>
                </div>
            </div>
        <!--快速查询-->
         <div class="columncontain">
            <div class="listborder" style="border:0px;">
                <div class="navregion">
               
                <b>按区域：</b>
                <asp:datalist id="regionList" Runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal"
				ItemStyle-HorizontalAlign="Center" EnableViewState="false" Width="90%">
										<ItemStyle HorizontalAlign="Center"></ItemStyle>
						<ItemTemplate>
								<a href='<%#FormatUrl.RentListByRegionUrl(Eval("RegionID").ToString())%>'>
									<%#Eval("RegionName") %>
								</a>
					    </ItemTemplate>
                </asp:datalist>
	            
                <asp:DataList ID="areaList" BackColor="#f3f3f3"  ItemStyle-HorizontalAlign="Center" RepeatDirection="Horizontal" RepeatLayout="Flow"
			                    Runat="server" EnableViewState="False" Width="90%">
                        <ItemTemplate>
	                        <a href='<%#FormatUrl.RentListByAreaUrl(Eval("AreaID").ToString())%>'>
		                        <%#Eval("AreaName") %>
	                        </a>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
	            </asp:DataList>
                </div>
                 <div class="navregion">
                    <b>按类型：</b>
                    <a href="<%=XiaoQu %>">小区住宅</a>&nbsp;
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
                    <b>按间隔：</b>
                    <a href="<%=Single %>">单间</a>&nbsp;
                    <a href="<%=One %>">一房</a>&nbsp;
                    <a href="<%=Two %>">二房</a>&nbsp;
                    <a href="<%=Three %>">三房</a>&nbsp; 
                    <a href="<%=Four %>">四房</a>&nbsp; 
                    <a href="<%=Five %>">五房</a>&nbsp; 
                    <a href="<%=FuShi %>">复式楼</a>&nbsp;
                    <a href="<%=Under %>">地下室</a>&nbsp; 
                    <a href="<%=Oth %>">其它户型</a>&nbsp; 
                </div>
                 <div class="navregion">
                     <b>按租金：</b>
                    <a href="<%=SW %>">500以内</a>&nbsp;
                    <a href="<%=WS %>">500-1000</a>&nbsp;
                    <a href="<%=BS %>">1000-1500</a>&nbsp;
                    <a href="<%=YES %>">1500-2000</a>&nbsp; 
                    <a href="<%=EBW %>">2000-2500</a>&nbsp; 
                    <a href="<%=YH %>">2500-3000</a>&nbsp; 
                    <a href="<%=SQ %>">3000以上</a>&nbsp; 
       
                </div>
                <div class="navregion">
                     <b>按租期：</b>
                    <a href="<%=ZZ %>">整租</a>&nbsp;
                    <a href="<%=RZ %>">日租</a>&nbsp;
                    <a href="<%=DZ %>">短租</a>&nbsp;
       
                </div>
                <hr />
             </div>
             <div class="columnrightbody">
                <div class="columnright" style="border:0px;"><br />
                    <table width="98%">
                        <tr>
                        <td class="lineheight">
                            <a href='<%=FormatUrl.AddRentUrl() %>'>
                                <img src="<%=Common.GetSiteUrl() %>/images/pubrent.gif" align="absmiddle" />
                            </a>
                        </td>
                        <td class="lineheight">
                             <a href='<%=FormatUrl.AddQiuZuUrl() %>'>
                                <img src="<%=Common.GetSiteUrl() %>/images/pubqz2.gif" align="absmiddle" />
                            </a>
                        </td>
                        </tr>
                        <tr>
                        <td class="lineheight">
                             <a href='<%=FormatUrl.QiuZuHomeUrl() %>'>
                                <img src="<%=Common.GetSiteUrl() %>/images/rents.gif" align="absmiddle" />
                            </a>
                        </td>
                        <td class="lineheight">
                             <a href='<%=FormatUrl.RegisterUrl() %>'>
                                <img src="<%=Common.GetSiteUrl() %>/images/reg2.gif" align="absmiddle" />
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
                        <a href='<%=FormatUrl.RentHomeUrl() %>'><b>所有租房</b></a>
                    </td>
                    
                    <td  class="silverblock" nowrap width="95">
                        <a href='<%=FormatUrl.RentHomeUrl()+"?source=p" %>'>个人房源</a>
                    </td>
                    <td  class="silverblock" nowrap width="95">
                        <a href='<%=FormatUrl.RentHomeUrl()+"?source=a" %>'>经纪人房源</a>
                    </td>
                    <td  class="silverblock" nowrap width="95">
                        <a href='<%=FormatUrl.QiuZuHomeUrl() %>'>求租房源</a>
                    </td>
                    <td width="330"></td>
                </tr>
               </table>
                <div class="listborder">
                <asp:DataList ID="dltoplist" DataKeyField="RentID" runat="server"  EnableViewState="false" Width="100%">
                            <HeaderTemplate>
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                <tr >
                                    
                                    <td  class="loginbar2" nowrap width="70">区域</td>
                                    <td class="loginbar2"  nowrap width="330" align="left">标题</td>
                                    <td class="loginbar2" nowrap width="70">间隔</td>
                                    <td class="loginbar2" nowrap width="70">面积</td>
                                    <td class="loginbar2" nowrap width="50">租金</td>
                                    <td class="loginbar2" nowrap width="40">时间</td>
                                    
                                    
                                </tr>
                            </HeaderTemplate>
                        <ItemTemplate>
                            <tr  onmouseover="javascript:this.style.backgroundColor='#f3f3f3';" onmouseout="javascript:this.style.backgroundColor='#FFFFFF';">
                            
                            <td class="listitem" align="center" width="70">
                                <a  href='<%#FormatUrl.RentListByRegionUrl(Eval("RegionID").ToString())%>'>
                                    <%#Eval("RegionName") %>
                               </a>
                            </td>
                            
                            <td class="listitem_title" width="330">
                                <a target="_blank" href='<%#FormatUrl.RentContentUrl(Eval("RentID").ToString())%>'>
                                    <%#Common.myStringWidthoutDot(Eval("Title").ToString(),36) %>
                                 </a>
                                 &nbsp;<img src="images/ding.gif" alt="租房" />
                                 
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
                                <%#Common.FilterRentPrice(Eval("RentPrice").ToString(),Eval("RentUnit").ToString()) %>
                            </td>

                            <td class="listitem" width="40">
                                <%#Eval("AddDate","{0:d}").ToString().Substring(5)%>
                            </td>
                            
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate></table></FooterTemplate>
                        </asp:DataList>
                        <asp:DataList ID="dlselllist" DataKeyField="RentID" runat="server"  EnableViewState="false" Width="100%">
                            <HeaderTemplate>
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                
                            </HeaderTemplate>
                        <ItemTemplate>
                            <tr  onmouseover="javascript:this.style.backgroundColor='#f3f3f3';" onmouseout="javascript:this.style.backgroundColor='#FFFFFF';">
                            
                            <td class="listitem" align="center" width="70">
                                <a  href='<%#FormatUrl.RentListByRegionUrl(Eval("RegionID").ToString())%>'>
                                    <%#Eval("RegionName") %>
                               </a>
                            </td>
                            
                            <td class="listitem_title" width="330">
                                <a target="_blank" href='<%#FormatUrl.RentContentUrl(Eval("RentID").ToString())%>'>
                                    <%#Common.myStringWidthoutDot(Eval("Title").ToString(),36) %>
                                 </a>
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
                                <%#Common.FilterRentPrice(Eval("RentPrice").ToString(),Eval("RentUnit").ToString()) %>
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
                        <div class="titlehead">十万火急出租的房源</div>
                        <div class="adrightitem">
                              <%=V.RentByRecom(5,false,false,false,false,false,false,false,false,15,true,0,0,"dot") %>
                        </div>
                    </div>
                    <div class="columnright">
                        <div class="titlehead"><img src="<%=Common.GetSiteUrl() %>/images/line.gif" align="absmiddle" />&nbsp;本站推荐经纪人</div>
                        <div class="adrightitem">
                            <%=V.AgentByRecom(2, false, true, true, true, true, 90, 80, 10, "lineheight2")%>
                            
                        </div>
                    </div>
                    <div class="columnright">
                        <div class="titlehead"><img src="<%=Common.GetSiteUrl() %>/images/line.gif" align="absmiddle" />&nbsp;最新求租房源</div>
                        <div class="adrightitem">
                             <%=V.QiuZu(10,true,15,false,"dot") %>
                            <center><span><a href='<%=FormatUrl.QiuZuHomeUrl() %>' target="_blank"><font color="red">更多求租信息>>></font></a></span></center>
                        </div>
                    </div>
                    
                    <div class="columnright">
                        <div class="titlehead">租房指南</div>
                        <div class="adrightitem">
                            <%=V.News(0,98,8,false,14,true,false,true,"dot") %>
                        </div>
                     </div>
                    
                </div>
            
           
            
        </div>
        
        <div>
            <uc2:Footer ID="Footer2" runat="server" />
        </div>
    </form>

</body>
</html>
