<%@ page language="C#" autoeventwireup="true" inherits="MyQiuZus, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>我的求租信息,我的管理中心</title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
  <meta name="copyright" content="Copyright 2007. 0752house.com All Rights Reserved.">
    <meta name="author" content="0752house">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
     <script src="js/search.js" language="javascript"></script>
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
            <a href='<%=FormatUrl.MyAgentCenterQiuZu() %>'>管理求租信息</a>
        </div>
       
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top"><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
            <td valign="top">
                <div class="border">
                    <div class="titlehead">
                        管理我发布的求租信息
                    </div>
                    <div>
              <table cellpadding=0 cellspacing=0 border=0 width=100% align=center>
             <tr>
                <td class="msgtip"><%=Tip %>
                    </td>
             </tr>
            <tr>
                <td class=rightitem valign="top">
               <asp:DataGrid  HeaderStyle-Wrap="false"  id="dgUsers" runat="server" Width="100%" AutoGenerateColumns="False" PageSize="20" DataKeyField="QZID" HeaderStyle-CssClass="columnHeadCSS" ItemStyle-CssClass="columnItemCSS" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" CellPadding="4" OnDeleteCommand="dgUsers_DeleteCommand" BorderColor="#DEDFDE" OnItemCreated="dgUsers_ItemCreated" BackColor="White" BorderStyle="None" BorderWidth="1px" ForeColor="Black">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#CE5D5A"></SelectedItemStyle>
				<ItemStyle HorizontalAlign="Center" CssClass="columnItemCSS" BackColor="#F7F7DE" Height="20px"></ItemStyle>
				<HeaderStyle Font-Bold="True" HorizontalAlign="Center" ForeColor="White" CssClass="columnHeadCSS"
					BackColor="#6B696B" Wrap="False"></HeaderStyle>
				<FooterStyle BackColor="#CCCC99"></FooterStyle>
				<Columns>
					<asp:ButtonColumn Text="删除" CommandName="Delete">
						<ItemStyle ForeColor="Red" Wrap="False"></ItemStyle>
					</asp:ButtonColumn>
                    <asp:TemplateColumn>
                        <ItemTemplate>
                            <a  href='<%#FormatUrl.AddQiuZuUrl()+"?ID="+Eval("QZID") %>'>修改</a>
                        </ItemTemplate>
                        <ItemStyle Wrap="False" />
                    </asp:TemplateColumn>
					<asp:TemplateColumn HeaderText="标题">
						<HeaderStyle Wrap="False"></HeaderStyle>
						<ItemStyle Wrap="False" HorizontalAlign="Left"></ItemStyle>
						<ItemTemplate>
							<asp:HyperLink id=HyperLink1 runat="server" Text='<%#Common.myStringWidthoutDot(Eval("Title").ToString(),15) %>' Target="_blank" NavigateUrl='<%#FormatUrl.QiuZuContentUrl(Eval("QZID").ToString()) %>'>
							</asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateColumn>
                    <asp:BoundColumn DataField="HuXing" HeaderText="户型"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="最高租金(元)">
                        <ItemTemplate>
                            <%#Common.FilterPrice(Eval("RentPrice").ToString()) %>
                        </ItemTemplate>
                    </asp:TemplateColumn>
					<asp:BoundColumn DataField="AddDate" HeaderText="发布日期">
						<HeaderStyle Wrap="False"></HeaderStyle>
					</asp:BoundColumn>
					
				</Columns>
				<PagerStyle HorizontalAlign="Right" ForeColor="Black" BackColor="#F7F7DE" PageButtonCount="20" NextPageText="下一页" PrevPageText="上一页" Mode="NumericPages" Font-Size="Medium"></PagerStyle>
                                                 <AlternatingItemStyle BackColor="White" />
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
