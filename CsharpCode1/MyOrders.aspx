<%@ page language="C#" autoeventwireup="true" inherits="MyOrders, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="AgentCenterLeft.ascx" TagName="AgentCenterLeft" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>�ҷ���������Ϣ,�ҵĹ�������,���ݷ�����</title>
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
            ����λ�ã�
            <a href='<%=FormatUrl.HomeUrl() %>'>��վ��ҳ</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.MyUCenter() %>'>�ҵĹ�������</a>&nbsp;>&nbsp;
            <a href="MyOrders.aspx">�ҵĶ���</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top"><uc3:AgentCenterLeft ID="AgentCenterLeft1" runat="server" /></td>
            <td valign="top">
                <div class="border">
                    <div class="titlehead">
                        �ҵĶ���
                    </div>
                    <div>
               <table cellpadding=0 cellspacing=0 border=0 width=100% align=center>
             <tr>
                <td class="msgtip">
                    </td>
             </tr>
             <tr>
                <td>
                     <table width="100%">
                    <tr>
                        <td colspan="2" style="border-top: #ccc 1px dotted">
                            <a href="MyOrders.aspx?action=nopay"><u>δ֧��</u></a>
                            &nbsp;
                            <a href="MyOrders.aspx?action=pay"><u>��֧��</u></a>
                        </td>
                    </tr>
                </table>
                </td>
             </tr>
            <tr>
                <td class=rightitem valign="top">
              <asp:DataGrid ID="dg" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" Width=100% OnPageIndexChanged="dg_PageIndexChanged" PageSize="20">
                        <FooterStyle BackColor="#CCCC99" />
                        <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" Mode="NumericPages"
                            PageButtonCount="20" />
                        <AlternatingItemStyle BackColor="White" />
                        <ItemStyle BackColor="#F7F7DE" />
                        <Columns>
                            <asp:BoundColumn DataField="OrderNumber"  HeaderText="�������">
                                <HeaderStyle Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="TotalPrice" ItemStyle-ForeColor=red HeaderText="�ܼ�(Ԫ)">
                                <HeaderStyle Wrap="False" />
                            </asp:BoundColumn>
                            
                            <asp:BoundColumn DataField="AddDate" HeaderText="�µ�����">
                                <HeaderStyle Wrap="False" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="OrderIntro" HeaderText="��������"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="֧�����">
                                <ItemTemplate>
                        
                                    <asp:HyperLink ID="hlpay" runat=server NavigateUrl='<%#FilterPayUrl(Eval("Oid").ToString(),Eval("IsPayed").ToString()) %>' Text='<%#FilterIsPay(DataBinder.Eval(Container.DataItem,"IsPayed").ToString()) %>'></asp:HyperLink>
                                    
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        
                    </asp:DataGrid>
                
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
