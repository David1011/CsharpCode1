<%@ page language="C#" autoeventwireup="true" inherits="GetUserPwd, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>取回密码</title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

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
     <table cellpadding="0" cellspacing="0" border="0" width="680">
        <tr>
            <td style="border-right:1px solid #ccc;">
                <table cellpadding="0" cellspacing="0" border="0" width="400" align="left">
                    <tr>
                        <td colspan="3" align="left" style="height: 30px">
                           <%=Tips %>
                            </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="2" style="font-size: 14px;height:50px;" nowrap="noWrap">
                            请输入注册时的邮箱地址，系统会发送新密码到您的邮箱。
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" nowrap="nowrap" style="font-size: 14px; height: 50px">
                            
                            邮箱：<asp:TextBox ID="tbacc" runat="server" Height="19px" CssClass="btninput" Width="202px"></asp:TextBox>
                            &nbsp; &nbsp; &nbsp; 
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbacc"
                                Display="Dynamic" ErrorMessage="邮箱格式不对" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        </td>
                        <td>
                        </td>
                    </tr>

                    <tr>
                        <td height="50" style="width: 46px"></td>
                        <td class="lineheight" style="height: 30px" align="left">
                            <asp:Button ID="btnok" runat="server" Text="立即取回密码" Height="24px" OnClick="btnGet_Click"  />&nbsp;</td>
                        <td align="left"></td>
                    </tr>
                </table>
            </td>
            <td style="padding-left:15px;">
                 <table cellpadding="0" cellspacing="0" border="0" width="280" align="left">
                    <tr>
                        <td style="font-size:16px; font-weight: bold; color: red; height: 50px;" align="left">
                            &nbsp;忘记了邮箱怎么办？
                        &nbsp;&nbsp;
                        </td>
                    </tr>
                     <tr>
                        <td class="lineheight" align="left">
                       &nbsp;&nbsp;
                        <a href='<%=FormatUrl.GetFeedBackUrl() %>'><font color="#329b58"><u>请留言给本站管理员</u></font></a>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td height=50>注意：留言时需提供发布过的房源和电话等资料</td>
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
