<%@ page language="C#" autoeventwireup="true" inherits="SiteMap, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="CompanyFooter.ascx" TagName="CompanyFooter" TagPrefix="uc3" %>

<%@ Register Src="CompanyLeft.ascx" TagName="CompanyLeft" TagPrefix="uc2" %>

<%@ Register Src="CompanyHeader.ascx" TagName="CompanyHeader" TagPrefix="uc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>网站地图,网站导航,sitemap,<%=SiteName %></title>
    <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
    <meta name="keywords" content="网站地图,网站导航,sitemap" />
 </head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:CompanyHeader id="CompanyHeader1" runat="server">
        </uc1:CompanyHeader></div>
       
        <TABLE cellSpacing=5 cellPadding=0 width=770 align=center border=0>
            <tr>
                <td colspan="2" height="20"></td>
            </tr>
            <tr>
                <td width="150" style="border-right:1px dotted #ccc;" valign="top">
                     <uc2:CompanyLeft id="CompanyLeft1" runat="server">
                     </uc2:CompanyLeft>
                </td>
                 <td width="615" valign="top">
                    <div class="companyhead">·网站导航</div>
                    <div class="companyitem" style="text-indent:0px;">
                         <table width=100% style="border:1px solid #ccc;background:#f3f3f3;">
                               <tr>
                                   <td align="left" bgcolor="#ffffff" class="classic" style="width: 100px">
                                        &nbsp;<a href='<%=FormatUrl.HomeUrl() %>'><%=SiteName %>首页</a>
                                    </td>
                                   <td align="left" bgcolor="#ffffff" class="classic"></td>
                               </tr>
                               <tr>
                                   <td align="left" bgcolor="#ffffff" class="classic" style="width: 100px">
                                       &nbsp;<a href='<%=FormatUrl.RentHomeUrl() %>'><%=Common.GetCityName() %>租房</a>
                                      
                                   </td>
                                   <td align="left" bgcolor="#ffffff" class="classic">
                                       &nbsp;<a href='<%=FormatUrl.RentHomeUrl() %>' class="black"><%=Common.GetCityName() %>出租房</a> 
                                       <a href='<%=FormatUrl.QiuZuHomeUrl() %>' class="black"><%=Common.GetCityName() %>求租房</a>

                                   </td>
                               </tr>
                               <tr>
                                <td align="left" bgcolor="#ffffff" class="classic" colspan="2">
                                    <asp:DataList ID="dlzfregionlist" runat="server" Width="100%" RepeatDirection="horizontal" EnableViewState="false">
                                        <ItemTemplate>
                                            <a class="black" href='<%#FormatUrl.RentListByRegionUrl(Eval("RegionID").ToString()) %>'>
                                                <%#Eval("RegionName") %>
                                            </a>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                               </tr>
                               <tr>
                                   <td align="left" bgcolor="#ffffff" class="classic" style="width: 100px">
                                       &nbsp;<a href='<%=FormatUrl.SellHomeUrl() %>'><%=Common.GetCityName() %>二手房</a>
                                   </td>
                                   <td align="left" bgcolor="#ffffff" class="classic">
                                     &nbsp;<a href='<%=FormatUrl.SellHomeUrl() %>' class="black"><%=Common.GetCityName() %>出售信息</a> 
                                       <a href='<%=FormatUrl.BuyHouseHomeUrl() %>' class="black"><%=Common.GetCityName() %>求购信息</a>

                                   </td>
                               </tr>
                               <tr>
                                <td align="left" bgcolor="#ffffff" class="classic" colspan="2">
                                    <asp:DataList ID="dlsellregionlist" runat="server" Width="100%" RepeatDirection="horizontal" EnableViewState="false">
                                        <ItemTemplate>
                                            <a class="black" href='<%#FormatUrl.SellListByRegionUrl(Eval("RegionID").ToString()) %>'>
                                                <%#Eval("RegionName") %>
                                            </a>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                               </tr>
                               <tr>
                                   <td align="left" bgcolor="#ffffff" class="classic" style="width: 100px">
                                       &nbsp;<a href='<%=FormatUrl.LouPanHomeUrl() %>'><%=Common.GetCityName() %>楼盘大全</a>
                                   </td>
                                    <td align="left" bgcolor="#ffffff" class="classic">
                                    &nbsp;
                                    </td>
                               </tr>
                               <tr>
                                <td align="left" bgcolor="#ffffff" class="classic" colspan="2">
                                    <asp:DataList ID="dllpregionlist" runat="server" Width="100%" RepeatDirection="horizontal" EnableViewState="false">
                                        <ItemTemplate>
                                            <a class="black" href='<%#FormatUrl.LouPanByRegionID(Convert.ToInt32(Eval("RegionID").ToString())) %>'>
                                                <%#Eval("RegionName") %>
                                            </a>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                               </tr>
                                <tr>
                                   <td align="left" bgcolor="#ffffff" class="classic" style="width: 100px">
                                       &nbsp;<a href='<%=FormatUrl.AgentHomeUrl() %>'><%=Common.GetCityName() %>网络房产中介</a>
                                   </td>
                                    <td align="left" bgcolor="#ffffff" class="classic">
                                    &nbsp;
                                    </td>
                               </tr>
                               <tr>
                                <td align="left" bgcolor="#ffffff" class="classic" colspan="2">
                                    <asp:DataList ID="dlagentregionlist" runat="server" Width="100%" RepeatDirection="horizontal" EnableViewState="false">
                                        <ItemTemplate>
                                            <a class="black" href='<%#FormatUrl.AgentListByRegionUrl(Eval("RegionID").ToString()) %>'>
                                                <%#Eval("RegionName") %>
                                            </a>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                               </tr>
                                <tr>
                                   <td align="left" bgcolor="#ffffff" class="classic" style="width: 100px">
                                       &nbsp;<a href='<%=FormatUrl.AskHomeUrl() %>'><%=Common.GetCityName() %>房产资讯</a>
                                   </td>
                                    <td align="left" bgcolor="#ffffff" class="classic">
                                    &nbsp;
                                    </td>
                               </tr>
                               <tr>
                                <td align="left" bgcolor="#ffffff" class="classic" colspan="2">
                                    <asp:DataList ID="dlaskclass" runat="server" Width="100%" RepeatDirection="horizontal" EnableViewState="false">
                                        <ItemTemplate>
                                            <a class="black" href='<%#FormatUrl.AskListByCid(Convert.ToInt32(Eval("ClassID").ToString())) %>'>
                                                <%#Eval("ClassName") %>
                                            </a>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                               </tr>
                              
                              
                           </table>
                    </div>
                </td>
            </tr>
        </TABLE>
        <uc3:CompanyFooter ID="CompanyFooter1" runat="server" />
    </form>
</body>
</html>
