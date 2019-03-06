<%@ page language="C#" autoeventwireup="true" inherits="UserCenter, House_FreeV2_deploy" enableEventValidation="false" %>

<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>�ҵĹ�������,<%=Common.GetSiteName() %></title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="copyright" content="Copyright 2007. 0752house.com All Rights Reserved.">
    <meta name="author" content="0752house.com">
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
      <div class="currnav">
            <div class="currnavtop">
                <img src="images/navh.JPG" align="absmiddle" />&nbsp;
            ����λ�ã�
            <a href='<%=FormatUrl.HomeUrl() %>'>��վ��ҳ</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.MyUCenter() %>'>�ҵĹ�������</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250"><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
            <td  valign="top">
                <div class="border">
                    <div class="titlehead">
                        ��վ����
                    </div>
                     <table>
                        <tr>
                        <td align="left" class="lineheight" >
                            <%=Affiche %>
                        </td>
                        
                    </table>
                </div>
                 <div class="paddingtb"></div>
                 <div class="border">
                    <div class="titlehead">
                        ���ƻ�Ա��ֵ����
                    </div>
                     <table width="80%" align="center">
                        <tr>
                        <td  class="lineheight" align="center">
                            <a href="users_order.aspx"><img src="images/VIP_btn.gif" align="absmiddle" /></a>&nbsp;
                            <a href="UserCenter_Help.aspx#vip"><font color=red>��Ϊ���ƻ�Ա�ĺô�</font></a>&nbsp;
                            <a href="UserCenter_Help.aspx#pay"><font color=red>�շѱ�׼������˵��</font></a>
                        </td>
                        
                    </table>
                </div>
                 <div class="paddingtb"></div>
                <div class="border">
                    <div class="titlehead">
                        ��Ϣͳ��&nbsp;&nbsp; 
                    </div>
                    <table width="80%" align="center">
                        <tr>
                        <td style="text-align:left;" class="lineheight" > <br />
                            <img src="images/tj.gif" align="absmiddle" />&nbsp;
                            <font color="#074598"><b>��Դͳ��</b></font> <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            �ܹ�������<%=TotalES %>��<%=TotalZF %>
                            
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <%=TotalQG %><%=TotalQZ %><br />
                        </td>
                        </tr>
                         <tr>
                            <td style="text-align:left;" class="lineheight">
                            ���յ� <b><%=SellComCounts %></b> �����ַ����ۣ�<b><%=RentComCounts %></b>�����������ۡ�
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:left;" class="lineheight" >
                            <font color="#074598"><b><%=XXCJ %></b></font>
                            
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <%=TotalMsg %><%=NoReadMsg %>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:left;" class="lineheight" >
                            <font color="#074598"><b><%=WTCJ %></b></font>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <%=TotalWT %><%=NoReadWT%>
                            </td>
                        </tr>
                       
                    </table>
                </div>
                 
                  <div class="paddingtb"></div>
                <div class="border" style="text-align:center;line-height:400%;">
                    <a href='<%=FormatUrl.GetFeedBackUrl() %>' target="_blank"><u>������Ա�վ���κ���� / ����,���߹����ϵ�ʹ��/�շѱ�׼���飬�����˴����������ԣ���л����֧�֣�</u></a>
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
