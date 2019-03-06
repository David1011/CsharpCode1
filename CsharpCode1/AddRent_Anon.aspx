<%@ page language="C#" autoeventwireup="true" inherits="AddRent_Anon, House_FreeV2_deploy" enableEventValidation="false" %>

<%@ Register Assembly="MagicAjax" Namespace="MagicAjax.UI.Controls" TagPrefix="ajax" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>��ע�ᷢ��������Ϣ,<%=Common.GetSiteName() %></title>
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
            <a href='<%=FormatUrl.AddRentUrl() %>'>����������Ϣ</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top" class="titlehead">
                ����<br />
                <br />
                <span style="color: #ff0000">*</span> <span style="font-weight:normal">����ǰ�ķ�����ʽΪ��ע��ֱ�ӷ�����Ϣ,�����������޸�����ϵ����Ա��</span>
                <br />
                <br />
                <span style="color: #ff0000"></span><span style="color: #ff0000">*</span> <span style="font-weight:normal">ע���¼�󷢲���Ϣ�ɽ����޸ģ�</span><br />
                <br />
                <a href='<%=FormatUrl.LoginUrl() %>'>����˴���¼</a> / &nbsp;<a href='<%=FormatUrl.RegisterUrl() %>'>��δע�᣿</a>
                 <br /><br />
                <a href="AddSell_Anon.aspx">��ע�ᷢ��������Ϣ</a>
            </td>
            <td  valign="top">
                <div class="border">
                    <div class="titlehead" >
                        
                        <div class="floatleft">��ע��ֱ�ӷ���������Ϣ</div>
                        <div class="floatright"><a href="SiteHelp.aspx#two" target="_blank">��η�����Ϣ����Ч����</a></div>
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
                                ��д������Ϣ<span style="color:Gray;font-weight:normal;"> ��<font color="red"><b>*</b></font> Ϊ�����</span>&nbsp;<a href="feedback.htm" target="_blank" style="color:blue;"><u>���������У������κ����⣬�������ﱨ������ǣ�лл</u></a>
                            </td>
                            
                        </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;��Դ���⣺</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbtitle" runat="server" Width="410px"></asp:TextBox>&nbsp;<a href="SiteHelp.aspx#five" target="_blank"><u>�����д����������ˣ�</u></a>
                               <br /><span style="color: #808080">&nbsp;���50������
                                   &nbsp;�磺���⺣�������ֻ�԰����һ��1600<br />
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbtitle"
                                       CssClass="validatecss" Display="Dynamic" ErrorMessage="�����뷿Դ����"></asp:RequiredFieldValidator></span></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;��ϸ��ַ��</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbaddress" runat="server" Width="408px"></asp:TextBox>
                               <br />
                               &nbsp;<span style="color:Gray;">��д��·�Σ������������¸���·XX��</span> 
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbaddress"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="��������ϸ��ַ"></asp:RequiredFieldValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               �������ͣ�</td>
                           <td align="left" bgcolor="#ffffff">
                               <asp:RadioButtonList ID="rbrenttype" runat="server" RepeatDirection="Horizontal">
                                   <asp:ListItem Selected="True">����</asp:ListItem>
                                   <asp:ListItem>����</asp:ListItem>
                                   <asp:ListItem>����</asp:ListItem>
                                   <asp:ListItem>����</asp:ListItem>
                               </asp:RadioButtonList></td>
                       </tr>
                        <tr>
                            <td class=alignright nowrap="noWrap" bgcolor="#ffffff" >
                                <font color="red"><b>*</b></font>&nbsp;��ҵ���ͣ�</td>
                            <td  bgcolor="#ffffff" align="left">
                                <asp:RadioButtonList ID="rbleixing" runat="server" RepeatDirection="Horizontal" Width="100%">
                                    <asp:ListItem>С��סլ</asp:ListItem>
                                    <asp:ListItem>��/����¥</asp:ListItem>
                                    <asp:ListItem>��Ԣ</asp:ListItem>
                                    <asp:ListItem>��Ʒ¥</asp:ListItem>
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
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <strong><span style="color: #ff0000">*</span></strong> ��ҵ���ƣ�</td>
                           <td align="left" bgcolor="#ffffff">
                               <asp:TextBox ID="tbquartername" runat="server" Width="148px"></asp:TextBox>&nbsp;
                               <span style="color: #808080">�����̹�԰��û�����Ƶ���·�Σ����¸���·���������ӷ�Դ�ع���</span>
                               <br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="tbquartername"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="������С������"></asp:RequiredFieldValidator></td>
                       </tr>

                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;ѡ������</td>
                           <td bgcolor="#ffffff"  align="left">
                            <ajax:AjaxPanel ID="AjaxPanel1" runat="server">
                               &nbsp;<asp:DropDownList id="ddlRegion"  runat="server"  Height="21px" Width="76px" AutoPostBack="True" OnSelectedIndexChanged="ddlRegion_SelectedIndexChanged" ></asp:DropDownList>
								<asp:DropDownList id="ddlArea"   runat="server" Height="21px" Width="76px"></asp:DropDownList>
								</ajax:AjaxPanel>
                            </td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;���</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbprice" runat="server" Width="69px"></asp:TextBox>
                               Ԫ 
                               <asp:DropDownList ID="ddlrentunit" runat="server">
                                   <asp:ListItem>/��</asp:ListItem>
                                   <asp:ListItem>/��</asp:ListItem>
                                   <asp:ListItem>/��</asp:ListItem>
                                   <asp:ListItem>/ƽ����</asp:ListItem>
                               </asp:DropDownList><font color=gray>����Ϊ����</font><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbprice"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="��������𣬱���Ϊ����"></asp:RequiredFieldValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               <strong><span style="color: #ff0000">* </span></strong>
                               ������ڣ�</td>
                           <td bgcolor="#ffffff"  align="left">
                               <span style="color:Gray;"></span> <asp:RadioButtonList ID="rbshortrent" runat="server" RepeatDirection="Horizontal">
                                   <asp:ListItem>һ��</asp:ListItem>
                                   <asp:ListItem>һ����</asp:ListItem>
                                   <asp:ListItem>������</asp:ListItem>
                                   <asp:ListItem>����</asp:ListItem>
                                   <asp:ListItem Selected="True">һ��</asp:ListItem>
                                   <asp:ListItem>����</asp:ListItem>
                               </asp:RadioButtonList>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="rbshortrent"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="��ѡ���������"></asp:RequiredFieldValidator></td>
                       </tr>
                         <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               <strong><span style="color: #ff0000">* </span></strong>
                                ֧����ʽ��</td>
                           <td bgcolor="#ffffff"  align="left">
                            <asp:RadioButtonList ID="rbpaytype" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>�ո�</asp:ListItem>
                                    <asp:ListItem Selected="True">�¸�</asp:ListItem>
                                    <asp:ListItem>����</asp:ListItem>
                                <asp:ListItem>�긶</asp:ListItem>
                                </asp:RadioButtonList>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="rbpaytype"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="��ѡ��֧����ʽ"></asp:RequiredFieldValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;���������</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbsize" runat="server" Width="59px"></asp:TextBox>ƽ���� <font color=gray>����Ϊ����</font>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbsize"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="�����뽨�����������Ϊ����"></asp:RequiredFieldValidator></td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;���ͣ�</td>
                           <td bgcolor="#ffffff"  align="left">
                              <asp:RadioButtonList ID="rbhuxing" runat="server" RepeatDirection="Horizontal" Width="100%">
                                    <asp:ListItem >����</asp:ListItem>
                                    <asp:ListItem>һ��</asp:ListItem>
                                    <asp:ListItem>����</asp:ListItem>
                                    <asp:ListItem>����</asp:ListItem>
                                    <asp:ListItem>�ķ�</asp:ListItem>
                                    <asp:ListItem>�巿</asp:ListItem>
                                    <asp:ListItem>��ʽ</asp:ListItem>
                                    <asp:ListItem>������</asp:ListItem>
                                    <asp:ListItem>��������</asp:ListItem>
                                </asp:RadioButtonList>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="rbhuxing"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="��ѡ����"></asp:RequiredFieldValidator></td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;����¥�㣺</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbfloor" runat="server" Width="55px"></asp:TextBox>
                               ¥��
                               ���<asp:TextBox ID="tbtopfloors" runat="server" Width="55px"></asp:TextBox>
                               ¥ <font color=gray>����Ϊ����</font>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbfloor"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="������¥�㣬����Ϊ����"></asp:RequiredFieldValidator></td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               ��סʱ�䣺</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbruzhu" runat="server" Width="174px">��ʱ</asp:TextBox>
                               &nbsp;
                               
                            </td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               �⻧�Ա�Ҫ��</td>
                           <td bgcolor="#ffffff"  align="left">
                                <asp:RadioButtonList ID="rbsex" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem >ֻ������</asp:ListItem>
                                    <asp:ListItem>ֻ��Ů��</asp:ListItem>
                                    <asp:ListItem Selected="True">��Ů����</asp:ListItem>
                                </asp:RadioButtonList>
                               
                            </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;���ݣ�</td>
                           <td bgcolor="#ffffff"  align="left">
                               <asp:RadioButtonList ID="rbhasleft" runat="server" RepeatDirection="Horizontal" >
                                    <asp:ListItem Value="true">��</asp:ListItem>
                                    <asp:ListItem Value="false" Selected="True">��</asp:ListItem>
                                </asp:RadioButtonList>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="rbhasleft"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="��ѡ���Ƿ��е���"></asp:RequiredFieldValidator>
                               
                            </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                װ�������</td>
                           <td bgcolor="#ffffff"  align="left">
                               <asp:RadioButtonList ID="rbzhuangxiu" runat="server" RepeatDirection="Horizontal" >
                                    <asp:ListItem>ë��</asp:ListItem>
                                    <asp:ListItem Selected="True">��װ��</asp:ListItem>
                                     <asp:ListItem Value="��װ" >��װ</asp:ListItem>
				 <asp:ListItem Value="��װ" >��װ</asp:ListItem>
                                </asp:RadioButtonList>
                               
                            </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               �Ҿ���ʩ��</td>
                           <td align="left" bgcolor="#ffffff">
                               &nbsp;<asp:TextBox ID="tbjianju" runat="server" Width="355px"></asp:TextBox>
                               <span style="color: #808080">Խ��ϸԽ��������</span></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               �ܱ߽�ͨ��</td>
                           <td align="left" bgcolor="#ffffff">
                               &nbsp;<asp:TextBox ID="tbjiaotong" runat="server" Width="356px"></asp:TextBox></td>
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
                           <font color="red"><b>*</b></font>&nbsp;��Դ������
                           </td>
                           <td align="left" bgcolor="#ffffff">
                           <span style="color:Gray;">&nbsp;���ڽ���Խ��ϸԽ�ã�����ʵͼ�����������ͻ�</span> 
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FreeTextBox1"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="�����뷿Դ����"></asp:RequiredFieldValidator></td>
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
                        <td colspan="2" nowrap="noWrap" bgcolor="#ffffff" style="text-align:left;font-size:15px;color:#e77529;font-weight:bold;height:50px;">
                                �ϴ�����ʵͼ<span style="color:Gray;font-weight:normal;"> ��<b>��ѡ������ϴ�6��</b>��</span>
                                �ϴ�����ʵͼ����߿ͻ�������
                            </td>
                       </tr>
                       <tr>
                       <td></td>
                        <td align="left">
                             
                            <div>
                                <p> 
                                    <INPUT id="File1" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File1" runat="server">
                                </p>
                                <p> 
                                    <INPUT id="File2" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File2" runat="server">
                                </p>
                                <p> 
                                    <INPUT id="File3" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File3" runat="server">
                                </p>
                                <p> 
                                    <INPUT id="File4" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File4" runat="server">
                                </p>
                                <p> 
                                    <INPUT id="File5" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File5" runat="server">
                                </p>
                                <p> 
                                    <INPUT id="File6" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File6" runat="server">
                                </p>
                            </div>
                        </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <strong><span style="color: #ff0000">* </span></strong>��ϵ�ˣ�</td>
                           <td align="left" bgcolor="#ffffff" valign="top">
                               <asp:TextBox ID="tbuname" runat="server" Width="184px"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="FreeTextBox1"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="��������ϵ��"></asp:RequiredFieldValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <strong><span style="color: #ff0000">* </span></strong>��ϵ�绰��</td>
                           <td align="left" bgcolor="#ffffff" valign="top">
                               <asp:TextBox ID="tbtel" runat="server" Width="185px"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="FreeTextBox1"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="��������ϵ�绰"></asp:RequiredFieldValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               �ֻ���</td>
                           <td align="left" bgcolor="#ffffff" valign="top">
                               <asp:TextBox ID="tbmobile" runat="server" Width="185px"></asp:TextBox></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               ��ϵ���䣺</td>
                           <td align="left" bgcolor="#ffffff" valign="top">
                               <asp:TextBox ID="tbemail" runat="server" Width="185px"></asp:TextBox></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               </td>
                           <td bgcolor="#ffffff"  align="left">
                            <asp:Button ID="btnOK" runat="server" Text="�ύ" CausesValidation="true"  OnClick="btnOK_Click" Width="121px" />    
                           <asp:Label ID="lblIndexPicUrl" runat="server" Visible="false"></asp:Label>
                               <asp:Label ID="lblistopendate" runat="server" Visible="False"></asp:Label>
                               <asp:Label ID="lblisagentrecom" runat="server" Visible="False"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                           </td>
                           <td align="left" bgcolor="#ffffff">
                               <asp:Label ID="lblisabosuprice" runat="server" Visible="False"></asp:Label>
                               <asp:Label ID="lblishired" runat="server" Visible="False"></asp:Label>
                               <asp:Label ID="lblisrecom" runat="server" Visible="False"></asp:Label>
                               <asp:Label ID="lblisrecomendate" runat="server" Visible="False"></asp:Label>
                               <asp:Label ID="lblisaudited" runat="server" Visible="False"></asp:Label>
                               <asp:Label ID="lblcicked" runat="server" Visible="False"></asp:Label>
                               <asp:Label ID="lblistop" runat="server" Visible="False"></asp:Label></td>
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
