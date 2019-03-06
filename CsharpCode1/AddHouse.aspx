<%@ page language="C#" autoeventwireup="true" inherits="AddHouse, House_FreeV2_deploy" validaterequest="false" enableEventValidation="false" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<%@ Register Assembly="MagicAjax" Namespace="MagicAjax.UI.Controls" TagPrefix="ajax" %>

<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>添加楼盘信息</title>
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
            您的位置：
            <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.LouPanHomeUrl() %>'>楼盘</a>&nbsp;>&nbsp;
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
                                填写基本信息<span style="color:Gray;font-weight:normal;"> （<font color="red"><b>*</b></font> 为必填项）</span>
                            </td>
                            
                        </tr>
                         <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                <font color="red"><b>*</b></font>&nbsp;<%=lpname %>：</td>
                             <td bgcolor="#ffffff"  align="left">
                                 &nbsp;<asp:TextBox ID="tbname" runat="server" Width="185px"></asp:TextBox>
                                 <span style="color: #808080">例：<%=suchas %><asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                       runat="server" ControlToValidate="tbname" CssClass="validatecss" Display="Dynamic"
                                       ErrorMessage="请输入楼盘名称"></asp:RequiredFieldValidator></span>
                             <div id="tip" class="red"></div>
                             </td>
                         </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <%=lpprice %></td>
                           <td align="left" bgcolor="#ffffff">
                               &nbsp;<asp:TextBox ID="tbprice" runat="server" Width="119px"></asp:TextBox>
                               <%=punit %>&nbsp;<font color=red>必须为数字</font></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <strong><span style="color: #ff0000">*</span></strong> <%=lpleixing %>：</td>
                           <td align="left" bgcolor="#ffffff">
                               &nbsp;<asp:DropDownList ID="ddlleixing" runat="server">
                                   <asp:ListItem>小区</asp:ListItem>
<asp:ListItem>商品房</asp:ListItem>
                                   <asp:ListItem>别墅</asp:ListItem>
                                   <asp:ListItem>写字楼</asp:ListItem>
                                   <asp:ListItem>商铺</asp:ListItem>
                               </asp:DropDownList><%=lx %></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                               <strong><span style="color: #ff0000">*</span></strong> 选择区域：</td>
                           <td align="left" bgcolor="#ffffff">
                            <ajax:AjaxPanel ID="AjaxPanel1" runat="server">
                               &nbsp;<asp:DropDownList ID="ddlregion" runat="server" AutoPostBack=true OnSelectedIndexChanged="ddlregion_SelectedIndexChanged">
                               </asp:DropDownList>
                               <asp:DropDownList ID="ddlarea" runat="server">
                               </asp:DropDownList>
                               </ajax:AjaxPanel>
                               <span style="color: #808080">请选择所在区域</span></td>
                       </tr>
                       <tr>
                           <td class=alignright nowrap="noWrap" bgcolor="#ffffff" >
                               <font color="red"><b>*</b></font> 具体地址：</td>
                           <td  bgcolor="#ffffff" align="left">
                               &nbsp;<asp:TextBox ID="tbaddress" runat="server" Width="273px"></asp:TextBox>
                               <span style="color: #808080">例：<%=addsuchas %></span><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                   runat="server" ControlToValidate="tbaddress" CssClass="validatecss" Display="Dynamic"
                                   ErrorMessage="请输入地址"></asp:RequiredFieldValidator></td>
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
                               <strong><span style="color: #ff0000">*</span></strong> <%=lpintro %>：</td>
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
                                &nbsp;选填项<span style="color:Gray;font-weight:normal;"> (最好也能输入)</span>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class=alignright nowrap="noWrap" bgcolor="#ffffff" valign="top">
                                视频地址：</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                            <asp:TextBox ID="tbvideourl" runat="server" Width="278px"></asp:TextBox>（输入楼盘视频的URL地址）</td>
                               
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                地图地址：</td>
                            <td bgcolor="#ffffff"  align="left" colspan="2">
                                <asp:TextBox ID="tbmapurl" runat="server" Width="278px"></asp:TextBox>（输入楼盘地图的URL地址）</td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                现场进度：</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                                <asp:TextBox ID="tbjindu" runat="server" Width="97px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                开盘时间：</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                                <asp:TextBox ID="tbkaipandate" runat="server" Width="98px"></asp:TextBox>
                                交房时间：<asp:TextBox ID="tbjiaofangdate" runat="server" Width="98px"></asp:TextBox>
                                （格式：2009-1-1）</td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                总建筑面积：</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                                <asp:TextBox ID="tballsize" runat="server" Width="98px">㎡</asp:TextBox>
                                总 户 数：<asp:TextBox ID="tballcounts" runat="server" Width="98px">户</asp:TextBox></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                可售数：</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                                <asp:TextBox ID="tbkeshou" runat="server" Width="98px">套</asp:TextBox></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                容积率：</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                                <asp:TextBox ID="tbrongji" runat="server" Width="98px"> </asp:TextBox>
                                绿 化 率：<asp:TextBox ID="tbluhua" runat="server" Width="98px">%</asp:TextBox>
                                车 &nbsp; &nbsp;&nbsp;
                                位：<asp:TextBox ID="tbchewei" runat="server" Width="98px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                物业公司：</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                                <asp:TextBox ID="tbwuye" runat="server" Width="264px"></asp:TextBox>
                                管 理 费：<asp:TextBox
                                    ID="tbguanglifei" runat="server" Width="98px">元/月/㎡</asp:TextBox></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" valign="top">
                                售楼处：</td>
                            <td bgcolor="#ffffff"   align="left" colspan="2">
                                <asp:TextBox ID="tbshoulouaddress" runat="server" Width="261px"></asp:TextBox>&nbsp;
                                售楼电话：<asp:TextBox ID="tbshouloutel" runat="server" Width="98px"></asp:TextBox></td>
                        </tr>
                        
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                周边学校：</td>
                            <td bgcolor="#ffffff"  align="left">
                                &nbsp;<asp:TextBox ID="tbschool" runat="server" Width="431px"></asp:TextBox>&nbsp;<br />
                                <span style="color: #808080">请输入附近的学校（幼儿园、小学、中学、大学）</span></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                                <span style="color: #666666">周边地铁：</span></td>
                            <td align="left" bgcolor="#ffffff" style=" color: #ff0000">
                                &nbsp;<asp:TextBox ID="tbditei" runat="server" Width="427px"></asp:TextBox>&nbsp;<br />
                                &nbsp;<span style="color: #808080">请输入附近的地铁</span></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                                周边公交：</td>
                            <td align="left" bgcolor="#ffffff">
                                &nbsp;<asp:TextBox ID="tbbus" runat="server" Width="427px"></asp:TextBox>&nbsp;<br />
                                &nbsp;<span style="color: #808080">请输入附近的公交路线</span></td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                                购物商场：</td>
                            <td align="left" bgcolor="#ffffff">
                                &nbsp;<asp:TextBox ID="tbshopping" runat="server" Width="427px"></asp:TextBox>&nbsp;<br />
                                &nbsp;<span style="color: #808080">请输入附近的购物商场，例：百佳、万佳</span></td>
                        </tr>
                        <tr style="color: #666666">
                            <td class=alignright nowrap="noWrap" bgcolor="#ffffff" >
                                周边医院：</td>
                            <td  bgcolor="#ffffff" align="left">
                                <span style="color: #808080">
                                    <asp:TextBox ID="tbhospital" runat="server" Width="427px"></asp:TextBox>&nbsp;<br />
                                    &nbsp;<span style="color: #808080">请输入附近的医院</span></span></td>
                        </tr>
                        <tr style="color: #666666">
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap">
                            </td>
                            <td align="left" bgcolor="#ffffff">
                                <asp:Button ID="btnaddhouse" runat="server" Height="33px" OnClick="btnaddhouse_Click"
                                    Text="提交并转到下一步上传图片" Width="186px" /></td>
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
