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
     <title>�ʺų�ֵ,�������,<%=Common.GetSiteName() %></title>
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
            ����λ�ã�
            <a href='<%=FormatUrl.HomeUrl() %>'>��վ��ҳ</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.MyUCenter() %>'>�ҵĹ�������</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top" ><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
           <td valign="top">
           <div class=border>
                <div class="titlehead">
                    �ʺų�ֵ �� ������� �� ���ƻ�Ա��ֵ����</div>
               <div class="msgtip">
                   <br />
                    <%=Tips %>
                     <table width="600px;" style="color:Black;"  cellpadding="0" cellspacing="1" bgcolor="#799ae1">
                       <tr>
                            <td bgcolor="#f4f4f4" class=whitehead style="height:15px;">ֱ�ӹ������</td>
                       </tr>
                       <tr>
                           <td align="left"  colspan="4" style="height: 45px" bgcolor="white">
                               &nbsp;������Ҫ����Ļ��֣�
                   <asp:TextBox ID="tbscore" runat="server" Font-Bold="True" Font-Size="Medium">50</asp:TextBox>
                  
                   <asp:Button ID="btnbuyscore" runat="server" Text="��������" OnClick="btnbuyscore_Click" BackColor="Silver" Height="22px" Width="78px" />

                           </td>
                       </tr>
                     </table><br /><br />
                   <table width="600px;" style="color:Black;"  cellpadding="0" cellspacing="1" bgcolor="#799ae1">
                        <tr>
                            <td bgcolor="#f4f4f4" class=whitehead style="height:15px;">�ײ���</td>
                       </tr>
                       <tr>
                           <td align="left" colspan="4" style="height: 45px" bgcolor="#ffffff">
                               <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                               </asp:RadioButtonList></td>
                       </tr>
                         <tr>
                           <td align="left" colspan="4" bgcolor="#ffffff">
                               &nbsp;<asp:Button  ID="btnbaoyue" runat=server Text="��Ѱ治��ʹ���ײ���,����ʹ���빺����ʽ��,��ϵ���ʹ��˵��,лл" Enabled=false OnClick="btnbaoyue_Click" BackColor="Silver" />   
                           </td>
                       </tr>
                            </table>
                  
                   <br />
                        һ������ = <%=Common.GetScoreOfOneYuan() %> Ԫ<br>���֧���������Թ�����ֺ�����ת�ʻ���ʹ���������л�֧����֧�� 
                        
                </div>
                </div><br />
              <div class=border>
                    <div class=titlehead>�������</div>
                    <div class="msgtip">
                         <div class=black style="width:520px;text-align:left;">
                        
                       
                        1��ˢ����Ϣ (ˢ��һ����Ҫ <font color=red><b><%=Common.GetRefleshScore() %></b></font> ������)
                        <br />
                        2���𼱷�Դ (���û𼱷�Դһ����Ҫ <font color=red><b><%=Common.GetRecomScore() %></b></font> ������)
                        <br />
                        3���ö���Ϣ (�ö�һ����Ҫ <font color=red><b><%=Common.GetTopScore() %></b></font> ������)
                        <br />
                        4���������Ƽ����Ƽ�һ����Ҫ <font color=red><b><%=Common.GetRecomAgentScore() %></b></font> ������)
                    </div>
                        <br />
                    <div  class=black style="width:520px;text-align:left;">
                        
                        �����ڵĻ���Ϊ��<font color=red><b><%=Common.GetUserScores(Common.GetUserID(Common.GetCookie("UserLogin")))%></b></font>
                        
                        <br />
                        �������������ϵ��<font color=red><b><%=Tel %></b></font>  �ͷ��ѣѣ�
                              <%=QQ %>                   
                        
                    </div>
                    </div>
              </div>
<br>
<div class=border>
                    <div class=titlehead>���֧��</div>
                    <div class="msgtip">
                         
                    <div  class=black style="width:520px;text-align:left;">
                        
                       ������ͨ�����·�ʽ֧�����Ķ�����<br />
                      
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
