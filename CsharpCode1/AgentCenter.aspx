<%@ page language="C#" autoeventwireup="true" inherits="AgentCenter, House_FreeV2_deploy" enableEventValidation="false" %>

<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="ShopHeader.ascx" TagName="ShopHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=PageTitle %></title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:ShopHeader ID="ShopHeader1" runat="server" />
        </div>
        <table class="middlebody">
            <tr>
                <td class="adrightcontain"><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" />
                </td>
                <td class="navborder"></td>
            </tr>
        </table>
        <div>
            <uc2:Footer ID="Footer1" runat="server" />
        </div>

    </form>
</body>
</html>
