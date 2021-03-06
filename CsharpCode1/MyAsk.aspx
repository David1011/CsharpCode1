<%@ page language="C#" autoeventwireup="true" inherits="MyAsk, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>我的问吧,我的管理中心</title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="copyright" content="Copyright 2007. 0752house.com All Rights Reserved.">
    <meta name="author" content="0752house">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />

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
            <a href="MyAsk.aspx">我的问吧</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top"><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
            <td valign="top">
                <div class="border">
                    <div class="titlehead">
                        我的问吧
                    </div>
             <div>
             <table cellpadding=0 cellspacing=0 border=0 width=100% align=center>
             <tr>
                <td class="msgtip"><%=Tip %>
                    </td>
             </tr>
                 <tr>
                     <td class="msgtip">
                         <asp:Button ID="Button1" runat="server" Text="标志选中的问题为已解决" OnClick="Button1_Click" />&nbsp;
                         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="标志选中的问题为未解决" /></td>
                 </tr>
            <tr>
                <td class=rightitem valign="top">
                <asp:DataGrid id="dgUsers" runat="server" Width="98%" CellPadding="4" AutoGenerateColumns="False"
								PageSize="20" DataKeyField="NewsID" OnDeleteCommand="dgUsers_DeleteCommand" OnItemCreated="dgUsers_ItemCreated" ForeColor="#333333">
								<SelectedItemStyle Font-Bold="True" ForeColor="#333333" BackColor="#D1DDF1"></SelectedItemStyle>
								<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
								<ItemStyle BackColor="#EFF3FB" Height="20px"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#507CD1"></HeaderStyle>
								<FooterStyle ForeColor="White" BackColor="#507CD1" Font-Bold="True"></FooterStyle>
								<Columns>
									<asp:ButtonColumn Text="删除" CommandName="Delete">
										<ItemStyle Wrap="False" ForeColor="Red"></ItemStyle>
									</asp:ButtonColumn>
									<asp:TemplateColumn HeaderText="问题">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink22" Target="_blank"  NavigateUrl='<%#FormatUrl.AskContentUrl(Eval("NewsID").ToString())%>' runat="server"><%#Common.myStringWidthDot(Eval("Title").ToString(),25) %></asp:HyperLink>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" />
                                        <HeaderStyle Wrap="False" />
                                    </asp:TemplateColumn>

									<asp:BoundColumn DataField="AddDate" DataFormatString="{0:d}" HeaderText="提问日期">
                                        <ItemStyle Wrap="False" />
                                        <HeaderStyle Wrap="False" />
                                    </asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="状态">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%#FilterIsFinished(Eval("IsFinish").ToString()) %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                                        <ItemStyle HorizontalAlign="Center" Wrap="False" />
                                    </asp:TemplateColumn>
                                     <asp:TemplateColumn HeaderText="标志">
                                    <ItemTemplate>
                                        <asp:RadioButton ID="RadioButton1" runat="server" />
                                    </ItemTemplate>
                             </asp:TemplateColumn>

								</Columns>
								<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="#F3F3F3" PageButtonCount="20"
									Mode="NumericPages"></PagerStyle>
                           <EditItemStyle BackColor="#2461BF" />
							</asp:DataGrid>
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
