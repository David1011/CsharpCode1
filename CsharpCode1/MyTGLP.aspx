<%@ page language="C#" autoeventwireup="true" inherits="MyTGLP, House_FreeV2_deploy" enableEventValidation="false" %>

<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>我的团购信息,我的管理中心</title>
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
            您的位置：
            <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.MyUCenter() %>'>我的管理中心</a>&nbsp;>&nbsp;
            我登记过的团购信息
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top"><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
            <td valign="top">
                <div class="border">
                    <div class="titlehead">
                        我登记过的团购信息
                    </div>
                    <div>
              <table cellpadding=0 cellspacing=0 border=0 width=100% align=center>
            
            <tr>
                <td class=rightitem valign="top">
               <asp:DataGrid ID="dg" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" Width=100% DataKeyField="TGID"  OnPageIndexChanged="dg_PageIndexChanged" PageSize="30">
                        <FooterStyle BackColor="#CCCC99" />
                        <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" Mode="NumericPages"
                            PageButtonCount="20" />
                        <AlternatingItemStyle BackColor="White" />
                        <ItemStyle BackColor="#F7F7DE" />
                        <Columns>
                            <asp:TemplateColumn HeaderText="楼盘名称">
                                <ItemTemplate>
                                    <asp:HyperLink Target="_blank" ID="HyperLink233" runat="server" NavigateUrl='<%#"../ShowHouse.aspx?HouseID="+Eval("LPID") %>'>
                                        <%#Eval("LPName") %>
                                    </asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn DataField="UName" HeaderText="姓名">
                                <HeaderStyle Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="HuXing" HeaderText="户型">
                                <HeaderStyle Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="UTel" HeaderText="电话"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="类型">
                                <ItemTemplate>
                                    <%#FilterType(Eval("UType").ToString()) %>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            
                            <asp:BoundColumn DataField="AddDate" HeaderText="登记日期">
                                <HeaderStyle Wrap="False" />
                            </asp:BoundColumn>
                            
                        </Columns>
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        
                    </asp:DataGrid><br />
                
                
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
