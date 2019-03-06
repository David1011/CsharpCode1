<%@ page language="C#" autoeventwireup="true" inherits="Friend_Links, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="CompanyFooter.ascx" TagName="CompanyFooter" TagPrefix="uc3" %>

<%@ Register Src="CompanyLeft.ascx" TagName="CompanyLeft" TagPrefix="uc2" %>

<%@ Register Src="CompanyHeader.ascx" TagName="CompanyHeader" TagPrefix="uc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>友情链接,<%=SiteName %></title>
    <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
    <meta name="keywords" content="友情链接" />
     <script type="text/javascript" language="javascript">
        function checkinput()
        {
            if(document.getElementById("tbsname").value=='')
            {
                alert('请输入网站名称');
                document.getElementById("tbsname").focus();
                return false;
            }
            if(document.getElementById("tbaddress").value=='')
            {
                alert('请输入网站地址');
                document.getElementById("tbaddress").focus();
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
                    
                    <div class="companyitem" style="text-indent:0px;">
                    <table width=98%>
                        <tr>
                            <td class="companyhead">·友情链接</td>
                            <td class="companyhead" style="text-align:right;width:100px;">
                                <a href="#addl"><img src="images/nav.gif" align="absmiddle" />&nbsp;<u>申请链接</u></a>&nbsp;
                             </td>
                        </tr>
                    </table>
                        <asp:DataList ID="dllinks"   ItemStyle-CssClass="dot" 
                        runat="server" Width="98%" EnableViewState="false" 
                        RepeatDirection="horizontal" RepeatColumns="5">
                            <ItemTemplate>
                                <a href='<%#Eval("SiteUrl") %>' target="_blank"><%#Eval("SiteName") %></a>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                    <div>
                         <table width=96% style="border:1px solid #ccc;background:#f3f3f3;">
                           <tr>
                                <td class="companyhead" id="addl" colspan="2" bgcolor="#ffffff" >
                                ·申请友情链接
                                </td>
                         
                            </tr>
                            <tr>
                                <td class="lineheight" colspan="2">
                                    申请链接前请先做上本站的链接，申请后24小时审核。</td>
                            </tr>

                       <tr>
                           <td align="center" bgcolor="#ffffff" class="lineheight" colspan="2" nowrap="nowrap">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px">
                               网站名称：</td>
                           <td align="left" bgcolor="#ffffff" class="classic">
                               &nbsp;<asp:TextBox ID="tbsname" runat="server"></asp:TextBox>	    
                            </td>
                       </tr>
                       <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" style="width: 96px">
                               网站地址：</td>
                           <td align="left" bgcolor="#ffffff" class="classic">
                               &nbsp;<asp:TextBox ID="tbaddress" runat="server"></asp:TextBox>
                           </td>
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
