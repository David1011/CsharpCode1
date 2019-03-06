<%@ page language="C#" autoeventwireup="true" inherits="pub_non, House_FreeV2_deploy" enableEventValidation="false" %>

<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>免费发布信息,<%=Common.GetCityName() %>二手房,<%=Common.GetCityName() %>出租房网</title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
   
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
     <script type="text/javascript" src="js/search.js" language="javascript"></script>
    <script type="text/javascript" src="js/ajax.js" language="javascript"></script>

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
     
     <br />
     <br /><br /><br />
     <table cellpadding="0" cellspacing="0" border="0" width="680">
        <tr>
            <td style="border-right:1px solid #ccc;padding-right:10px;" width="340">
                <a href="AddSell_Anon.aspx"><img src="images/pubsell_non.gif" align="absmiddle" /></a>&nbsp;</td>
            <td style="padding-left:15px;" width="340">
          <a href="AddRent_Anon.aspx"><img src="images/pubrent_non.gif" align="absmiddle" /></a></td>
        </tr>
         <tr>
             <td style="border-right: #ccc 1px solid; padding-right: 10px" width="340">
             </td>
             <td style="padding-left: 15px" width="340">
             </td>
         </tr>
         <tr>
             <td height="50" style="border-right: #ccc 1px solid; padding-right: 10px" width="340">
             </td>
             <td style="padding-left: 15px" width="340">
             </td>
         </tr>
         <tr>
             <td style="border-right: #ccc 1px solid; padding-right: 10px" width="340">
             </td>
             <td style="padding-left: 15px" width="340">
             </td>
         </tr>
         <tr>
            <td style="border-right:1px solid #ccc;padding-right:10px;" width="340">
            <a href="AddBuy_Anon.aspx"><img src="images/pubqg_non.gif" align="absmiddle" /></a>&nbsp;</td>
            <td style="padding-left:15px;" width="340">
            <a href="AddQiuZu_Anon.aspx"><img src="images/pubqz_non.gif" align="absmiddle" /></a></td>
        </tr>
     </table><br /><br /><br /><br />
   
     <div>
             <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
