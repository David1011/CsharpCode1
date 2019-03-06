<%@ page language="C#" autoeventwireup="true" inherits="AddQiuZu, House_FreeV2_deploy" validaterequest="false" enableEventValidation="false" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
        <title>����������Ϣ,�ҵĹ�������,����֮��</title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="copyright" content="Copyright 2007. 0752house.com All Rights Reserved.">
    <meta name="author" content="0752house.com">
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
            <a href='<%=FormatUrl.MyUCenter() %>'>�ҵĹ�������</a>&nbsp;>&nbsp;&nbsp;<a href='<%=FormatUrl.AddQiuZuUrl() %>'>����������Ϣ</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top"><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
            <td  valign="top">
                <div class="border">
                    <div class="titlehead" >
                        ����������Ϣ
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
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="height: 43px" >
                                <font color="red"><b>*</b></font>&nbsp;������⣺</td>
                           <td bgcolor="#ffffff"  align="left" style="height: 43px">
                               &nbsp;<asp:TextBox ID="tbtitle" runat="server" Width="246px"></asp:TextBox>
                               <span style="color: #808080">&nbsp;���50�����֣������󹺺���������60������<br />
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbtitle"
                                       CssClass="validatecss" Display="Dynamic" ErrorMessage="�������������"></asp:RequiredFieldValidator></span></td>
                       </tr>
                         <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;ѡ���ͣ�</td>
                           <td bgcolor="#ffffff"  align="left">
                              <asp:RadioButtonList ID="rbhuxing" runat="server" RepeatDirection="Horizontal" Width="100%">
                                    <asp:ListItem >����</asp:ListItem>
                                    <asp:ListItem>һ��</asp:ListItem>
                                  <asp:ListItem>һ���򵥼�</asp:ListItem>
                                    <asp:ListItem>����</asp:ListItem>
                                    <asp:ListItem>����</asp:ListItem>
                                    <asp:ListItem>�ķ�</asp:ListItem>
                                    <asp:ListItem>�巿</asp:ListItem>
                                    <asp:ListItem>��ʽ</asp:ListItem>
                                    <asp:ListItem>������</asp:ListItem>
                              </asp:RadioButtonList>&nbsp; ע��<span style="color: #808080">һ��ָһ��һ��</span><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="rbhuxing"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="��ѡ����"></asp:RequiredFieldValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <strong><span style="color: #ff0000">*</span></strong> ������</td>
                           <td align="left" bgcolor="#ffffff">
                               &nbsp;<asp:TextBox ID="tbregions" runat="server" Width="185px"></asp:TextBox>&nbsp;<span
                                   style="color: #808080"> ���������� ���������������<asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                       runat="server" ControlToValidate="tbregions" CssClass="validatecss" Display="Dynamic"
                                       ErrorMessage="������������"></asp:RequiredFieldValidator></span></td>
                       </tr>
                        <tr>
                            <td class=alignright nowrap="noWrap" bgcolor="#ffffff" >
                                <font color="red"><b>*</b></font>&nbsp;��ҵ���ͣ�</td>
                            <td  bgcolor="#ffffff" align="left">
                                <asp:RadioButtonList ID="rbleixing" runat="server" RepeatDirection="Horizontal" >
                                    <asp:ListItem>��ͨסլ</asp:ListItem>
                                    <asp:ListItem>��Ԣ</asp:ListItem>
                                    <asp:ListItem>����</asp:ListItem>
                                    <asp:ListItem>д��¥</asp:ListItem>
                                    <asp:ListItem>����</asp:ListItem>
                                    <asp:ListItem>����</asp:ListItem>
                                    <asp:ListItem>�ֿ�</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rbleixing"
                                    Display="Dynamic" ErrorMessage="��ѡ����ҵ����" CssClass="validatecss"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;��Լ���</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;������
                               <asp:TextBox ID="tbprice" runat="server" Width="69px"></asp:TextBox>
                               Ԫ
                               <asp:DropDownList ID="ddlrentunit" runat="server">
                                   <asp:ListItem>/��</asp:ListItem>
                                   <asp:ListItem>/��</asp:ListItem>
                                   <asp:ListItem>/��</asp:ListItem>
                                   <asp:ListItem>/ƽ����</asp:ListItem>
                               </asp:DropDownList>
                               <font color=gray>����Ϊ����</font><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbprice"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="��������𣬱���Ϊ����"></asp:RequiredFieldValidator></td>
                       </tr>
                       
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;����¥�㣺</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;���
                               <asp:TextBox ID="tbfloor" runat="server" Width="55px"></asp:TextBox>
                               ¥��
                               ���<asp:TextBox ID="tbtopfloors" runat="server" Width="55px"></asp:TextBox>
                               ¥ <font color=gray>����Ϊ����</font>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbfloor"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="������¥�㣬����Ϊ����"></asp:RequiredFieldValidator></td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;��Ϣ��Ч�ڣ�</td>
                           <td bgcolor="#ffffff"  align="left">
                               <asp:RadioButtonList ID="rbavai" runat="server" RepeatDirection="Horizontal" >
                                    <asp:ListItem Value="7">һ����</asp:ListItem>
                                    <asp:ListItem Value="15">�����</asp:ListItem>
                                    <asp:ListItem Value="30" Selected="True">һ����</asp:ListItem>
                                    <asp:ListItem Value="60">������</asp:ListItem>
                                    <asp:ListItem Value="90">������</asp:ListItem>
                                    <asp:ListItem Value="180">����</asp:ListItem>
                                    <asp:ListItem Value="360">һ��</asp:ListItem>
                                    <asp:ListItem Value="36000">����</asp:ListItem>
                                </asp:RadioButtonList>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="rbavai"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="��ѡ����Ч��"></asp:RequiredFieldValidator></td>
                       </tr>
                        
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                           <font color="red"><b>*</b></font>&nbsp;����������
                           </td>
                           <td align="left" bgcolor="#ffffff">
                           <span style="color:Gray;"></span> <span style="color: #808080">&nbsp;�õ������ܸ����˶�������Ŀ��Ҫ��ķ�Դ</span><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FreeTextBox1"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="��������������"></asp:RequiredFieldValidator>&nbsp;</td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                           </td>
                           <td align="left" bgcolor="#ffffff" valign="top">
                               &nbsp;<FTB:FreeTextBox ID="FreeTextBox1" runat="server" BackColor="224, 224, 224"
                                   ButtonSet="Office2000" GutterBackColor="224, 224, 224" ImageGalleryPath="~/uploads"
                                   Language="zh-CN" UseToolbarBackGroundImage="False">
                               </FTB:FreeTextBox>
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               </td>
                           <td bgcolor="#ffffff"  align="left">
                            <asp:Button ID="btnOK" runat="server" Text="�ύ" CausesValidation="true" OnClientClick="checkpwd()"  OnClick="btnOK_Click" Width="121px" />&nbsp;
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                           </td>
                           <td align="left" bgcolor="#ffffff">
                               <asp:Label ID="lblisaudited" runat="server" Visible="False"></asp:Label>
                               <asp:Label ID="lblisrecom" runat="server" Visible="False"></asp:Label>
                               <asp:Label ID="lblclicked" runat="server" Visible="False"></asp:Label>
                               <asp:Label ID="lbluserip" runat="server" Visible="False"></asp:Label>
                               <asp:Label ID="lblisrecomendate" runat="server" Visible="False"></asp:Label></td>
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
