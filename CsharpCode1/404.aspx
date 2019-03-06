<%@ page language="C#" autoeventwireup="true" inherits="_404, House_FreeV2_deploy" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>４０４页面，找不到您要页面</title>
</head>
<body background="images/404.jpg">
    <form id="form1" runat="server">
    <div>
    <center><br />
    <a href='<%=FormatUrl.HomeUrl() %>'>找不到你要的页面，点击返回网站首页</a>
    </center>
    </div>
    </form>
</body>
</html>
