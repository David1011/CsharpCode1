<%@ page language="C#" autoeventwireup="true" inherits="MyRents, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>�������,�ҵĹ�������</title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="copyright" content="Copyright 2007. 0752house.com All Rights Reserved.">
    <meta name="author" content="0752house">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
     <script src="js/search.js" type="text/javascript"></script>
 

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
            ����λ�ã�
            <a href='<%=FormatUrl.HomeUrl() %>'>��վ��ҳ</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.MyUCenter() %>'>�ҵĹ�������</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.MyAgentCenterRent() %>'>���������Ϣ</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top" ><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
           <td valign="top">
                <div class="border">
                    <div class="titlehead">
                        �����ҷ����ĳ�����Ϣ &nbsp;<span style="font-size:12px;font-weight:normal;">��ʾ��������ķ����⣬�����԰�������Ϊ���ѳɽ������������˾Ϳ��������ĵ绰</span>
                    </div>
                    <div>
                                 <table cellpadding=0 cellspacing=0 border=0 width=100% align=center>
             <tr>
                <td class="msgtip"><%=Tip %>
                    </td>
             </tr>
                                     <tr>
                                         <td align="right">
                                             <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="����ˢ��ѡ�еķ�Դ" />&nbsp;</td>
                                     </tr>
            <tr>
                <td class=rightitem valign="top">
               <asp:DataGrid  HeaderStyle-Wrap="false"  id="dgUsers" runat="server" Width="100%" AutoGenerateColumns="False" PageSize="20" DataKeyField="RentID" HeaderStyle-CssClass="columnHeadCSS" ItemStyle-CssClass="columnItemCSS" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" CellPadding="4" OnDeleteCommand="dgUsers_DeleteCommand" BorderColor="#DEDFDE" OnItemCreated="dgUsers_ItemCreated" BackColor="White" BorderStyle="None" BorderWidth="1px" ForeColor="Black">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#CE5D5A"></SelectedItemStyle>
				<ItemStyle HorizontalAlign="Center" CssClass="columnItemCSS" BackColor="#F7F7DE" Height="20px"></ItemStyle>
				<HeaderStyle Font-Bold="True" HorizontalAlign="Center" ForeColor="White" CssClass="columnHeadCSS"
					BackColor="#6B696B" Wrap="False"></HeaderStyle>
				<FooterStyle BackColor="#CCCC99"></FooterStyle>
				
				<Columns>
				
					<asp:ButtonColumn Text="ɾ��" CommandName="Delete">
						<ItemStyle ForeColor="Red" Wrap="False"></ItemStyle>
					</asp:ButtonColumn>
                   
					<asp:TemplateColumn HeaderText="����">
						<HeaderStyle Wrap="False"></HeaderStyle>
						<ItemStyle Wrap="False" HorizontalAlign="Left"></ItemStyle>
						<ItemTemplate>
							<asp:HyperLink id=HyperLink1 runat="server" Text='<%#Common.myStringWidthoutDot(Eval("Title").ToString(),25) %>' Target="_blank" NavigateUrl='<%#FormatUrl.RentContentUrl(Eval("RentID").ToString()) %>'>
							</asp:HyperLink>
							<span style="color:Blue;"><%#FilterInfoTop(Eval("IsTop").ToString(),Eval("IsTopEndDate").ToString()) %></span>
						    <span style="color:Blue;"><%#FilterInfoRecom(Eval("IsRecom").ToString(),Eval("IsRecomEndDate").ToString()) %></span>
						    <span style="color:gray;"><%#FilterCom(Eval("RentID").ToString()) %></span>
						</ItemTemplate>
					</asp:TemplateColumn>
                    <asp:BoundColumn DataField="HuXing" HeaderText="����"></asp:BoundColumn>
                    <asp:BoundColumn DataField="RentPrice" HeaderText="���(Ԫ)">
                        <HeaderStyle Wrap="False" />
                    </asp:BoundColumn>
					<asp:BoundColumn DataField="AddDate" HeaderText="��������">
						<HeaderStyle Wrap="False"></HeaderStyle>
					</asp:BoundColumn>
					 <asp:TemplateColumn>
                    
                        <ItemTemplate>
                            <a  href='<%#FormatUrl.AddRentUrl()+"?ID="+Eval("RentID") %>'><u>�޸�</u></a><br />
                            
                        </ItemTemplate>
                        <ItemStyle Wrap="False" />
                    </asp:TemplateColumn>
					
                    <asp:TemplateColumn>
                        <ItemTemplate>
                            <%#FilterSelled(Eval("IsHired").ToString(),Eval("RentID").ToString()) %>
                            <%#FilterRecom(Eval("IsAgentRecom").ToString(),Eval("RentID").ToString()) %>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="ˢ��">
                    <HeaderTemplate><input id="chkSelectAll" name="chkSelectAll" type="checkbox" onclick="ChooseAll()"></HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </ItemTemplate>
                     </asp:TemplateColumn>
                     
				</Columns>
				<PagerStyle HorizontalAlign="Right" ForeColor="Black" BackColor="#F7F7DE" PageButtonCount="20" NextPageText="��һҳ" PrevPageText="��һҳ" Mode="NumericPages" Font-Size="Medium"></PagerStyle>
                                                 <AlternatingItemStyle BackColor="White" />
			</asp:DataGrid><br />
                <br /><webdiyer:AspNetPager ID="AspNetPager1" CssClass="pagercss"  runat="server" EnableTheming="true" FirstPageText="��ҳ" HorizontalAlign="right" LastPageText="βҳ" NextPageText="��һҳ" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="DropDownList" PageSize="20" PrevPageText="ǰһҳ" ShowPageIndexBox="Always" TextBeforePageIndexBox="ת�� " UrlPageIndexName="p" UrlPaging="false" Width="100%">
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
