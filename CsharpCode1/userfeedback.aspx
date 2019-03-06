<%@ page language="C#" autoeventwireup="true" inherits="userfeedback, House_FreeV2_deploy" enableEventValidation="false" %>

<%@ Register Src="CompanyFooter.ascx" TagName="CompanyFooter" TagPrefix="uc3" %>

<%@ Register Src="CompanyLeft.ascx" TagName="CompanyLeft" TagPrefix="uc2" %>

<%@ Register Src="CompanyHeader.ascx" TagName="CompanyHeader" TagPrefix="uc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>用户留言,<%=SiteName %></title>
    <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
    <meta name="keywords" content="用户留言" />
    <meta name="description" content="" />
    <script type="text/javascript" language="javascript">
        function checkinput()
        {
            if(document.getElementById("tbmail").value=='')
            {
                alert('请输入邮箱');
                document.getElementById("tbmail").focus();
                return false;
            }
            if(document.getElementById("tbcontent").value=='')
            {
                alert('请输入留言内容');
                document.getElementById("tbcontent").focus();
                return false;
            }
        } 
    </script>
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
                    <div class="companyhead">·用户留言</div>
                    <div class="companyitem">
                        <table width=96% style="border:1px solid #ccc;background:#f3f3f3;">
                            <tr>
                                <td class="lineheight" colspan="2">
                                    请在此提交您对本站的意见及建议。</td>
                            </tr>

                       <tr>
                           <td align="center" bgcolor="#ffffff" class="lineheight" colspan="2" nowrap="nowrap">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px">
                               您的邮箱：</td>
                           <td align="left" bgcolor="#ffffff" class="classic">
                               &nbsp;<asp:TextBox ID="tbmail" runat="server" Width="280px"></asp:TextBox>	    
                            </td>
                       </tr>
                            <tr>
                                <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px">
                                    内容：</td>
                                <td align="left" bgcolor="#ffffff" class="classic">
                                    &nbsp;<asp:TextBox ID="tbcontent" runat="server" Height="152px" TextMode="MultiLine" Width="284px"></asp:TextBox></td>
                            </tr>

                        <tr>
                            <td class=alignright nowrap="noWrap" bgcolor="#ffffff" style="width: 96px">
                                </td>
                            <td class=classic bgcolor="#ffffff" align="left">
                                &nbsp;
                                <asp:Button ID="btnAddlink" OnClientClick="return checkinput();" runat="server" Text="提交" Width="63px" OnClick="btnAddlink_Click" />    
                            </td>
                        </tr>
                       
                   </table>
                    </div>
                </td>
            </tr>
        </TABLE>
        <uc3:CompanyFooter ID="CompanyFooter1" runat="server" />
    </form>
</body>
</html>
