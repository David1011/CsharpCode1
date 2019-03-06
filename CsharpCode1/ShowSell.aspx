<%@ page language="C#" autoeventwireup="true" inherits="ShowSell, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="Searcher_Sell.ascx" TagName="Searcher_Sell" TagPrefix="uc4" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="UserComments.ascx" TagName="UserComments" TagPrefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=PageTitle %>,<%=Common.GetCityName() %>二手房出售,<%=Common.GetCityName() %>二手房信息,<%=Common.GetCityName() %>房产网</title>
    <meta name="keywords" content="惠州二手房出售,惠州二手房信息,惠州房产网" />
    <meta name="description" content="惠州二手房出售,惠州二手房信息,惠州房产网" />
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

                    <div>
                        <uc4:Searcher_Sell ID="Searcher_Sell1" runat="server" />
                     </div>
               
            </div>
           
        <div class="columncontain">
                <div class="currnavtop">
                
                    &nbsp;
                    您的位置：
                    <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
                    <a href='<%=FormatUrl.SellHomeUrl() %>'>二手房</a>
                    > <%=RegName %>二手房
                    <%=AreaName %>二手房
                    
                </div>
        </div>
     
        <!--内容开始-->
        <div class="middlebody">
            <!--具体内容-->
            <div  class="listborder">
                 <table width="100%">
                    <tr>
                        <td class="loginbar2" style="font-size:15px;"><b><%=HouseTitle %></b></td>
                    </tr>
                    <tr>
                        <td align="center" class="lineheight2">
                            <a href="javascript:window.external.addFavorite('<%=PageUrl %>','<%=HouseName %>')">
	                                <img src="images/nav.gif" align="absmiddle" />&nbsp;收藏该房源
	                            </a> &nbsp;
	                            <a  onclick="JavaScript: clipboardData.setData('Text','<%=PageUrl %>');alert('本页面地址已经复制，您可以通过CTRL+V或鼠标右键粘贴该地址');return false;" href="JavaScript:;" >
	                            <img src="images/nav.gif" align="absmiddle" />&nbsp;推荐此房给朋友</a>
	                            <a  href='<%=DoReport() %>' target="_blank">
	                            <img src="images/nav.gif" align="absmiddle" />&nbsp;举报虚假房源</a>
                        </td>
                    </tr>
                </table>
                <table width="100%" bgcolor="#cccccc" cellpadding="1" cellspacing="1">
                    
                    <tr>
                        <td class="itemtitle" bgcolor="white" style="" width="80">发布时间：</td>
                        <td bgcolor="white" class="itemtitle" style="background: white"><%=PubDate %></td>
                        <td class="itemtitle" bgcolor="white" width="80">有效期：</td>
                        <td bgcolor="white" class="itemtitle" colspan="3" style="background: white"><%=AvaiDate %>天</td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle" style="">物业名称：</td>
                        <td bgcolor="white" class="itemtitle" style="background: white"><%=QuarterName %></td>
                        <td bgcolor="white" class="itemtitle">物业类型：</td>
                        <td bgcolor="white" class="itemtitle" colspan="3" style="background: white"><%=LeiXing %></td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle" style="">房屋户型：</td>
                        <td bgcolor="white" class="itemtitle" style="background: white"><%=HuXing %></td>
                        <td bgcolor="white" class="itemtitle"></td>
                        <td bgcolor="white" class="itemtitle" colspan="3" style="background: white"></td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle" style="">具体地址：</td>
                        <td bgcolor="white" class="itemtitle" colspan="5" style="background: white"><%=HouseAddress %></td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle" style="">所在楼层：</td>
                        <td bgcolor="white" class="itemtitle" style="background: white"><%=Floor %>楼　最高<%=TopFloor %>楼</td>
                        <td bgcolor="white" class="itemtitle">装修：</td>
                        <td bgcolor="white" class="itemtitle" style="background: white" colspan="3"><%=ZhuangXiu %></td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle">
                            朝向：</td>
                        <td bgcolor="white" class="itemtitle" style="background: white"><%=FangWei %>
                        </td>
                        <td bgcolor="white" class="itemtitle">
                            证件：</td>
                        <td bgcolor="white" class="itemtitle" style="background: white" colspan="3"><%=FCZ %>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle" style="">房屋售价：</td>
                        <td bgcolor="white" class="itemtitle" style="BACKGROUND: white"><span class="price"><%=Price%></span></td>
                        <td bgcolor="white" class="itemtitle">支付方式：</td>
                        <td bgcolor="white" class="itemtitle" style="background: white" colspan="3"><%=PayType %></td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle">房屋楼龄：
                        </td>
                        <td bgcolor="white" class="itemtitle" style="background: white" colspan="5"><%=HouseAge %>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle">面积：
                        </td>
                        <td bgcolor="white" class="itemtitle" style="background: white" colspan="5"><%=HouseSize %>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle">电梯情况：
                        </td>
                        <td bgcolor="white" class="itemtitle" style="background: white" colspan="5"><%=HasLeft %>
                        </td>
                    </tr>
                    
                    
                </table>
                
                <table border="0" style="width: 100%; height: 100%">
                <tr>
                
                    </tr>
                    <tr>
                        <td colspan="2" class="whitehead">联系方式
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="3" width="85" class="lineheight2" align="center" valign="top">
                            <center>
                            <%=SPic %><br /><%=UserType %>
                            </center>
                        </td>
                        <td rowspan="3" class="lineheight2" >
                         <%=Company %><br />
                         联系人：<%=RealName %>&nbsp;(本人承诺所发布房源真实存在)
                       <br />
                            联系电话：<span class="font15"><b><%=Tel %>&nbsp;&nbsp;<%=Mobile %></b></span>
                            
                             <%=QQ %><br>
				<span class=red>喂，您好！我＜惠州房产网＞上看到您发布的信息，我想问下...</span>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                </table>
                
                <div class="twocolumnleftbody">
                    <div class="whitehead">房源描述</div>
                    <div class="intro"><%=Details %></div>
                    <div>
                     <uc3:UserComments ID="UserComments1" runat="server" />
                    </div>
                    <!--物业简介-->
                    <div class="whitehead"><%=QuarterName %>　物业简介</div>
                    <div class="intro">
                        <!--<%=LPIntro %>-->
                        <div class="floatright"><%=MoreLouPanIntro %></div>
                    </div>
                </div>
            </div>
            <!--相关内容-->
            <div class="columnrightbody">
            <div class="columnrightbody">
                   <div class="columnright" style="border:0px;">
                    
                     <a href='<%=FormatUrl.AddBuyUrl() %>'>
                                <img src="images/pubqgbg.gif" align="absmiddle" />
                            </a>
                       <a href='<%=FormatUrl.RegisterUrl() %>'>
                                <img src="images/reg2.gif" align="absmiddle" />
                            </a>
                </div>  
                 <div class="columnright">
                        <div class="titlehead">十万火急出售的房源</div>
                        <div class="adrightitem">
                            <%=V.SellByRecom(5,false,false,false,false,false,false,false,false,15,true,0,0,"dot") %>
                        </div>
                    </div>
                 <div class="columnright">
                    <div class="titlehead">售价相近的二手房源
                    </div>
                    <div class="adrightitem">
                        <asp:Repeater ID="rpsamerpce" runat="server" EnableViewState="false">
                            <ItemTemplate>
                                <div class="lineheight" style="text-align:left;">
                                    ·<a href='<%#FormatUrl.SellContentUrl(Convert.ToInt64(Eval("SellID").ToString())) %>' title='<%#Eval("Title") %>'>
                                        <%#Common.myStringWidthoutDot(Eval("Title").ToString(),16) %>
                                    </a> <%#Common.FilterSellPrice(Eval("SellPrice").ToString()) %>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

                <div class="columnright">
                    <div class="titlehead"><%=RealName %>的其它二手房源
                    </div>
                    <div class="adrightitem">
                        <asp:Repeater ID="rpsellbyuser" runat="server" EnableViewState="false">
                            <ItemTemplate>
                                <div class="lineheight" style="text-align:left;">
                                    ·<a href='<%#FormatUrl.SellContentUrl(Convert.ToInt64(Eval("SellID").ToString())) %>' title='<%#Eval("Title") %>'>
                                        <%#Common.myStringWidthoutDot(Eval("Title").ToString(),16) %>
                                    </a> <%#Common.FilterSellPrice(Eval("SellPrice").ToString()) %>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                
                <div class="columnright">
                        <div class="titlehead"><img src="<%=Common.GetSiteUrl() %>/images/line.gif" align="absmiddle" />&nbsp;本站推荐经纪人</div>
                        <div class="adrightitem">
                             <%=V.AgentByRecom(2,false,true,true,true,true,90,80,8,"dot") %>
                        </div>
                    </div>
                
            </div>
        </div>
        <!--内容结束-->
        </div>
        <div>
            <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>

