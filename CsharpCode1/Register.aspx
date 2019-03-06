<%@ page language="C#" autoeventwireup="true" inherits="Register, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>会员注册</title>
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
            <td style="border-right:1px solid #ccc;padding-right:10px;" width="340">
                <table align="center" border="0" cellpadding="0" cellspacing="0" >
                    <tr>
                        <td align="left" style="font-weight: bold; font-size: 16px; color: #000; height: 50px">
                            &nbsp;注册个人会员</td>
                    </tr>
                    <tr>
                        <td align="left" class="lineheight">
                            ·
                            &nbsp;免费发布出/求租房、买/卖房信息</td>
                    </tr>
                    <tr>
                        <td height="10">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="lineheight">
                            ·&nbsp; 在线委托经纪人找房，免去来回奔跑的辛劳</td>
                    </tr>
                   <tr>
                        <td height="10">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="lineheight" valign="top">
                            <table cellpadding="0" cellspacing="0" border="0"  align="center">
                                <tr>
                                    <td valign="top">·&nbsp;</td>
                                    <td>
                                        &nbsp;在线提问，每日上万网友、专家律师及专业经纪人为您解答租房、买房过程中遇到的问题
                                    </td>
                                </tr>
                                
                            </table>
                       </td>
                    </tr>
                    <tr>
                          <td height=10></td>
                     </tr>
                      <tr>
                          <td align="left"><a href='<%=FormatUrl.RegisterPersonUrl() %>'><img src="images/b_reg.gif" align="absmiddle" /></a></td>
                     </tr>
                </table>
                &nbsp;</td>
            <td style="padding-left:15px;" width="340">
                 <table cellpadding="0" cellspacing="0" border="0"  align="center">
                    <tr>
                        <td style="font-size:16px; font-weight: bold; color: #000; height: 50px;" align="left">
                            &nbsp;注册经纪人（中介会员）</td>
                    </tr>
                     <tr>
                        <td class="lineheight" align="left">
                        ·&nbsp;&nbsp;免费发布出租、出售信息</td>
                    </tr>
                    <tr>
                        <td height=10></td>
                    </tr>
                     <tr>
                        <td class="lineheight" align="left">
                            ·&nbsp; 快速找到潜在客户</td>
                    </tr>
                     <tr>
                          <td height=10></td>
                     </tr>
                    <tr>
                        <td class="lineheight" align="left">
                            ·&nbsp; 独立的个人网络店铺，巨大的网客资源就在您身边</td>
                    </tr>
                     <tr>
                          <td height=10></td>
                     </tr>
                      <tr>
                         <td align="left" class="lineheight">
                          ·&nbsp; 获得业主在线委托
                         </td>
                     </tr>
                      <tr>
                          <td height=10></td>
                     </tr>
                      <tr>
                          <td align="left"><a href='<%=FormatUrl.RegisterAgentUrl() %>'><img src="images/b_reg.gif" align="absmiddle" /></a></td>
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
