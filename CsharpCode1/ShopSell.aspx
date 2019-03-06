<%@ page language="C#" autoeventwireup="true" inherits="ShopSell, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="ShopHeader.ascx" TagName="ShopHeader" TagPrefix="uc1" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="ShopRight.ascx" TagName="ShopRight" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=PageTitle %>,<%=Common.GetCityName() %>�н�����,<%=Common.GetCityName() %>�����н�</title>
   <meta name="keywords" content="�����н�����,���ݷ����н�" />
    <meta name="description" content="�����н�����,���ݷ����н�" />
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
     <uc1:ShopHeader ID="ShopHeader2" runat="server" />
    <div class="columncontain">
        <div class="columnrightbody" style="float:left;">
            <uc3:ShopRight id="ShopRight2" runat="server" />
         </div>
        <div class="twocolumnleft"  style="float:right;">
            <div class="titlehead">���¶��ַ�,����<%=SellCounts %>��</div>
                <div class="bgwhite">
                    <asp:DataList ID="dlnewsell" DataKeyField="SellID" runat="server"  EnableViewState="false" Width="100%">
                            <HeaderTemplate>
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                <tr >
                                    <td  class="grayhead" nowrap width="70">��ҵ����</td>
                                    <td  class="grayhead" width="82">��Ƭ</td>
                                    <td class="grayhead"  nowrap width="250" style="text-align:left;">����</td>
                                    <td class="grayhead" nowrap width="70">���</td>
                                    <td class="grayhead" nowrap width="70">���</td>
                                    <td class="grayhead" nowrap width="50">�ۼ�</td>
                                    <td class="grayhead" nowrap width="40">ʱ��</td>
                                </tr>
                            </HeaderTemplate>
                        <ItemTemplate>
                            <tr  onmouseover="javascript:this.style.backgroundColor='#f3f3f3';" onmouseout="javascript:this.style.backgroundColor='#FFFFFF';">
                            <td class="listitem" align="center" width="70">
                                <a  href='<%#FormatUrl.SellListByRegionUrl(Eval("RegionID").ToString())%>'>
                                    <%#Eval("RegionName") %>
                               </a><br />
                               <%#Eval("QuarterName") %>
                            </td>
                            <td class="listitem" width="82">
                                <a target="_blank" href='<%#FormatUrl.SellContentUrl(Convert.ToInt64(Eval("SellID")))%>'>
                                    <img class="listpic" src='<%#Common.FilterInfoPic(Eval("SPic").ToString()) %>' align="absmiddle" />
                                 </a>
                            </td>
                            <td class="listitem_title" width="250">
                                <%#FilterTitle(Eval("SellID").ToString(),Eval("Title").ToString(),Eval("FCZ").ToString(),Eval("HouseAge").ToString()) %>
                            </td>
                             <td class="listitem" width="70">
                               <%#Convert.ToString(DataBinder.Eval(Container.DataItem,"HuXing"))%>
                            </td>
                            <td class="listitem" width="70">
                                <%#Common.FilterHouseSize(Eval("HouseSize").ToString()) %>
                            </td>
                            <td class="listitem" width="50">
                                <%#Common.FilterSellPrice(Eval("SellPrice").ToString()) %>
                            </td>

                            <td class="listitem" width="40">
                                <%#Eval("AddDate","{0:d}").ToString().Substring(5)%>
                            </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate></table></FooterTemplate>
                        </asp:DataList>
                   <br /><webdiyer:AspNetPager ID="AspNetPager1" CssClass="pagercss"  runat="server" EnableTheming="true" FirstPageText="��ҳ" HorizontalAlign="center" LastPageText="βҳ" NextPageText="��һҳ" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="DropDownList" PageSize="21" PrevPageText="ǰһҳ" ShowPageIndexBox="Always" TextBeforePageIndexBox="ת�� " UrlPageIndexName="p" UrlPaging="false" Width="100%">
                    </webdiyer:AspNetPager>
                </div>
            
        </div>
         
    </div>
    <div>
        <uc2:Footer ID="Footer2" runat="server" />
    </div>
    </form>


</body>
</html>
