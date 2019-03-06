<%@ page language="C#" autoeventwireup="true" inherits="Users_Order, House_FreeV2_deploy" enableEventValidation="false" %>
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
                <div class="titlehead">
                    帐号充值 － 购买积分 － 金牌会员增值服务</div>
               <div class="msgtip">
                   <br />
                    <%=Tips %>
                     <table width="600px;" style="color:Black;"  cellpadding="0" cellspacing="1" bgcolor="#799ae1">
                       <tr>
                            <td bgcolor="#f4f4f4" class=whitehead style="height:15px;">直接购买积分</td>
                       </tr>
                       <tr>
                           <td align="left"  colspan="4" style="height: 45px" bgcolor="white">
                               &nbsp;请输入要购买的积分：
                   <asp:TextBox ID="tbscore" runat="server" Font-Bold="True" Font-Size="Medium">50</asp:TextBox>
                  
                   <asp:Button ID="btnbuyscore" runat="server" Text="立即购买" OnClick="btnbuyscore_Click" BackColor="Silver" Height="22px" Width="78px" />

                           </td>
                       </tr>
                     </table><br /><br />
                   <table width="600px;" style="color:Black;"  cellpadding="0" cellspacing="1" bgcolor="#799ae1">
                        <tr>
                            <td bgcolor="#f4f4f4" class=whitehead style="height:15px;">套餐制</td>
                       </tr>
                       <tr>
                           <td align="left" colspan="4" style="height: 45px" bgcolor="#ffffff">
                               <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                               </asp:RadioButtonList></td>
                       </tr>
                         <tr>
                           <td align="left" colspan="4" bgcolor="#ffffff">
                               &nbsp;<asp:Button  ID="btnbaoyue" runat=server Text="免费版不能使用套餐制,如需使用请购买正式版,联系请见使用说明,谢谢" Enabled=false OnClick="btnbaoyue_Click" BackColor="Silver" />   
                           </td>
                       </tr>
                            </table>
                  
                   <br />
                        一个积分 = <%=Common.GetScoreOfOneYuan() %> 元<br>如何支付？您可以购买积分后到银行转帐汇款或使用网上银行或支付宝支付 
                        
                </div>
                </div><br />
              <div class=border>
                    <div class=titlehead>积分情况</div>
                    <div class="msgtip">
                         <div class=black style="width:520px;text-align:left;">
                        
                       
                        1．刷新信息 (刷新一次需要 <font color=red><b><%=Common.GetRefleshScore() %></b></font> 个积分)
                        <br />
                        2．火急房源 (设置火急房源一天需要 <font color=red><b><%=Common.GetRecomScore() %></b></font> 个积分)
                        <br />
                        3．置顶信息 (置顶一天需要 <font color=red><b><%=Common.GetTopScore() %></b></font> 个积分)
                        <br />
                        4．经纪人推荐（推荐一天需要 <font color=red><b><%=Common.GetRecomAgentScore() %></b></font> 个积分)
                    </div>
                        <br />
                    <div  class=black style="width:520px;text-align:left;">
                        
                        您现在的积分为：<font color=red><b><%=Common.GetUserScores(Common.GetUserID(Common.GetCookie("UserLogin")))%></b></font>
                        
                        <br />
                        如需帮助，请联系：<font color=red><b><%=Tel %></b></font>  客服ＱＱ：
                              <%=QQ %>                   
                        
                    </div>
                    </div>
              </div>
<br>
<div class=border>
                    <div class=titlehead>如何支付</div>
                    <div class="msgtip">
                         
                    <div  class=black style="width:520px;text-align:left;">
                        
                       您可以通过以下方式支付您的订单：<br />
                      
                    </div>
                    </div>
              </div>
              <br />
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
