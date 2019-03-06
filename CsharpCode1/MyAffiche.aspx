<%@ page language="C#" autoeventwireup="true" inherits="MyAffiche, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>我的管理中心</title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
     <meta name="copyright" content="Copyright 2007. 0752house.com All Rights Reserved.">
    <meta name="author" content="0752house">
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
     <div class="currnav">
            <div class="currnavtop">
                <img src="images/navh.JPG" align="absmiddle" />&nbsp;
            您的位置：
            <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.MyUCenter() %>'>我的管理中心</a>&nbsp;>&nbsp;
            <a href="MyAffiche.aspx">网店设置</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top"><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
            <td valign="top">
                <div class="border">
                    <div class="titlehead">
                        店铺设置
                    </div>
                    <div>
             <table cellpadding=0 cellspacing=0 border=0 width=80% align=center>
             <tr>
                <td class="msgtip"><%=Tip %>
                    </td>
             </tr>
            <tr>
                <td class=rightitem valign="top">
                   <table width=100% style="border:1px solid #ccc;background:#f3f3f3;">
                        <tr>
                            <td class=alignright nowrap="noWrap" bgcolor="#ffffff" style="width: 125px">
                                负责区域：</td>
                            <td class=classic bgcolor="#ffffff" align="left">
                                <asp:DropDownList ID="dlregin" runat="server"></asp:DropDownList>
                                <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label></td>
                        </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 125px;">
                               所属公司：</td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                               <asp:TextBox ID="tbcompany" runat="server" Width="284px" Height="17px" ></asp:TextBox>
                               <span style="color:Gray">必填</span>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbcompany"
                                   Display="Dynamic" ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 125px;">
                               公司地址：</td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                               <asp:TextBox ID="tbadd" runat="server" Width="284px" ></asp:TextBox>
                               <span style="color: #808080">必填
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbadd"
                                       Display="Dynamic" ErrorMessage="必填"></asp:RequiredFieldValidator></span></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 125px;">
                               店铺公告/简介：</td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                               <asp:TextBox ID="tbintro" runat="server" Width="284px" Height="128px" TextMode="MultiLine" ></asp:TextBox>
                               <span style="color: #808080">必填</span></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 125px">
                               个人或公司照片上传：</td>
                           <td align="left" bgcolor="#ffffff" class="classic">
                               <input id="File1" style="width: 284px" type="file" runat="server" /></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 125px">
                               照片预览：</td>
                           <td align="left" bgcolor="#ffffff" class="classic">
                               <asp:Image ID="Image1" runat="server" /></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 125px">
                               </td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                            <asp:Button ID="btnOK" runat="server" Text="提交" OnClientClick="checkpwd()"  OnClick="btnOK_Click" Width="121px" />    
                           </td>
                       </tr>
                       
                   </table>
                    <asp:Label ID="lblbpic" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblspic" runat="server" Visible="False"></asp:Label></td>
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
