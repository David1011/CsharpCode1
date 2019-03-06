<%@ control language="C#" autoeventwireup="true" inherits="Search_Rent, House_FreeV2_deploy" %>


<div class="homesearchcontain" >
    <div class="searchgifcss"><img src="<%=Common.GetSiteUrl() %>/images/searcdbg.GIF" align="absmiddle" /></div>
    <div class="floatright" style="width:880px;">
        
        <div class="homesearchbody" style="padding-top:24px;">
        
         <div class="lineheight">
    <table>
        <tr>
            <td class="navregion"><b>租房搜索</b></td>
            <td>
		    <!--租房搜索-->
		        <asp:DropDownList id="ddlRegion" runat="server"></asp:DropDownList>
			    &nbsp;月租
				    <asp:DropDownList id="ddlEndPrice" runat="server" TabIndex="2">
					    <asp:ListItem Value="不限">不限</asp:ListItem>
					    <asp:ListItem Value="400以内">400以内</asp:ListItem>
					    <asp:ListItem Value="600以内">600以内</asp:ListItem>
					    <asp:ListItem Value="800以内">800以内</asp:ListItem>
					    <asp:ListItem Value="1000以内">1000以内</asp:ListItem>
					    <asp:ListItem Value="1200以内">1200以内</asp:ListItem>
					    <asp:ListItem Value="1400以内">1400以内</asp:ListItem>
					    <asp:ListItem Value="1600以内">1600以内</asp:ListItem>
					    <asp:ListItem Value="1800以内">1800以内</asp:ListItem>
					    <asp:ListItem Value="2000以内">2000以内</asp:ListItem>
					    <asp:ListItem Value="2200以内">2200以内</asp:ListItem>
					    <asp:ListItem Value="2400以内">2400以内</asp:ListItem>
					    <asp:ListItem Value="2600以内">2600以内</asp:ListItem>
					    <asp:ListItem Value="2800以内">2800以内</asp:ListItem>
					    <asp:ListItem Value="3000以内">3000以内</asp:ListItem>
					    <asp:ListItem Value="3500以内">3500以内</asp:ListItem>
					    <asp:ListItem Value="4000以内">4000以内</asp:ListItem>
					    <asp:ListItem Value="4500以内">4500以内</asp:ListItem>
					    <asp:ListItem Value="5000以内">5000以内</asp:ListItem>
					    <asp:ListItem Value="5000以上">5000以上</asp:ListItem>
				    </asp:DropDownList>&nbsp;
                    <asp:DropDownList ID="ddlHeZu" runat="server" TabIndex="3">
                        
                        <asp:ListItem>整租</asp:ListItem>
                        <asp:ListItem>合租</asp:ListItem>
                    </asp:DropDownList>
                    来源
                    <asp:DropDownList ID="ddlPersonOrAgent" runat="server" TabIndex="4">
                       
                        <asp:ListItem Value="false">个人</asp:ListItem>
                        <asp:ListItem Value="true">经纪人</asp:ListItem>
                    </asp:DropDownList>
				    <asp:DropDownList id="ddlAddedDate" runat="server" TabIndex="5">
					    <asp:ListItem Value="不限">不限</asp:ListItem>
					    <asp:ListItem Value="三天内">三天内</asp:ListItem>
					    <asp:ListItem Value="一周内">一周内</asp:ListItem>
					    <asp:ListItem Value="半个月内" Selected=True>半个月内</asp:ListItem>
					    <asp:ListItem Value="一个月内">一个月内</asp:ListItem>
				    </asp:DropDownList>
                    <asp:TextBox ID="tbKeyword" runat="server" CssClass="input" Width="120px" TabIndex=6 ></asp:TextBox>
			        <asp:ImageButton ID="btnFind" runat="server" ImageUrl="images/search.gif" ImageAlign="AbsMiddle"  CausesValidation="False" OnClick="btnFind_Click" TabIndex="7" />
                </td>
        </tr>
    </table>
</div>
        </div>
       
    </div>
</div>
