<%@ page language="C#" autoeventwireup="true" inherits="MyCenter_BeVIP, House_FreeV2_deploy" enableEventValidation="false" %>
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
                        ����Ϊ���ƻ�Ա<br /><br />
                    </div>
                    <div class="lineheight2" style="text-align:left;">
                    ���ƻ�Ա�����ƣ�<br />
                    1.�����������¸��·���������Ϣ��Ϊ���ڳ������ʱ��Ѱ�ҿͻ�<br />
                    2.  �����ö���Դ��Ϣ,ʱ�̶��ܱ����˹�ע��
                    3.  ��������Ϊʮ��𼱷�Դ,���������ٳ������
                    4.  �����˿ɽ��Լ��������Ƽ�����ҳ
                    
                    <br /><br />
                        <font color=red>���뱾վ��ϵ����Ϊ���ƻ�Ա����ϵ�绰��<b><%=SiteTel %></b></font>
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
