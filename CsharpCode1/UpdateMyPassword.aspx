<%@ page language="C#" autoeventwireup="true" inherits="UpdateMyPassword, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
        <title>修改登录密码,我的管理中心</title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="copyright" content="Copyright 2007. 0752house.com All Rights Reserved.">
    <meta name="author" content="0752house.com">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
     <script  language="javascript" type="text/javascript" >
        function checkpwd()
        {
            if(document.getElementById("tboldpwd").value=='')
            {
                alert('请输入密码');
                document.getElementById("tboldpwd").focus();
                document.getElementById("tboldpwd").style.border="2px solid #f00";
                return false;
            }
        } 

     </script>
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
            <a href='<%=FormatUrl.UpdateLoginPwdUrl() %>'>修改登录密码</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top"><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
            <td valign="top">
                <div class="border">
                    <div class="titlehead">
                        修改登录密码
                    </div>
                    <div>
             <table cellpadding=0 cellspacing=0 border=0 width=80% align=center>
             <tr>
                <td class="msgtip"><%=Tip %>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbnewpwd1"
                        ControlToValidate="tbnewpwd2" Display="Dynamic" ErrorMessage="两次新密码输入不同"></asp:CompareValidator></td>
             </tr>
            <tr>
                <td class=rightitem valign="top">
                   <table width=100% style="border:1px solid #ccc;background:#f3f3f3;">
                        <tr>
                            <td class=alignright nowrap="noWrap" bgcolor="#ffffff" style="width: 96px">
                                您的帐号：</td>
                            <td class=classic bgcolor="#ffffff" align="left">
                                <asp:TextBox ID="tbacc" runat="server" Width="120px" BorderStyle="None"></asp:TextBox>
                                
                            </td>
                        </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px;">
                               登录密码：</td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                               <asp:TextBox ID="tboldpwd" runat="server" Width="120px" Height="17px" TextMode="Password"></asp:TextBox>
                               <span style="color:Gray">必填</span>
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px;">
                               新密码：</td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                               <asp:TextBox ID="tbnewpwd1" runat="server" Width="155px" TextMode="Password"></asp:TextBox>
                               <span style="color: #808080">必填</span></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px;">
                               再输入新密码：</td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                               <asp:TextBox ID="tbnewpwd2" runat="server" Width="155px" TextMode="Password"></asp:TextBox>
                               <span style="color: #808080">必填</span></td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px">
                               </td>
                           <td bgcolor="#ffffff" class="classic" align="left">
                            <asp:Button ID="btnOK" runat="server" Text="提交" OnClientClick="checkpwd()"  OnClick="btnOK_Click" Width="121px" />    
                           </td>
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
