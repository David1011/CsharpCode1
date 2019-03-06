<%@ page language="C#" autoeventwireup="true" inherits="Users_RecomMyShop, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Assembly="MagicAjax" Namespace="MagicAjax.UI.Controls" TagPrefix="ajax" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>推荐我的网店到网站首页,我的管理中心,<%=Common.GetSiteName() %></title>
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
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top" ><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
           <td valign="top">
           <div class=border>
                <div class="titlehead">推荐我的网店到网站首页</div>
                <div class="msgtip">
                    <%=Tips %>
                </div>
               <div class="msgtip">
                
                   <br />
                    <div class=lineheight2 style="width:520px;text-align:left;">
                        <table bgcolor="#799ae1" cellpadding="0" cellspacing="1" width="90%">
                            <tr>
                                <td bgcolor="white" height="30" align=center>
                                   &nbsp;您正在推荐个人网店到网站首页
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="white" height="30">&nbsp;
                           <font color=blue>请设置时间：</font>
                           <ajax:AjaxPanel ID="AjaxPanel1" runat="server">
                            <asp:DropDownList ID="dllday" runat=server AutoPostBack="True" OnSelectedIndexChanged="dllday_SelectedIndexChanged">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                            </asp:DropDownList>天，
                            需要&nbsp;<b><asp:Label ID="lblscore" runat=server Text="" ForeColor=red></asp:Label></b>&nbsp;个积分，
                            </ajax:AjaxPanel>
                            您现在的积分为：<font color=red><b><%=Common.GetUserScores(Common.GetUserID(Common.GetCookie("UserLogin")))%></b></font>
                            </td>
                           </tr>
                           <tr>
                               <td bgcolor="white" height="40" align=center>
                                    &nbsp;<asp:Button ID="btnsubmit" runat=server Text="提交推荐" OnClick="btnsubmit_Click" />
                                    &nbsp;<a href="users_order.aspx"><font color=blue><u>点击此处立刻充值</u></font></a>
                                    &nbsp;<a href="javascript:history.go(-1);">返回上一页</a>
                               </td>
                           </tr>
                       </table>
                    </div> <br /><br />
                </div>
                </div><br />
              <div class=border>
                    <div class=titlehead>积分情况</div>
                    <div class="msgtip">
                    <div  class=black style="width:520px;text-align:left;">
                        提示：推荐个人网店到网站首页一天需要 <font color=red><b><%=Common.GetRecomAgentScore()%></b></font> 个积分
                        <br />
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
              <br />
              <div class=border>
                <div class=titlehead>推荐个人网店到网站首页帮助和流程</div>
                <div class="msgtip">
                    
                    <div class=black style="width:520px;text-align:left;">
                       
                    </div>
                    <center></center><br />
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
