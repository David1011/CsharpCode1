<%@ page language="C#" autoeventwireup="true" inherits="Users_ScoreTip, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>系统提示,我的管理中心,<%=Common.GetSiteName() %></title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="copyright" content="Copyright 2007. 0752house.com All Rights Reserved.">
    <meta name="author" content="0752house.com">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
     <script src="js/search.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
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
            <a href='<%=FormatUrl.MyUCenter() %>'>我的管理中心</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top" ><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
           <td valign="top">
           <div class=border>
                <div class="titlehead">信息提示</div>
               <div class="msgtip">
                <br />
                    很抱歉，您的积分不够，无法<%=Tip %>房源． 详细信息如下<br />
                    <div class=black style="width:520px;text-align:left;">
                        <br />
                        1．刷新房源 (需要 <font color=red><b><%=Common.GetRefleshScore() %></b></font> 个积分)
                        <br />
                        2．火急房源 (需要 <font color=red><b><%=Common.GetRecomScore() %></b></font> 个积分)
                        <br />
                        3．置顶房源 (需要 <font color=red><b><%=Common.GetTopScore() %></b></font> 个积分)
                        
                    </div>
                </div>
                </div><br />
              <div class=border>
                    <div class=titlehead>积分情况</div>
                    <div class="msgtip">
                    <div  class=black style="width:520px;text-align:left;">
                        
                        您现在的积分为：<font color=red><b><%=Common.GetUserScores(Common.GetUserID(Common.GetCookie("UserLogin")))%></b></font>
                        <br />
                        一个积分 = <%=Common.GetScoreOfOneYuan() %> 元
                        <a href="users_order.aspx"><font color=blue><u>点击此处立刻充值</u></font></a>
                        <br />
                        如需帮助，请联系：<font color=red><b><%=Tel %></b></font>  客服ＱＱ：
                              <%=QQ %>                   
                        
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
