<%@ page language="C#" autoeventwireup="true" inherits="AddBuy_Anon, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>发布求购信息,我的管理中心</title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
     <meta name="copyright" content="Copyright 2007. 0752house.com All Rights Reserved.">
    <meta name="author" content="0752house.com">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
    <script src="js/search.js" language="javascript"></script>
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
            您的位置：
            <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.AddBuyUrl() %>'>发布求购信息</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
             <td width="250" valign="top" class="titlehead">
                提醒<br />
                <br />
                <span style="color: #ff0000">*</span> <span style="font-weight:normal">您当前的发布方式为免注册直接发布信息,发布后如需修改请联系管理员．</span>
                <br />
                <br />
                <span style="color: #ff0000"></span><span style="color: #ff0000">*</span> <span style="font-weight:normal">注册登录后发布信息可进行修改．</span><br />
                <br />
                <a href='<%=FormatUrl.LoginUrl() %>'>点击此处登录</a> / &nbsp;<a href='<%=FormatUrl.RegisterUrl() %>'>还未注册？</a>
            </td>
            <td  valign="top">
                <div class="border">
                    <div class="titlehead" >
                        免注册直接发布求购信息
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
                                填写基本信息<span style="color:Gray;font-weight:normal;"> （<font color="red"><b>*</b></font> 为必填项）</span>
                            </td>
                            
                        </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;求购标题：</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbtitle" runat="server" Width="246px"></asp:TextBox>
                               <span style="color: #808080">&nbsp;最多50个汉字，例：求购海珠区两房60万以内<br />
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbtitle"
                                       CssClass="validatecss" Display="Dynamic" ErrorMessage="请输入求购标题"></asp:RequiredFieldValidator></span></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <strong><span style="color: #ff0000">*</span></strong> 求购区域：</td>
                           <td align="left" bgcolor="#ffffff">
                               &nbsp;<asp:TextBox ID="tbregions" runat="server" Width="185px"></asp:TextBox>&nbsp;<span
                                   style="color: #808080"> 例：海珠区 、海珠区或天河区<asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                       runat="server" ControlToValidate="tbregions" CssClass="validatecss" Display="Dynamic"
                                       ErrorMessage="请输入求购区域"></asp:RequiredFieldValidator></span></td>
                       </tr>
                        <tr>
                            <td class=alignright nowrap="noWrap" bgcolor="#ffffff" >
                                <font color="red"><b>*</b></font>&nbsp;物业类型：</td>
                            <td  bgcolor="#ffffff" align="left">
                                <asp:RadioButtonList ID="rbleixing" runat="server" RepeatDirection="Horizontal" Width="100%">
                                    <asp:ListItem>小区住宅</asp:ListItem>
                                    <asp:ListItem>民房/宿舍楼</asp:ListItem>
                                    <asp:ListItem>公寓</asp:ListItem>
                                    <asp:ListItem>商品楼</asp:ListItem>
                                    <asp:ListItem>别墅</asp:ListItem>
                                    <asp:ListItem>写字楼</asp:ListItem>
                                    <asp:ListItem>商铺</asp:ListItem>
                                    <asp:ListItem>厂房</asp:ListItem>
                                    <asp:ListItem>仓库</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rbleixing"
                                    Display="Dynamic" ErrorMessage="请选择物业类型" CssClass="validatecss"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;大约售价：</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;不超过
                               <asp:TextBox ID="tbprice" runat="server" Width="69px"></asp:TextBox>
                               万元 <font color=gray>必须为数字</font><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbprice"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请输入售价，必须为数字"></asp:RequiredFieldValidator></td>
                       </tr>
                         <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               <strong><span style="color: #ff0000">* </span></strong>楼龄要求：</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;不超过
                               <asp:TextBox ID="tbhouseage" runat="server" Width="69px"></asp:TextBox>
                               年
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="tbhouseage"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请输入楼龄"></asp:RequiredFieldValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;建筑面积：</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;不小于
                               <asp:TextBox ID="tbsize" runat="server" Width="59px"></asp:TextBox>
                               平方米&nbsp;
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbsize"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请输入建筑面积，必须为数字"></asp:RequiredFieldValidator></td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;户型：</td>
                           <td bgcolor="#ffffff"  align="left">
                              <asp:RadioButtonList ID="rbhuxing" runat="server" RepeatDirection="Horizontal" Width="100%">
                                    <asp:ListItem >单间</asp:ListItem>
                                    <asp:ListItem>一房</asp:ListItem>
                                    <asp:ListItem>两房</asp:ListItem>
                                    <asp:ListItem>三房</asp:ListItem>
                                    <asp:ListItem>四房</asp:ListItem>
                                    <asp:ListItem>五房</asp:ListItem>
                                    <asp:ListItem>复式</asp:ListItem>
                                    <asp:ListItem>地下室</asp:ListItem>
                                    <asp:ListItem>其它户型</asp:ListItem>
                                </asp:RadioButtonList>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="rbhuxing"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请选择户型"></asp:RequiredFieldValidator></td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;期望楼层：</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;最低
                               <asp:TextBox ID="tbfloor" runat="server" Width="55px"></asp:TextBox>
                               楼，
                               最高<asp:TextBox ID="tbtopfloors" runat="server" Width="55px"></asp:TextBox>
                               楼 <font color=gray>必须为数字</font>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbfloor"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请输入楼层，必须为数字"></asp:RequiredFieldValidator></td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               房屋朝向：</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbfangwei" runat="server" Width="174px"></asp:TextBox>
                               &nbsp;&nbsp; <span style="color: #808080">例：东、南北向或西南向</span></td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               证件情况：</td>
                           <td bgcolor="#ffffff"  align="left">
                                <asp:RadioButtonList ID="rbfcz" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem >证须满五年</asp:ListItem>
                                    <asp:ListItem>证未满五年亦可</asp:ListItem>
                                    <asp:ListItem Selected="True">不要求</asp:ListItem>
                                </asp:RadioButtonList>
                               
                            </td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;信息有效期：</td>
                           <td bgcolor="#ffffff"  align="left">
                               <asp:RadioButtonList ID="rbavai" runat="server" RepeatDirection="Horizontal" >
                                    <asp:ListItem Value="7">一星期</asp:ListItem>
                                    <asp:ListItem Value="15">半个月</asp:ListItem>
                                    <asp:ListItem Value="30" Selected="True">一个月</asp:ListItem>
                                    <asp:ListItem Value="60">两个月</asp:ListItem>
                                    <asp:ListItem Value="90">三个月</asp:ListItem>
                                    <asp:ListItem Value="180">半年</asp:ListItem>
                                    <asp:ListItem Value="360">一年</asp:ListItem>
                                    <asp:ListItem Value="36000">不限</asp:ListItem>
                                </asp:RadioButtonList>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="rbavai"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请选择有效期"></asp:RequiredFieldValidator></td>
                       </tr>
                        
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                           <font color="red"><b>*</b></font>&nbsp;求购描述：
                           </td>
                           <td align="left" bgcolor="#ffffff">
                           <span style="color:Gray;"></span> <span style="color: #808080">&nbsp;好的描述能更让人懂得您心目中要求的房源</span><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FreeTextBox1"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请输入求购描述"></asp:RequiredFieldValidator>&nbsp;</td>
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
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <strong><span style="color: #ff0000">* </span></strong>联系人：</td>
                           <td align="left" bgcolor="#ffffff" valign="top">
                               <asp:TextBox ID="tbuname" runat="server" Width="184px"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="FreeTextBox1"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请输入联系人"></asp:RequiredFieldValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <strong><span style="color: #ff0000">* </span></strong>联系电话：</td>
                           <td align="left" bgcolor="#ffffff" valign="top">
                               <asp:TextBox ID="tbtel" runat="server" Width="185px"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="FreeTextBox1"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请输入联系电话"></asp:RequiredFieldValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               手机：</td>
                           <td align="left" bgcolor="#ffffff" valign="top">
                               <asp:TextBox ID="tbmobile" runat="server" Width="185px"></asp:TextBox></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               联系邮箱：</td>
                           <td align="left" bgcolor="#ffffff" valign="top">
                               <asp:TextBox ID="tbemail" runat="server" Width="185px"></asp:TextBox></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               </td>
                           <td bgcolor="#ffffff"  align="left">
                            <asp:Button ID="btnOK" runat="server" Text="提交" CausesValidation="true" OnClientClick="checkpwd()"  OnClick="btnOK_Click" Width="121px" />&nbsp;
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