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
                <div class="titlehead">ϵͳ��ʾ���������ɶ���</div>
                    <div class="msgtip">
                         <div class=black style="width:600px;text-align:left;">
                            <br />
                            <%=OrderNo %> �뼰ʱ�����ϸ������£�
                            <br />
                            <table width="600px;" bgcolor="#799ae1" cellpadding="0" cellspacing="1">
                                <tr>
                                    <td bgcolor="#f4f4f4" style="height: 28px" align="center">
                                        ������</td>
                                    <td bgcolor="#f4f4f4" style="height: 28px" align="center">
                                        �ܼ�(��λ��Ԫ)</td>
                                    <td bgcolor="#f4f4f4" style="height: 28px" align="center">
                                        ��������</td>
                                    <td bgcolor="#f4f4f4" style="height: 28px" align="center">
                                        �µ�����</td>
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
                             <asp:Button ID="Button1" Visible=false runat="server" OnClick="Button1_Click" Text="����ʹ��֧��������������֧��" /><br />
                          <br />
<div class=red>���ѣ������û��֧������Ҳ���Ե���ð�ť����֧���������ѡ��"<b>ʹ���������и���</b>"���ɣ������������⣬����������ϵ���ǳ���л��</div>
</div>
                    </div>
                </div><br />
                <div class=border>
                    <div class=titlehead>���֧��</div>
                    <div class="msgtip">
                         
                    <div  class=black style="width:520px;text-align:left;">
                        
                       ������ͨ�����·�ʽ֧�����Ķ�����<br />
                       
                        ------���ڴ���д���Ļ���ʺ�------                                 
                        
                    </div>
                    </div>
              </div>
              <br />
              
              <div class=border>
                    <div class=titlehead>�������</div>
                    <div class="msgtip">
                         
                    <div  class=black style="width:520px;text-align:left;">
                        
                        �����ڵĻ���Ϊ��<font color=red><b><%=Common.GetUserScores(Common.GetUserID(Common.GetCookie("UserLogin")))%></b></font>
                        
                        <br />
                        �������������ϵ��<font color=red><b><%=Tel %></b></font>  �ͷ��ѣѣ�
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
