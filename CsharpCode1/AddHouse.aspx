<%@ page language="C#" autoeventwireup="true" inherits="AddHouse, House_FreeV2_deploy" validaterequest="false" enableEventValidation="false" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<%@ Register Assembly="MagicAjax" Namespace="MagicAjax.UI.Controls" TagPrefix="ajax" %>

<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>���¥����Ϣ</title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
    <script src="js/ajax.js" type="text/javascript"></script>
    <script src="js/search.js" type="text/javascript"></script>

    <link href="css/menu.css" rel="stylesheet" type="text/css" />
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
            <a href='<%=FormatUrl.LouPanHomeUrl() %>'>¥��</a>&nbsp;>&nbsp;
            <%=AddUrl %>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top">
            
            </td>
            <td  valign="top">
                <div class="border">
                    <div class="titlehead" >
                        <%=addTitle %>
                    </div>
                    <div>
             <table cellpadding=0 cellspacing=0 border=0 width=100% align=center>
             <tr>
                <td class="msgtip"><%=Tip %></td>
             </tr>
            <tr>
                <td class=rightitem valign="top">
                   <table width=100% style="border:1px solid #ccc;background:#f3f3f3;">
                        <tr>
                            <td colspan="2" nowrap="noWrap" bgcolor="#ffffff" style="text-align:left;font-size:15px;color:#e77529;font-weight:bold;height:50px;">
                                ��д������Ϣ<span style="color:Gray;font-weight:normal;"> ��<font color="red"><b>*</b></font> Ϊ�����</span>
                            </td>
                            
                        </tr>
                         <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;<%=lpname %>��</td>
                             <td bgcolor="#ffffff"  align="left">
                                 &nbsp;<asp:TextBox ID="tbname" runat="server" Width="185px"></asp:TextBox>
                                 <span style="color: #808080">����<%=suchas %><asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                       runat="server" ControlToValidate="tbname" CssClass="validatecss" Display="Dynamic"
                                       ErrorMessage="������¥������"></asp:RequiredFieldValidator></span>
                             <div id="tip" class="red"></div>
                             </td>
                         </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <%=lpprice %></td>
                           <td align="left" bgcolor="#ffffff">
                               &nbsp;<asp:TextBox ID="tbprice" runat="server" Width="119px"></asp:TextBox>
                               <%=punit %>&nbsp;<font color=red>����Ϊ����</font></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <strong><span style="color: #ff0000">*</span></strong> <%=lpleixing %>��</td>
                           <td align="left" bgcolor="#ffffff">
                               &nbsp;<asp:DropDownList ID="ddlleixing" runat="server">
                                   <asp:ListItem>С��</asp:ListItem>
<asp:ListItem>��Ʒ��</asp:ListItem>
                                   <asp:ListItem>����</asp:ListItem>
                                   <asp:ListItem>д��¥</asp:ListItem>
                                   <asp:ListItem>����</asp:ListItem>
                               </asp:DropDownList><%=lx %></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <strong><span style="color: #ff0000">*</span></strong> ѡ������</td>
                           <td align="left" bgcolor="#ffffff">
                            <ajax:AjaxPanel ID="AjaxPanel1" runat="server">
                               &nbsp;<asp:DropDownList ID="ddlregion" runat="server" AutoPostBack=true OnSelectedIndexChanged="ddlregion_SelectedIndexChanged">
                               </asp:DropDownList>
                               <asp:DropDownList ID="ddlarea" runat="server">
                               </asp:DropDownList>
                               </ajax:AjaxPanel>
                               <span style="color: #808080">��ѡ����������</span></td>
                       </tr>
                       <tr>
                           <td class=alignright nowrap="noWrap" bgcolor="#ffffff" >
                               <font color="red"><b>*</b></font> �����ַ��</td>
                           <td  bgcolor="#ffffff" align="left">
                               &nbsp;<asp:TextBox ID="tbaddress" runat="server" Width="273px"></asp:TextBox>
                               <span style="color: #808080">����<%=addsuchas %></span><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                   runat="server" ControlToValidate="tbaddress" CssClass="validatecss" Display="Dynamic"
                                   ErrorMessage="�������ַ"></asp:RequiredFieldValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               <%=kfs %></td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbkfs" runat="server" Width="185px"></asp:TextBox>
                               <%=addo %>
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <strong><span style="color: #ff0000">*</span></strong> <%=lpintro %>��</td>
                           <td align="left" bgcolor="#ffffff" valign="top">
                               &nbsp;<FTB:FreeTextBox ID="FreeTextBox1" runat="server" BackColor="224, 224, 224"
                                   ButtonSet="Office2000" GutterBackColor="224, 224, 224" ImageGalleryPath="~/uploads"
                                   Language="zh-CN" UseToolbarBackGroundImage="False">
                               </FTB:FreeTextBox>
                           </td>
                       </tr>
                   </table>
                    <table width=100% style="border:1px solid #ccc;background:#f3f3f3;">
                       <tr>
                            <td colspan="2" nowrap="noWrap" bgcolor="#ffffff" style="text-align:left;font-size:15px;color:#e77529;font-weight:bold;height:50px;">
                                &nbsp;ѡ����<span style="color:Gray;font-weight:normal;"> (���Ҳ������)</span>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class=alignright nowrap="noWrap" bgcolor="#ffffff" valign="top">
                                ��Ƶ��ַ��</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                            <asp:TextBox ID="tbvideourl" runat="server" Width="278px"></asp:TextBox>������¥����Ƶ��URL��ַ��</td>
                               
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                ��ͼ��ַ��</td>
                            <td bgcolor="#ffffff"  align="left" colspan="2">
                                <asp:TextBox ID="tbmapurl" runat="server" Width="278px"></asp:TextBox>������¥�̵�ͼ��URL��ַ��</td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                �ֳ����ȣ�</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                                <asp:TextBox ID="tbjindu" runat="server" Width="97px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                ����ʱ�䣺</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                                <asp:TextBox ID="tbkaipandate" runat="server" Width="98px"></asp:TextBox>
                                ����ʱ�䣺<asp:TextBox ID="tbjiaofangdate" runat="server" Width="98px"></asp:TextBox>
                                ����ʽ��2009-1-1��</td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                �ܽ��������</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                                <asp:TextBox ID="tballsize" runat="server" Width="98px">�O</asp:TextBox>
                                �� �� ����<asp:TextBox ID="tballcounts" runat="server" Width="98px">��</asp:TextBox></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                ��������</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                                <asp:TextBox ID="tbkeshou" runat="server" Width="98px">��</asp:TextBox></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                �ݻ��ʣ�</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                                <asp:TextBox ID="tbrongji" runat="server" Width="98px"> </asp:TextBox>
                                �� �� �ʣ�<asp:TextBox ID="tbluhua" runat="server" Width="98px">%</asp:TextBox>
                                �� &nbsp; &nbsp;&nbsp;
                                λ��<asp:TextBox ID="tbchewei" runat="server" Width="98px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                ��ҵ��˾��</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                                <asp:TextBox ID="tbwuye" runat="server" Width="264px"></asp:TextBox>
                                �� �� �ѣ�<asp:TextBox
                                    ID="tbguanglifei" runat="server" Width="98px">Ԫ/��/�O</asp:TextBox></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                ��¥����</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                                <asp:TextBox ID="tbshoulouaddress" runat="server" Width="261px"></asp:TextBox>&nbsp;
                                ��¥�绰��<asp:TextBox ID="tbshouloutel" runat="server" Width="98px"></asp:TextBox></td>
                        </tr>
                        
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                �ܱ�ѧУ��</td>
                            <td bgcolor="#ffffff"  align="left">
                                &nbsp;<asp:TextBox ID="tbschool" runat="server" Width="431px"></asp:TextBox>&nbsp;<br />
                                <span style="color: #808080">�����븽����ѧУ���׶�԰��Сѧ����ѧ����ѧ��</span></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                                <span style="color: #666666">�ܱߵ�����</span></td>
                            <td align="left" bgcolor="#ffffff" style=" color: #ff0000">
                                &nbsp;<asp:TextBox ID="tbditei" runat="server" Width="427px"></asp:TextBox>&nbsp;<br />
                                &nbsp;<span style="color: #808080">�����븽���ĵ���</span></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                                �ܱ߹�����</td>
                            <td align="left" bgcolor="#ffffff">
                                &nbsp;<asp:TextBox ID="tbbus" runat="server" Width="427px"></asp:TextBox>&nbsp;<br />
                                &nbsp;<span style="color: #808080">�����븽���Ĺ���·��</span></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                                �����̳���</td>
                            <td align="left" bgcolor="#ffffff">
                                &nbsp;<asp:TextBox ID="tbshopping" runat="server" Width="427px"></asp:TextBox>&nbsp;<br />
                                &nbsp;<span style="color: #808080">�����븽���Ĺ����̳��������ټѡ����</span></td>
                        </tr>
                        <tr style="color: #666666">
                            <td class=alignright nowrap="noWrap" bgcolor="#ffffff" >
                                �ܱ�ҽԺ��</td>
                            <td  bgcolor="#ffffff" align="left">
                                <span style="color: #808080">
                                    <asp:TextBox ID="tbhospital" runat="server" Width="427px"></asp:TextBox>&nbsp;<br />
                                    &nbsp;<span style="color: #808080">�����븽����ҽԺ</span></span></td>
                        </tr>
                        <tr style="color: #666666">
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                            </td>
                            <td align="left" bgcolor="#ffffff">
                                <asp:Button ID="btnaddhouse" runat="server" Height="33px" OnClick="btnaddhouse_Click"
                                    Text="�ύ��ת����һ���ϴ�ͼƬ" Width="186px" /></td>
                        </tr>
                       
                   </table>
                    
                </td>
            </tr>
        </table><br />

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
