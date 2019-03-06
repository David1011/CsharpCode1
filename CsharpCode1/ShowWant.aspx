<%@ page language="C#" autoeventwireup="true" inherits="ShowWant, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="Search_Rent.ascx" TagName="Search_Rent" TagPrefix="uc3" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
       <title><%=PageTitle %>,<%=Common.GetCityName() %>二手房求购,<%=Common.GetCityName() %>二手房求购信息,<%=Common.GetCityName() %>房产网</title>
    <meta name="keywords" content="惠州二手房求购,惠州二手房求购信息,惠州房产网" />
    <meta name="description" content="惠州二手房求购,惠州二手房求购信息,惠州房产网" />
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
        <form id="form2" runat="server">
            <uc8:LoginUC id="LoginUC2" runat="server">
            </uc8:LoginUC>
            <div>
                 <uc1:Header ID="Header2" runat="server" />
            </div>
             <div class="columncontain3">

                    <div>
                        <uc3:Search_Rent ID="Search_Rent1" runat="server" />
                     </div>
               
            </div>
            <div class="columncontain">
                <div class="currnavtop">
                   &nbsp;
                您的位置：
                <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
                <a href='<%=FormatUrl.QiuZuHomeUrl() %>'>求租</a>
               
                
            </div>
        </div>
       
           <div class="middlebody">
            <!--具体内容-->
            <div  class="listborder">
             <table width="100%">
                    <tr>
                        <td class="loginbar2" style="font-size:15px;"><b>求租<%=Region %><%=HuXing %><%=RentPrice %>左右</b></td>
                    </tr>
                    <tr>
                        <td align="center" class="lineheight2">
                            <a href="javascript:window.external.addFavorite('<%=PageUrl %>','<%=HouseName %>')">
	                                <img src="images/nav.gif" align="absmiddle" />&nbsp;收藏该房源
	                            </a> &nbsp;
	                            <a  onclick="JavaScript: clipboardData.setData('Text','<%=CopyPageUrl %>');alert('本页面地址已经复制，您可以通过CTRL+V或鼠标右键粘贴该地址');return false;" href="JavaScript:;" >
	                            <img src="images/nav.gif" align="absmiddle" />&nbsp;推荐此房给朋友</a>
	                            <a  href='<%=DoReport() %>' target="_blank">
	                            <img src="images/nav.gif" align="absmiddle" />&nbsp;举报虚假房源</a>
                        </td>
                    </tr>
                </table>
                <table width="100%" bgcolor="#cccccc" cellpadding="1" cellspacing="1">
                    
                    <tr>
                        <td class="itemtitle" bgcolor="white" style="">发布时间：</td>
                        <td bgcolor="white" class="itemtitle" style="background: white"><%=PubDate %></td>
                        <td class="itemtitle" bgcolor="white">有效期：</td>
                        <td bgcolor="white" class="itemtitle" colspan="3" style="background: white"><%=AvaiDate %>天</td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle" style="">求租区域：</td>
                        <td bgcolor="white" class="itemtitle" style="background: white" colspan="5"><%=Region %></td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle" style="">房屋户型：</td>
                        <td bgcolor="white" class="itemtitle" style="background: white" colspan="5"><%=HuXing %></td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle" style="">期望租金：</td>
                        <td bgcolor="white" class="itemtitle" colspan="5" style="background: white">不超过&nbsp;<span class="price"><%=RentPrice%></span></td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle">房屋类型：
                        </td>
                        <td bgcolor="white" class="itemtitle" colspan="5" style="background: white"><%=LeiXing %>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle">楼层要求：
                        </td>
                        <td bgcolor="white" class="itemtitle" colspan="5" style="background: white"><%=Floor %>
                        </td>
                    </tr>
                    
                </table>
                
                <table border="0" style="width: 100%; height: 100%">
                <tr>
                
                    </tr>
                    <tr>
                        <td colspan="2" class="titlehead">联系方式
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="3" width="85" class="lineheight2" align="center" valign="top">
                            
                            <img src="images/agentphoto.gif" align="absmiddle" class="userpic2"><br />
                        </td>
                        <td rowspan="3" class="lineheight2" >
                         
                         联系人：<%=RealName %>
                       <br />
                            联系电话：<span class="font15"><b><%=Tel %>&nbsp;<%=Mobile %></b></span>
                            
                             <%=QQ %><br />
                             <%=Email %>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                </table>
                
                <div class="twocolumnleftbody">
                    <div class="titlehead">描述</div>
                    <div class="intro"><%=Details %></div>
                    
                </div>
            </div>
            <!--相关内容-->
            <div class="columnrightbody">
                   <div class="columnright" style="border:0px;">
                    
                    <a href='<%=FormatUrl.AddQiuZuUrl() %>'>
                                <img src="images/pubqz2.gif" align="absmiddle" />
                            </a>
                       <a href='<%=FormatUrl.RegisterUrl() %>'>
                                <img src="images/reg2.gif" align="absmiddle" />
                            </a>
                </div>     
                <div class="columnright">
                     
                    <div class="titlehead"><img src="images/line.gif" align="absmiddle" />&nbsp;本站推荐经纪人
                    </div>
                    <div class="adrightitem">
                        <%=V.AgentByRecom(2,false,true,true,true,true,82,102,6,"lineheight2") %>
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
