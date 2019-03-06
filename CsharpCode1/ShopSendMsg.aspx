<%@ page language="C#" autoeventwireup="true" inherits="ShopSendMsg, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="ShopHeader.ascx" TagName="ShopHeader" TagPrefix="uc1" %>

<%@ Register Src="ShopRight.ascx" TagName="ShopRight" TagPrefix="uc3" %>

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
     <form id="form2" runat="server">
     <uc1:ShopHeader ID="ShopHeader2" runat="server" />
        <div class="columncontain">
            <div class="columnrightbody" style="float:left;">
                <uc3:ShopRight id="ShopRight2" runat="server" />
             </div>
            <div class="twocolumnleft"  style="float:right;">
                    <div class="titlehead">给我发送短消息</div>
                    <div class="bgwhite">
                        <table cellpadding="0" cellspacing="5" border="0" width="100%" align="center">
                    <tr>
                        <td nowrap class="tableleft">&nbsp;<span class="itemtitle">姓名：</span></td>
                        <td class="dot" align="left">
                            <asp:TextBox ID="tbname" runat="server"></asp:TextBox>
                            <font color=gray>必填，如陈先生/李小姐</font></td>
                    </tr>
                    <tr>
                        <td nowrap class="tableleft">&nbsp;<span class="itemtitle">邮箱：</span></td>
                        <td class="dot" align="left">
                            <asp:TextBox ID="tbmail" runat="server"></asp:TextBox>
                            <font color=gray>必填，以便对方联系到您</font>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap class="tableleft">&nbsp;<span class="itemtitle">留言：</span></td>
                        <td class="dot" align="left">
                            <asp:TextBox ID="tbmsg" runat="server" Height="145px" TextMode="MultiLine" Width="326px"></asp:TextBox>
                            <font color=gray>必填</font>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap class="tableleft">&nbsp;<span class="itemtitle"></span></td>
                        <td class="dot" align="left">
                            <asp:Button ID="btnok" OnClientClick="return checksendmsgblank()" runat="server" Text="提交" CausesValidation="False" OnClick="btnok_Click" Width="62px" />
                        </td>
                    </tr>
                   </table>   
                    </div>
                
            </div>
             
        </div>
    <div>
        <uc2:Footer ID="Footer2" runat="server" />
    </div>
    </form>

</body>
</html>
