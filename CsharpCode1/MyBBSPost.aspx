<%@ page language="C#" autoeventwireup="true" inherits="MyBBSPost, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>我的贴子,我的管理中心,<%=Common.GetSiteName() %></title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="copyright" content="Copyright 2007. 0752house.com All Rights Reserved.">
    <meta name="author" content="0752house">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
     <script src="js/ajax.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:LoginUC ID="LoginUC1" runat="server" />
    </div>
    <div>
            <uc1:Header ID="Header1" runat="server" />
        </div>
     <div class="currnav">
            <div class="currnavtop">
                <img src="images/navh.JPG" align="absmiddle" />&nbsp;
            您的位置：
            <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.MyUCenter() %>'>我的管理中心</a>&nbsp;>&nbsp;
            <a href="MyBBSPost.aspx">我的贴子</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top"><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
            <td valign="top">
                <div class="border">
                    <div class="titlehead">
                        我的贴子
                    </div>
                    <div>
               <table cellpadding=0 cellspacing=0 border=0 width=100% align=center>
             <tr>
                <td class="msgtip"><%=Tip %>
                    </td>
             </tr>
            <tr>
                <td class=rightitem valign="top">
               <asp:DataGrid ID="dg" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" Width=100% DataKeyField="Bid" PageSize="20">
                        <FooterStyle BackColor="#CCCC99" />
                        <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" Mode="NumericPages"
                            PageButtonCount="20" />
                        <AlternatingItemStyle BackColor="White" />
                        <ItemStyle BackColor="#F7F7DE" />
                        <Columns>
                            <asp:TemplateColumn>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"bbs/bbs_view.aspx?Bid="+DataBinder.Eval(Container.DataItem,"Bid") %>' runat="server">修改</asp:HyperLink>
                                </ItemTemplate>
                                <ItemStyle Wrap="False" />
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="贴子标题">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Common.myStringWidthoutDot(Eval("Title").ToString(),30) %>'></asp:Label>
                                    <br />
                                    <%#FilterLookUrl(Eval("Bid").ToString(),Eval("IsAudited").ToString()) %>
                                    回复(<%#ReturnReplyCounts(Convert.ToInt64(Eval("Bid").ToString()))%>)
                                     <%#Common.FilterIsRecom(Eval("IsRecom").ToString()) %>&nbsp;
                                    <%#Common.FilterIsTop(Eval("IsTop").ToString()) %>&nbsp;
                                    <%#Common.FilterIsTopAll(Eval("IsTop_All").ToString()) %>&nbsp;
                                    
                                    
                                </ItemTemplate>
                                <HeaderStyle Wrap="False" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="子版块">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink5" NavigateUrl='<%#"bbs.aspx?sid="+Eval("Sid") %>' runat="server"><%#Eval("SName") %></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            
                            <asp:BoundColumn DataField="AddDate" HeaderText="发表日期">
                                <HeaderStyle Wrap="False" />
                            </asp:BoundColumn>
                        </Columns>
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        
                    </asp:DataGrid><br />
                <br /><webdiyer:AspNetPager ID="AspNetPager1" CssClass="pagercss"  runat="server" EnableTheming="true" FirstPageText="首页" HorizontalAlign="right" LastPageText="尾页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="DropDownList" PageSize="20" PrevPageText="前一页" ShowPageIndexBox="Always" TextBeforePageIndexBox="转到 " UrlPageIndexName="p" UrlPaging="false" Width="100%">
                    </webdiyer:AspNetPager>
                
                </td>
            </tr>
        </table><br />

                    </div>
                </div>
            </td>
        </tr>
    </table>
        </div>
         <div>
             <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
