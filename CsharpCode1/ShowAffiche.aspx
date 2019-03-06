<%@ page language="C#" autoeventwireup="true" inherits="ShowAffiche, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="Searcher.ascx" TagName="Searcher" TagPrefix="uc3" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=PageTitle %></title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="robots" content="index,follow">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/search.js" language="javascript"></script>
    <script type="text/javascript" src="js/ajax.js" language="javascript"></script>

    <link href="css/menu.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   <uc8:LoginUC id="LoginUC1" runat="server">
            </uc8:LoginUC>
        <uc1:Header ID="Header1" runat="server" />
            <uc3:Searcher ID="Searcher1" runat="server" />
            <br /><br /><br />
            <div class="columncontain3">
                <div class="twocolumnleft" style="border:0px;border-right:1px solid #ccc;">
                <div>
                    <div>
                        <div>
                            <div>
                                <center><h1><asp:Label ID="lbltitle" runat="server"></asp:Label></h1></center>
                            </div>
                            <center>
                                <%=adddate %>
                            </center><br>
                        </div>
                        <div class="font14" style="color:#000;line-height:180%;">
                            <%=content %>
                        </div>
                   </div> 
                   <br />
                   
                </div>
            </div>
            </div>
            <uc2:Footer ID="Footer1" runat="server" />
    </form>
</body>
</html>
