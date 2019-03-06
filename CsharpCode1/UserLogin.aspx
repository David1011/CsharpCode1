<%@ page language="C#" autoeventwireup="true" inherits="UserLogin, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>��Ա��¼,<%=Common.GetSiteName() %></title>
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
     
     <br />
     <br /><br /><br />
     <table cellpadding="0" cellspacing="0" border="0" width="680" align="center">
        <tr>
            <td style="border-right:1px solid #ccc;padding-right:15px;">
                <table cellpadding="0" cellspacing="0" border="0" width="300" align="left">
                    <tr>
                        <td colspan="3" align="left" style="height: 30px">
                            </td>
                    </tr>
                    <tr>
                        <td align="right"   style="font-size:14px;">�û�����</td>
                        <td align="left" style="height: 50px"><asp:TextBox ID="tbacc" runat="server" Height="19px"  Width="144px"></asp:TextBox></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td align="right"  style="font-size:14px;">
                            ��&nbsp;&nbsp;&nbsp;�룺</td>
                        <td align="left" class="lineheight" style="height: 50px" width="145"><asp:TextBox ID="tbpwd" TextMode="Password" runat="server" Width="145px" ></asp:TextBox></td>
                        <td class="lineheight" align="left"></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td class="lineheight" style="height: 30px" align="left">
                        <asp:ImageButton ID="btnlogin" runat="server" ImageUrl="images/login.jpg" ImageAlign="AbsMiddle" OnClick="btnlogin_Click" />
                        &nbsp;<a href='<%=FormatUrl.GetPwdUrl() %>'>�������룿</a>
                        </td>
                        <td align="left"></td>
                    </tr>
                </table>
            </td>
            <td style="padding-left:15px;">
                 <table cellpadding="0" cellspacing="0" border="0" width="380" align="left">
                    <tr>
                        <td style="font-size:16px; font-weight: bold; color: red; height: 50px;" align="left">ΪʲôҪע���Ա��
                        &nbsp;<a href='<%=FormatUrl.RegisterUrl() %>'><img src="images/b_reg.gif" align="absmiddle" /></a>
                        </td>
                    </tr>
                     <tr>
                        <td class="lineheight" align="left">
                        ��&nbsp;&nbsp;��Ϊ��վ<a href='<%=FormatUrl.RegisterPersonUrl() %>'><font color=red>���˻�Ա</font></a>����������ѷ��������������Ϣ���������ĳ��ⷿ����ص��Գɽ��������ҵ����뵽���ⷿ. 
                        </td>
                    </tr>
                    <tr>
                        <td height=10></td>
                    </tr>
                     <tr>
                        <td class="lineheight" align="left">
                            ��&nbsp;&nbsp;��Ϊ��վ<a href='<%=FormatUrl.RegisterAgentUrl() %>'><font color=red>�н��Ա</font></a>����������ѷ���������Ϣ������ӵ�и���Ŀͻ�Դ�� 
                        </td>
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
