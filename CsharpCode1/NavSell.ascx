<%@ control language="C#" autoeventwireup="true" inherits="NavSell, House_FreeV2_deploy" %>
<div class="titlehead">
    <img src="images/xiaoxi.gif" align="absmiddle" />&nbsp;买房快速通道
</div>

<div class="navregion">
按区域：
<asp:datalist id="dlregion" Runat="server"  ItemStyle-CssClass="Padding" RepeatLayout="Flow" RepeatDirection="Horizontal"
				ItemStyle-HorizontalAlign="Center" EnableViewState="false">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
<ItemTemplate>
    <a  href='<%#FormatUrl.SellListByRegionUrl(Eval("RegionID").ToString()) %>'>
    <%#DataBinder.Eval(Container.DataItem,"RegionName")%>
    </a>
</ItemTemplate>
</asp:datalist>
</div>

<div class="navregion">
    按户型：
    <a href='<%=FormatUrl.SellListByHouseHoldOneUrl() %>' class="black" >一房</a>&nbsp;
    <a href='<%=FormatUrl.SellListByHouseHoldTwoUrl() %>' class="black" >两房</a>&nbsp;
    <a href='<%=FormatUrl.SellListByHouseHoldThreeUrl() %>' class="black" >三房</a>&nbsp;
    <a href='<%=FormatUrl.SellListByHouseHoldFourUrl() %>' class="black" >四房</a>&nbsp;
    <a href='<%=FormatUrl.SellListByHouseHoldFiveUrl() %>' class="black" >五房</a>&nbsp;
    <a href='<%=FormatUrl.SellListByHouseHoldFsUrl() %>' class="black" >复式楼</a>
</div>
<div class="navregion">
按售价：
<a href='<%=FormatUrl.SellListByPrice35Url() %>' class="black" >35万以下</a>&nbsp;
<a href='<%=FormatUrl.SellListByPrice3550Url() %>' class="black" >35-50万</a>&nbsp;
<a href='<%=FormatUrl.SellListByPrice5080Url() %>' class="black" >50-80万</a>&nbsp;
<a href='<%=FormatUrl.SellListByPrice80120Url() %>' class="black" >80-120万</a>&nbsp; 
<a href='<%=FormatUrl.SellListByPrice120200Url() %>' class="black" >120-200万</a>&nbsp; 
<a href='<%=FormatUrl.SellListByPrice20010000Url() %>' class="black" >200万以上</a>&nbsp; 
</div>

