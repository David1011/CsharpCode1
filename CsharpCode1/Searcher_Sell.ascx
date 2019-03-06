<%@ control language="C#" autoeventwireup="true" inherits="Searcher_Sell, House_FreeV2_deploy" %>
<div class="homesearchcontain" >
    <div class="searchgifcss"><img src="<%=Common.GetSiteUrl() %>/images/searcdbg.GIF" align="absmiddle" /></div>
    <div class="floatright" style="width:880px;">
        
        <div class="homesearchbody" style="padding-top:20px;">
        
         <div class="lineheight">
    <table>
        <tr>
            <td class="navregion"><b><%=Common.GetCityName() %>二手房搜索：</b></td>
            <td>
                <!--二手房搜索-->
                <asp:DropDownList id="ddlRegion" runat="server"></asp:DropDownList>
                 

                    售价&nbsp;<asp:DropDownList id="ddlsellprice" runat="server" TabIndex="2" Height="22px" Width="92px">
                    <asp:ListItem Value="不限">不限</asp:ListItem>
                    <asp:ListItem Value="30万以内">30万以内</asp:ListItem>
                    <asp:ListItem>50万以内</asp:ListItem>
                    <asp:ListItem>80万以内</asp:ListItem>
                    <asp:ListItem>100万以内</asp:ListItem>
                    <asp:ListItem>120万以内</asp:ListItem>
                    <asp:ListItem>150万以内</asp:ListItem>
                    <asp:ListItem>180万以内</asp:ListItem>
                    <asp:ListItem>220万以内</asp:ListItem>
                    <asp:ListItem>250万以内</asp:ListItem>
                    <asp:ListItem>280万以内</asp:ListItem>
                    <asp:ListItem>320万以内</asp:ListItem>
                    <asp:ListItem>350万以内</asp:ListItem>
                    <asp:ListItem>400万以内</asp:ListItem>
                    <asp:ListItem>450万以内</asp:ListItem>
                    <asp:ListItem>500万以内</asp:ListItem>
                    <asp:ListItem>1000万以上</asp:ListItem>
                    </asp:DropDownList>

                    日期&nbsp;<asp:DropDownList id="ddlselldate" runat="server" TabIndex="3" Height="22px" Width="120px">
                        <asp:ListItem Value="不限">不限</asp:ListItem>
                        <asp:ListItem Value="三天内">三天内</asp:ListItem>
                        <asp:ListItem Value="一周内">一周内</asp:ListItem>
                        <asp:ListItem Value="半个月内">半个月内</asp:ListItem>
                        <asp:ListItem Value="一个月内">一个月内</asp:ListItem>
                     </asp:DropDownList>

                     <asp:TextBox ID="tbsellkeyword" CssClass="input" runat="server" TabIndex=4 Width="120px"></asp:TextBox>
                    <asp:ImageButton ID="sellim" runat="server" ImageUrl="images/search.gif" ImageAlign="AbsMiddle"  CausesValidation="False" OnClick="sellim_Click" TabIndex="5" />
                </td>
        </tr>
    </table>
</div>
        </div>
       
    </div>
</div>
