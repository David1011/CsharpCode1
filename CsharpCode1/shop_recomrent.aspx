<%@ page language="C#" autoeventwireup="true" inherits="shop_recomrent, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head2" runat="server">
     <title>推荐设置,我的管理中心,<%=Common.GetCityName() %>房产网</title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="copyright" content="Copyright 2007. 0752house.com All Rights Reserved.">
    <meta name="author" content="0752house">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
     <script src="js/search.js" type="text/javascript"></script>
</head>
<body>
    <form id="form2" runat="server">
    <div>
        <uc1:LoginUC ID="LoginUC1" runat="server" />
    </div>
    <div>
            <uc1:Header ID="Header1" runat="server" />
        </div>
     <div class="currnav">
            <div class="currnavtop">
                <img src="images/navh.JPG" align="absmiddle" />&nbsp;
            您的位置：
            <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.MyUCenter() %>'>我的管理中心</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.MyAgentCenterRent() %>'>管理出租信息</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top"><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
           <td valign="top">
                <div class="border">
                    <div class="titlehead">
                        推荐设置 &nbsp;您的信息将被推荐到个人网店最显眼的位置
                    </div>
                    <div>
                                 <table cellpadding=0 cellspacing=0 border=0 width=100% align=center>
                                     <tr>
                                        <td class="msgtip"><%=Tip %>
                                            </td>
                                     </tr>
                                     <tr>
                                         <td class=lineheight2  style="text-align:center;">
                                            <%=Titles %><br /><br />
                                              <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" />
                                            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                                            &nbsp;<a href="javascript:history.go(-1);">返回上一页</a>
                                            </td>
                                     </tr>
           
        </table><br />

                    </div>
                </div>
                 <br />
              <div class=border>
                    <div class=titlehead>系统提示</div>
                    <div class="msgtip">
                    <div  class=black style="width:520px;text-align:left;">
                        您可以把重要的房源信息＂推荐到您的网店的首页＂．推荐后，房源信息将会以图片和文字混合的形式展现在用户面前．同时您也可以取消此操作．
                        
                    </div>
                    </div>
              </div>
            </td>
        </tr>
    </table>
        </div>
         <div>
             <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>

