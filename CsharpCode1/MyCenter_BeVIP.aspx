<%@ page language="C#" autoeventwireup="true" inherits="MyCenter_BeVIP, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>我的管理中心,<%=Common.GetSiteName() %></title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:LoginUC ID="LoginUC1" runat="server" />
    </div>
    <div>
            <uc1:Header ID="Header1" runat="server" />
        </div>
    <div class="paddingtb"></div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250"><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
            <td valign="top">
                <div class="border">
                    <div class="titlehead">
                        升级为金牌会员<br /><br />
                    </div>
                    <div class="lineheight2" style="text-align:left;">
                    金牌会员的优势：<br />
                    1.　可批量重新更新发布过的信息，为您腾出更多的时间寻找客户<br />
                    2.  可以置顶房源信息,时刻都能被别人关注到
                    3.  可以设置为十万火急房源,帮助您快速出租出售
                    4.  经纪人可将自己的网店推荐到首页
                    
                    <br /><br />
                        <font color=red>请与本站联系升级为金牌会员，联系电话：<b><%=SiteTel %></b></font>
                    </div>
                </div>
            </td>
        </tr>
    </table>
        
         <div>
             <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
