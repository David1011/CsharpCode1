<%@ page language="C#" autoeventwireup="true" inherits="pub, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>免费发布信息,<%=Common.GetCityName() %>二手房,<%=Common.GetCityName() %>出租房网</title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
   
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
     <script type="text/javascript" src="js/search.js" language="javascript"></script>
    <script type="text/javascript" src="js/ajax.js" language="javascript"></script>
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
                            &nbsp;我要卖房</td>
                    </tr>
                    <tr>
                        <td align="left" class="lineheight">
                            <img align="absMiddle" src="images/icon-15.gif" />
                            &nbsp;&nbsp;免费发布二手房出售信息</td>
                    </tr>
                    <tr>
                        <td height="10">
                        </td>
                    </tr>
                   <tr>
                        <td height="10">
                        </td>
                    </tr>
                      <tr>
                          <td align="left"><a href='<%=FormatUrl.AddSellUrl() %>'><img src="images/pubes.gif" align="absmiddle" /></a></td>
                     </tr>
                </table>
                &nbsp;</td>
            <td style="padding-left:15px;" width="340">
                 <table cellpadding="0" cellspacing="0" border="0"  align="center">
                    <tr>
                        <td style="font-size:16px; font-weight: bold; color: #000; height: 50px;" align="left">
                            &nbsp;我要出租房</td>
                    </tr>
                     <tr>
                        <td class="lineheight" align="left">
                        <img src="images/icon-15.gif" align="absmiddle" />&nbsp;&nbsp;免费发布出租房源信息</td>
                    </tr>
                    <tr>
                        <td height=10></td>
                    </tr>
                      <tr>
                          <td height=10></td>
                     </tr>
                      <tr>
                          <td align="left"><a href='<%=FormatUrl.AddRentUrl() %>'><img src="images/pubzf.gif" align="absmiddle" /></a></td>
                     </tr>
                 </table>
            </td>
        </tr>
         <tr>
            <td style="border-right:1px solid #ccc;padding-right:10px;" width="340">
                <table align="center" border="0" cellpadding="0" cellspacing="0" >
                    <tr>
                        <td align="left" style="font-weight: bold; font-size: 16px; color: #000; height: 50px">
                           &nbsp;我要求购房</td>
                    </tr>
                    <tr>
                        <td align="left" class="lineheight">
                            <img align="absMiddle" src="images/icon-15.gif" />
                            &nbsp;&nbsp;免费发布求购二手房信息</td>
                    </tr>
                    <tr>
                        <td height="10">
                        </td>
                    </tr>
                   <tr>
                        <td height="10">
                        </td>
                    </tr>
                      <tr>
                          <td align="left">
                          
                            <a href=<%=QGUrl %>>
                            <asp:Image ID="imqg" runat="server" ImageAlign="absmiddle" />
                            
                            </a>
                          </td>
                     </tr>
                </table>
                &nbsp;</td>
            <td style="padding-left:15px;" width="340">
                 <table cellpadding="0" cellspacing="0" border="0"  align="center">
                    <tr>
                        <td style="font-size:16px; font-weight: bold; color: #000; height: 50px;" align="left">
                            &nbsp;我要求租房</td>
                    </tr>
                     <tr>
                        <td class="lineheight" align="left">
                        <img src="images/icon-15.gif" align="absmiddle" />&nbsp;&nbsp;免费发布求租房源信息</td>
                    </tr>
                    <tr>
                        <td height=10></td>
                    </tr>
                      <tr>
                          <td height=10></td>
                     </tr>
                      <tr>
                          <td align="left"><a href=<%=QZUrl %>>
                            <asp:Image ID="imqz" runat="server" ImageAlign="absmiddle" />
                            </a>
                          </td>
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
