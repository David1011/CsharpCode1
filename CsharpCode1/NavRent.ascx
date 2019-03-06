<%@ control language="C#" autoeventwireup="true" inherits="NavRent, House_FreeV2_deploy" %>
<div class="titlehead">
    <img src="images/xiaoxi.gif" align="absmiddle" />&nbsp;租房快速通道
</div>

<div class="navregion">
按区域：
<asp:datalist id="dlregion" Runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal"
				ItemStyle-HorizontalAlign="Center" EnableViewState="false">
						<ItemStyle HorizontalAlign="Center"></ItemStyle>
		<ItemTemplate>
				<a  href='<%#FormatUrl.RentListByRegionUrl(Eval("RegionID").ToString()) %>'>
					<%#DataBinder.Eval(Container.DataItem,"RegionName")%>
				</a>
	    </ItemTemplate>
  </asp:datalist>
  </div>

<div class="navregion">
按租价：
<A href='<%=FormatUrl.RentListByPrice500Url() %>' class="black" >500以内</A>&nbsp; 
<A href='<%=FormatUrl.RentListByPrice5001000Url() %>' class="black" >500－1000</A>&nbsp;
<A href='<%=FormatUrl.RentListByPrice10001500Url() %>' class="black" >1000－1500</A>&nbsp; 
<A href='<%=FormatUrl.RentListByPrice15002000Url() %>' class="black" >1500－ 2000</A>&nbsp; 
<A href='<%=FormatUrl.RentListByPrice20002500Url() %>' class="black" >2000－2500</A>&nbsp; 
<A href='<%=FormatUrl.RentListByPrice25003000Url() %>' class="black" >2500－3000</A>&nbsp;
 <A href='<%=FormatUrl.RentListByPrice3000Url() %>' class="black" >3000以上</A>
 </div>

