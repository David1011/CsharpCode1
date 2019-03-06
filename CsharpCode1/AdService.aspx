<%@ page language="C#" autoeventwireup="true" inherits="AdService, House_FreeV2_deploy" enableEventValidation="false" %>

<%@ Register Src="CompanyFooter.ascx" TagName="CompanyFooter" TagPrefix="uc3" %>

<%@ Register Src="CompanyLeft.ascx" TagName="CompanyLeft" TagPrefix="uc2" %>

<%@ Register Src="CompanyHeader.ascx" TagName="CompanyHeader" TagPrefix="uc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>广告服务,<%=SiteName %></title>
    <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
    <meta name="keywords" content="广告服务" />
    <meta name="description" content=本站是<%=Common.GetCityName() %>专业租房、二手房信息网,每天大量房产信息,在<%=Common.GetCityName() %>地区有较好的口碑,获得网民喜爱.为<%=Common.GetCityName() %>十佳专业房产网 />
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
                    <div class="companyhead">·广告服务</div>
                    <div class="companyitem"><%=ad %></div>
                </td>
            </tr>
        </TABLE>
        <uc3:CompanyFooter ID="CompanyFooter1" runat="server" />
    </form>
</body>
</html>
