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
     <title>免注册发布出租信息,<%=Common.GetSiteName() %></title>
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
            您的位置：
            <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.AddRentUrl() %>'>发布出租信息</a>
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
                 <br /><br />
                <a href="AddSell_Anon.aspx">免注册发布出售信息</a>
            </td>
            <td  valign="top">
                <div class="border">
                    <div class="titlehead" >
                        
                        <div class="floatleft">免注册直接发布出租信息</div>
                        <div class="floatright"><a href="SiteHelp.aspx#two" target="_blank">如何发布信息更有效果？</a></div>
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
                                填写基本信息<span style="color:Gray;font-weight:normal;"> （<font color="red"><b>*</b></font> 为必填项）</span>&nbsp;<a href="feedback.htm" target="_blank" style="color:blue;"><u>发布过程中，如有任何问题，请点击这里报告给我们，谢谢</u></a>
                            </td>
                            
                        </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;房源标题：</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbtitle" runat="server" Width="410px"></asp:TextBox>&nbsp;<a href="SiteHelp.aspx#five" target="_blank"><u>如何填写标题更吸引人？</u></a>
                               <br /><span style="color: #808080">&nbsp;最多50个汉字
                                   &nbsp;如：出租海珠区怡乐花园两房一厅1600<br />
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbtitle"
                                       CssClass="validatecss" Display="Dynamic" ErrorMessage="请输入房源标题"></asp:RequiredFieldValidator></span></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;详细地址：</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbaddress" runat="server" Width="408px"></asp:TextBox>
                               <br />
                               &nbsp;<span style="color:Gray;">请写上路段，例：海珠区新港西路XX号</span> 
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbaddress"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请输入详细地址"></asp:RequiredFieldValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               出租类型：</td>
                           <td align="left" bgcolor="#ffffff">
                               <asp:RadioButtonList ID="rbrenttype" runat="server" RepeatDirection="Horizontal">
                                   <asp:ListItem Selected="True">整租</asp:ListItem>
                                   <asp:ListItem>合租</asp:ListItem>
                                   <asp:ListItem>短租</asp:ListItem>
                                   <asp:ListItem>日租</asp:ListItem>
                               </asp:RadioButtonList></td>
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
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <strong><span style="color: #ff0000">*</span></strong> 物业名称：</td>
                           <td align="left" bgcolor="#ffffff">
                               <asp:TextBox ID="tbquartername" runat="server" Width="148px"></asp:TextBox>&nbsp;
                               <span style="color: #808080">例：碧桂园（没有名称的填路段，如新港西路）可以增加房源曝光率</span>
                               <br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="tbquartername"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请输入小区名称"></asp:RequiredFieldValidator></td>
                       </tr>

                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;选择区域：</td>
                           <td bgcolor="#ffffff"  align="left">
                            <ajax:AjaxPanel ID="AjaxPanel1" runat="server">
                               &nbsp;<asp:DropDownList id="ddlRegion"  runat="server"  Height="21px" Width="76px" AutoPostBack="True" OnSelectedIndexChanged="ddlRegion_SelectedIndexChanged" ></asp:DropDownList>
								<asp:DropDownList id="ddlArea"   runat="server" Height="21px" Width="76px"></asp:DropDownList>
								</ajax:AjaxPanel>
                            </td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;租金：</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbprice" runat="server" Width="69px"></asp:TextBox>
                               元 
                               <asp:DropDownList ID="ddlrentunit" runat="server">
                                   <asp:ListItem>/月</asp:ListItem>
                                   <asp:ListItem>/天</asp:ListItem>
                                   <asp:ListItem>/年</asp:ListItem>
                                   <asp:ListItem>/平方米</asp:ListItem>
                               </asp:DropDownList><font color=gray>必须为数字</font><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbprice"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请输入租金，必须为数字"></asp:RequiredFieldValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               <strong><span style="color: #ff0000">* </span></strong>
                               最短租期：</td>
                           <td bgcolor="#ffffff"  align="left">
                               <span style="color:Gray;"></span> <asp:RadioButtonList ID="rbshortrent" runat="server" RepeatDirection="Horizontal">
                                   <asp:ListItem>一天</asp:ListItem>
                                   <asp:ListItem>一个月</asp:ListItem>
                                   <asp:ListItem>三个月</asp:ListItem>
                                   <asp:ListItem>半年</asp:ListItem>
                                   <asp:ListItem Selected="True">一年</asp:ListItem>
                                   <asp:ListItem>不限</asp:ListItem>
                               </asp:RadioButtonList>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="rbshortrent"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请选择最短租期"></asp:RequiredFieldValidator></td>
                       </tr>
                         <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               <strong><span style="color: #ff0000">* </span></strong>
                                支付方式：</td>
                           <td bgcolor="#ffffff"  align="left">
                            <asp:RadioButtonList ID="rbpaytype" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>日付</asp:ListItem>
                                    <asp:ListItem Selected="True">月付</asp:ListItem>
                                    <asp:ListItem>季付</asp:ListItem>
                                <asp:ListItem>年付</asp:ListItem>
                                </asp:RadioButtonList>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="rbpaytype"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请选择支付方式"></asp:RequiredFieldValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;建筑面积：</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbsize" runat="server" Width="59px"></asp:TextBox>平方米 <font color=gray>必须为数字</font>
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
                                    <asp:ListItem>二房</asp:ListItem>
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
                                <font color="red"><b>*</b></font>&nbsp;所在楼层：</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbfloor" runat="server" Width="55px"></asp:TextBox>
                               楼，
                               最高<asp:TextBox ID="tbtopfloors" runat="server" Width="55px"></asp:TextBox>
                               楼 <font color=gray>必须为数字</font>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbfloor"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请输入楼层，必须为数字"></asp:RequiredFieldValidator></td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               入住时间：</td>
                           <td bgcolor="#ffffff"  align="left">
                               &nbsp;<asp:TextBox ID="tbruzhu" runat="server" Width="174px">随时</asp:TextBox>
                               &nbsp;
                               
                            </td>
                       </tr>
                        <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               租户性别要求：</td>
                           <td bgcolor="#ffffff"  align="left">
                                <asp:RadioButtonList ID="rbsex" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem >只限男生</asp:ListItem>
                                    <asp:ListItem>只限女生</asp:ListItem>
                                    <asp:ListItem Selected="True">男女不限</asp:ListItem>
                                </asp:RadioButtonList>
                               
                            </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;电梯：</td>
                           <td bgcolor="#ffffff"  align="left">
                               <asp:RadioButtonList ID="rbhasleft" runat="server" RepeatDirection="Horizontal" >
                                    <asp:ListItem Value="true">有</asp:ListItem>
                                    <asp:ListItem Value="false" Selected="True">无</asp:ListItem>
                                </asp:RadioButtonList>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="rbhasleft"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请选择是否有电梯"></asp:RequiredFieldValidator>
                               
                            </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                装修情况：</td>
                           <td bgcolor="#ffffff"  align="left">
                               <asp:RadioButtonList ID="rbzhuangxiu" runat="server" RepeatDirection="Horizontal" >
                                    <asp:ListItem>毛坯</asp:ListItem>
                                    <asp:ListItem Selected="True">简单装修</asp:ListItem>
                                     <asp:ListItem Value="中装" >中装</asp:ListItem>
				 <asp:ListItem Value="精装" >精装</asp:ListItem>
                                </asp:RadioButtonList>
                               
                            </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               家具设施：</td>
                           <td align="left" bgcolor="#ffffff">
                               &nbsp;<asp:TextBox ID="tbjianju" runat="server" Width="355px"></asp:TextBox>
                               <span style="color: #808080">越详细越能吸引人</span></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               周边交通：</td>
                           <td align="left" bgcolor="#ffffff">
                               &nbsp;<asp:TextBox ID="tbjiaotong" runat="server" Width="356px"></asp:TextBox></td>
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
                           <font color="red"><b>*</b></font>&nbsp;房源描述：
                           </td>
                           <td align="left" bgcolor="#ffffff">
                           <span style="color:Gray;">&nbsp;屋内介绍越详细越好，配上实图更能吸引到客户</span> 
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FreeTextBox1"
                                   CssClass="validatecss" Display="Dynamic" ErrorMessage="请输入房源描述"></asp:RequiredFieldValidator></td>
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
                                上传房屋实图<span style="color:Gray;font-weight:normal;"> （<b>可选，最多上传6幅</b>）</span>
                                上传屋内实图可提高客户来电量
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
                            <asp:Button ID="btnOK" runat="server" Text="提交" CausesValidation="true"  OnClick="btnOK_Click" Width="121px" />    
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
