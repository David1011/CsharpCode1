<%@ page language="C#" autoeventwireup="true" inherits="qqgroup, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="CompanyFooter.ascx" TagName="CompanyFooter" TagPrefix="uc3" %>

<%@ Register Src="CompanyLeft.ascx" TagName="CompanyLeft" TagPrefix="uc2" %>

<%@ Register Src="CompanyHeader.ascx" TagName="CompanyHeader" TagPrefix="uc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title><%=Common.GetCityName() %>房产QQ群,<%=Common.GetCityName() %>租房QQ群,<%=Common.GetCityName() %>中介QQ群,<%=Common.GetCityName() %>房产网</title>
    <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:CompanyHeader id="CompanyHeader1" runat="server">
        </uc1:CompanyHeader></div>
       
        <TABLE cellSpacing=5 cellPadding=0 width=770 align=center border=0>
            <tr>
                <td colspan="2" height="20"></td>
            </tr>
            <tr>
                <td width="150" style="border-right:1px dotted #ccc;" valign="top">
                     <uc2:CompanyLeft id="CompanyLeft1" runat="server">
                     </uc2:CompanyLeft>
                </td>
                 <td width="615" valign="top">
                    <div class="companyhead">·本站QQ群</div>
                    <div class="companyitem" style="text-indent:0px;"><%=qq %></div>
                </td>
            </tr>
        </TABLE>
        <uc3:CompanyFooter ID="CompanyFooter1" runat="server" />
    </form>
</body>
</html>
