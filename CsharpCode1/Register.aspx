<%@ page language="C#" autoeventwireup="true" inherits="Register, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>��Աע��</title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    
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
     
     <br />
     <br /><br /><br />
     <table cellpadding="0" cellspacing="0" border="0" width="680">
        <tr>
            <td style="border-right:1px solid #ccc;padding-right:10px;" width="340">
                <table align="center" border="0" cellpadding="0" cellspacing="0" >
                    <tr>
                        <td align="left" style="font-weight: bold; font-size: 16px; color: #000; height: 50px">
                            &nbsp;ע����˻�Ա</td>
                    </tr>
                    <tr>
                        <td align="left" class="lineheight">
                            ��
                            &nbsp;��ѷ�����/���ⷿ����/������Ϣ</td>
                    </tr>
                    <tr>
                        <td height="10">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="lineheight">
                            ��&nbsp; ����ί�о������ҷ�����ȥ���ر��ܵ�����</td>
                    </tr>
                   <tr>
                        <td height="10">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="lineheight" valign="top">
                            <table cellpadding="0" cellspacing="0" border="0"  align="center">
                                <tr>
                                    <td valign="top">��&nbsp;</td>
                                    <td>
                                        &nbsp;�������ʣ�ÿ���������ѡ�ר����ʦ��רҵ������Ϊ������ⷿ���򷿹���������������
                                    </td>
                                </tr>
                                
                            </table>
                       </td>
                    </tr>
                    <tr>
                          <td height=10></td>
                     </tr>
                      <tr>
                          <td align="left"><a href='<%=FormatUrl.RegisterPersonUrl() %>'><img src="images/b_reg.gif" align="absmiddle" /></a></td>
                     </tr>
                </table>
                &nbsp;</td>
            <td style="padding-left:15px;" width="340">
                 <table cellpadding="0" cellspacing="0" border="0"  align="center">
                    <tr>
                        <td style="font-size:16px; font-weight: bold; color: #000; height: 50px;" align="left">
                            &nbsp;ע�ᾭ���ˣ��н��Ա��</td>
                    </tr>
                     <tr>
                        <td class="lineheight" align="left">
                        ��&nbsp;&nbsp;��ѷ������⡢������Ϣ</td>
                    </tr>
                    <tr>
                        <td height=10></td>
                    </tr>
                     <tr>
                        <td class="lineheight" align="left">
                            ��&nbsp; �����ҵ�Ǳ�ڿͻ�</td>
                    </tr>
                     <tr>
                          <td height=10></td>
                     </tr>
                    <tr>
                        <td class="lineheight" align="left">
                            ��&nbsp; �����ĸ���������̣��޴��������Դ���������</td>
                    </tr>
                     <tr>
                          <td height=10></td>
                     </tr>
                      <tr>
                         <td align="left" class="lineheight">
                          ��&nbsp; ���ҵ������ί��
                         </td>
                     </tr>
                      <tr>
                          <td height=10></td>
                     </tr>
                      <tr>
                          <td align="left"><a href='<%=FormatUrl.RegisterAgentUrl() %>'><img src="images/b_reg.gif" align="absmiddle" /></a></td>
                     </tr>
                 </table>
            </td>
        </tr>
     </table><br /><br /><br /><br />
   
     <div>
             <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
