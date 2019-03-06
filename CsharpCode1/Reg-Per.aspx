<%@ page language="C#" autoeventwireup="true" inherits="Reg_Per, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
        <title>ע����˻�Ա,<%=Common.GetSiteName() %></title>
        <meta http-equiv="Content-Language" content="zh-CN" />
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
        
        <link rel="icon" href="favicon.ico" type="image/x-icon" />
        <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/search.js" type="text/javascript"></script>
        <script src="js/ajax.js" type="text/javascript"></script>
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
            <table cellpadding="0" border="0" cellspacing="5" width="800" align="center">
                <tr>
                    <td width="575" valign="top">
                     <table cellpadding=0 cellspacing=0 border=0 width=100% align=center>
             <tr>
                <td style="font-size:15px;font-weight:bold;border-bottom:4px solid #adc869;padding-bottom:8px;" align="left">
                    <img src="images/images_07.jpg" align="absmiddle" />&nbsp;�����û�����ע�� ( <font color=red>*</font> Ϊ������)</td>
             </tr>
            <tr>
                <td class=rightitem valign="top">
                   <table width=100% style="border:1px solid #ccc;background:#f3f3f3;padding-top:8px;">
                       <tr>
                           <td style="text-align:left;background:#adc869;padding:5px;height:15px;color:#fff;"  colspan="2" nowrap="nowrap">
                               ����Ϊ������</td>
                       </tr>
                        <tr>
                            <td class=alignright nowrap="noWrap" bgcolor="#ffffff" style="width: 96px">
                                &nbsp; <font color=red>*</font> �� �� ����</td>
                            <td class=classic bgcolor="#ffffff" align="left">
                                &nbsp;<asp:TextBox ID="tbacc" runat="server" CssClass="btninput" Width="145px"></asp:TextBox>
                                ���Ȳ�����15���ַ�
                                <div id="tip" class="red"></div>	    
                            </td>
                        </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px;">
                                <font color=red>*</font> �� &nbsp; &nbsp; &nbsp; �룺</td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                               &nbsp;<asp:TextBox ID="tbpwd1" runat="server" TextMode="Password" CssClass="btninput" Width="145px"></asp:TextBox>
                               ���Ȳ�����15���ַ�</td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px">
                                <font color=red>*</font> ȷ�����룺</td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                               &nbsp;<asp:TextBox ID="tbpwd2" runat="server" TextMode="Password" CssClass="btninput" Width="145px"></asp:TextBox>
                               ���ٴ���������
                               <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbpwd1"
                                   ControlToValidate="tbpwd2" CssClass="validatecss" Display="Dynamic" ErrorMessage="�����������벻ͬ"></asp:CompareValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px">
                                 <font color=red>*</font> ��ʵ������</td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                               &nbsp;<asp:TextBox ID="tbrealname" runat="server" CssClass="btninput" Width="145px"></asp:TextBox>
                               ������������ʵ���������ĳƺ�</td>
                       </tr>
                       <tr>
                        <td colspan="2" align="left">
                            <span style="color: #ff0000">&nbsp;*</span>
                            �绰���ֻ�������ѡ��һ��������д</td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px">
                               �� &nbsp; &nbsp; &nbsp; &nbsp; ����</td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                               &nbsp;<asp:TextBox ID="tbtel" runat="server" CssClass="btninput" Width="145px"></asp:TextBox></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px">
                               �� &nbsp; &nbsp; &nbsp; &nbsp; ����</td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                               &nbsp;<asp:TextBox ID="tbmobile" runat="server" CssClass="btninput" Width="145px"></asp:TextBox></td>
                       </tr>
                   </table><br />
                    <table width=100% style="border:1px solid #ccc;background:#f3f3f3;">
                        <tr>
                            <td  style="text-align:left;background:#adc869;padding:5px;height:15px;color:#fff;"   colspan="2" nowrap="nowrap">
                                ����Ϊѡ����</td>
                        </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px">
                               ���䣺</td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                               &nbsp;<asp:TextBox ID="tbmail" runat="server" CssClass="btninput" Width="145px"></asp:TextBox>
                               �����������䣬�Ա���ȡ������
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbmail"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="�����ʽ����" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px">
                               QQ��</td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                               &nbsp;<asp:TextBox ID="tbqq" runat="server" CssClass="btninput" Width="145px"></asp:TextBox>
                               ����QQ���������������ʱ����ͻ�����</td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px">
                               MSN��</td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                               &nbsp;<asp:TextBox ID="tbmsn" runat="server" CssClass="btninput" Width="145px"></asp:TextBox></td>
                       </tr>

                       
                   </table>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    
                    <asp:Button ID="btnok" runat="server" Height="25px" Text="�ύע��" OnClientClick="return checkreginput()" Width="211px" OnClick="btnok_Click" />
                                ����ύ��Ť����ʾ�����Ķ�������<a href="agreement.aspx" target=_blank>�û�����Э��</a>
                </td>
            </tr>
        </table>
                    </td>
                    <td width="225" align="right" valign="top" style="background:url(images/mm.jpg) no-repeat;padding-top:20px;padding-left:85px;text-align:left;line-height:200%;">
                        ��ע������������⣿<br />
                        <img src="images/im.gif" align="absmiddle" />&nbsp;
                        <a class="red" target=blank href=tencent://message/?uin=<%=QQ %>&Site=<%=SiteName %>&Menu=yes><%=QQ %></a>
                        <br />
                        <img src="images/email.gif" align="absmiddle" />&nbsp;
                        <a class="red" target=blank href='<%=FormatUrl.GetFeedBackUrl() %>'>����վ����</a>

                    </td>
                </tr>
            </table>
        
        <br />
   
     <div>
             <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
