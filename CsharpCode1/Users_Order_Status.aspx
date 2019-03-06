<%@ page language="C#" autoeventwireup="true" inherits="Users_Order_Status, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Assembly="MagicAjax" Namespace="MagicAjax.UI.Controls" TagPrefix="ajax" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>帐号充值,购买积分,<%=Common.GetSiteName() %></title>
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
                <div class="titlehead">系统提示　－　生成订单</div>
                    <div class="msgtip">
                         <div class=black style="width:600px;text-align:left;">
                            <br />
                            <%=OrderNo %> 请及时付款！详细情况如下：
                            <br />
                            <table width="600px;" bgcolor="#799ae1" cellpadding="0" cellspacing="1">
                                <tr>
                                    <td bgcolor="#f4f4f4" style="height: 28px" align="center">
                                        订单号</td>
                                    <td bgcolor="#f4f4f4" style="height: 28px" align="center">
                                        总价(单位：元)</td>
                                    <td bgcolor="#f4f4f4" style="height: 28px" align="center">
                                        订单描述</td>
                                    <td bgcolor="#f4f4f4" style="height: 28px" align="center">
                                        下单日期</td>
                                </tr>
                                 <tr>
                                    <td bgcolor="white" align="center">
                                    <%=OrderNum %>
                                    </td>
                                     <td bgcolor="white" align="center">
                                     <%=TotalPrice %>
                                     </td>
                                     <td bgcolor="white" align="center">
                                     <%=OrderIntro %>
                                     </td>
                                     <td bgcolor="white" align="center">
                                     <%=OrderDate %>
                                     </td>
                                </tr>
                            </table>
                            
                            <br />
                             <asp:Button ID="Button1" Visible=false runat="server" OnClick="Button1_Click" Text="马上使用支付宝或网上银行支付" /><br />
                          <br />
<div class=red>提醒：如果您没有支付宝，也可以点击该按钮进行支付，点击后选择"<b>使用网上银行付款</b>"即可！如有其它问题，请与我们联系！非常感谢！</div>
</div>
                    </div>
                </div><br />
                <div class=border>
                    <div class=titlehead>如何支付</div>
                    <div class="msgtip">
                         
                    <div  class=black style="width:520px;text-align:left;">
                        
                       您可以通过以下方式支付您的订单：<br />
                       
                        ------请在此填写您的汇款帐号------                                 
                        
                    </div>
                    </div>
              </div>
              <br />
              
              <div class=border>
                    <div class=titlehead>积分情况</div>
                    <div class="msgtip">
                         
                    <div  class=black style="width:520px;text-align:left;">
                        
                        您现在的积分为：<font color=red><b><%=Common.GetUserScores(Common.GetUserID(Common.GetCookie("UserLogin")))%></b></font>
                        
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
