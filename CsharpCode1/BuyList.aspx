<%@ page language="C#" autoeventwireup="true" inherits="BuyList, House_FreeV2_deploy" enableEventValidation="false" %>

<%@ Register Src="Searcher_Sell.ascx" TagName="Searcher_Sell" TagPrefix="uc4" %>

<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>����Ϣ,<%=Common.GetSiteName() %></title>
   <meta name="keywords" content="���ݶ��ַ���,��������Ϣ" />
    <meta name="description" content="��վ�ǻ�����רҵ�ⷿ�����ַ���Ϣ��,ÿ�����������Ϣ,�ڻ��ݵ����нϺõĿڱ�,�������ϲ��.Ϊ����ʮ��רҵ������" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="robots" content="index,follow">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/search.js" language="javascript"></script>
    <script type="text/javascript" src="js/ajax.js" language="javascript"></script>

    <link href="css/menu.css" rel="stylesheet" type="text/css" />
</head>
<body>
        <form id="form2" runat="server">
            <uc8:LoginUC id="LoginUC2" runat="server">
            </uc8:LoginUC>

            <div>
                <uc1:Header ID="Header1" runat="server" />
            </div>
           <div class="columncontain3">

                   
                        <uc4:Searcher_Sell ID="Searcher_Sell1" runat="server" />
                     
               
            </div>
            <div class="columncontain">
                <div class="currnavtop">
                    &nbsp;����λ�ã�
                    <a href='<%=FormatUrl.HomeUrl() %>'>��վ��ҳ</a>&nbsp;>&nbsp;
                    <a href='<%=FormatUrl.SellHomeUrl() %>'>���ַ�</a>&nbsp;>&nbsp;
                    <a href='<%=FormatUrl.BuyHouseHomeUrl() %>'>����Ϣ</a>
                </div>
            </div>
        <!--���ٲ�ѯ-->
         <div class="columncontain">
            <div class="listborder" style="border:0px;">
                <div class="navregion">
               <table width="350px" align="right">
                        <tr>
                        <td class="lineheight">
                            <a href='<%=FormatUrl.AddSellUrl() %>'>
                                <img src="images/pubsellbg.gif" align="absmiddle" />
                            </a>
                        </td>
                        <td class="lineheight">
                             <a href='<%=FormatUrl.AddBuyUrl() %>'>
                                <img src="images/pubqgbg.gif" align="absmiddle" />
                            </a>
                        </td>
                        
                        <td class="lineheight">
                             <a href='<%=FormatUrl.RegisterAgentUrl() %>'>
                                <img src="images/regagentbg.gif" align="absmiddle" />
                            </a>
                        </td>
                        </tr>
                    </table>
                </div>
             </div>
             <div class="columnrightbody">
                <div class="columnright" style="border:0px;">
                    
                </div>
             </div>
         </div> 
        <div class="middlebody">
                <div class="listborderbody">
                <table cellpadding="0" cellspacing="0" border="0" align="left" width="710">
                <tr>
                    <td  class="blueblock" nowrap width="95">
                        <a href='<%=FormatUrl.SellHomeUrl() %>'><b>������</b></a>
                    </td>
                    
                    <td width="615"></td>
                </tr>
               </table>
                <div class="listborder">
                        <asp:DataList ID="dlbuylist"  DataKeyField="QGID" runat="server"  EnableViewState="false" Width="100%">
            <HeaderTemplate>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr >
                    <td class="loginbar2"  nowrap width="200" style="text-align:left;">&nbsp;�󹺱���</td>
                    <td class="loginbar2" nowrap width="70">������</td>
                    <td class="loginbar2"  nowrap width="90">����Ҫ��</td>
                    <td class="loginbar2" nowrap width="70">����Ҫ��</td>
                    <td class="loginbar2" nowrap width="80">�����ۼ�</td>
                    <td class="loginbar2" nowrap width="40">ʱ��</td>
                   
                </tr>
            </HeaderTemplate>
        <ItemTemplate>
            <tr  onmouseover="javascript:this.style.backgroundColor='#f3f3f3';" onmouseout="javascript:this.style.backgroundColor='#FFFFFF';">
            <td class="listitem_title" width="210">
             <a target="_blank" href='<%#FormatUrl.BuyHouseContentUrl(Eval("QGID").ToString())%>'>
                <%#Common.myStringWidthoutDot(Eval("Title").ToString(),18) %>
             </a>
            </td>
            <td class="listitem" width="70">
                <%#Eval("LeiXing")%>
            </td>
            <td class="listitem" width="90">
               <%#Eval("Region")%>
            </td>
             <td class="listitem" width="60">
               <%#Eval("HuXing")%>
            </td>
            
            <td class="listitem" width="80" nowrap>
                <%#Common.FilterSellPrice(Eval("SellPrice").ToString()) %>
            </td>

            <td class="listitem" width="40">
                <%#Eval("AddDate","{0:d}").ToString().Substring(5)%>
            </td>
            
            </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>
        </asp:DataList>
                        <br /><webdiyer:AspNetPager ID="AspNetPager1" CssClass="pagercss"  runat="server" EnableTheming="true" FirstPageText="��ҳ" HorizontalAlign="right" LastPageText="βҳ" NextPageText="��һҳ" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="DropDownList" PageSize="20" PrevPageText="ǰһҳ" ShowPageIndexBox="Always" TextBeforePageIndexBox="ת�� " UrlPageIndexName="p" UrlPaging="false" Width="100%">
                    </webdiyer:AspNetPager>
                        
                </div>
                
                  </div>
            
                <div class="columnrightbody">
                    <div class="columnright">
                        <div class="titlehead"><img src="images/line.gif" align="absmiddle" />&nbsp;��վ�Ƽ�������</div>
                        <div class="adrightitem">
                            <%=V.AgentByRecom(2, false, true, true, true, true, 90, 80, 10, "lineheight2")%>
                        </div>
                    </div>
                    
                </div>
        </div>
        <div>
            <uc2:Footer ID="Footer2" runat="server" />
        </div>
    </form>

</body>
</html>
