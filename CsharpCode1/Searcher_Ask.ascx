<%@ control language="C#" autoeventwireup="true" inherits="Searcher_Ask, House_FreeV2_deploy" %>

<div class="homesearchcontain" >
    <div class="searchgifcss"><img src="<%=Common.GetSiteUrl() %>/images/searcdbg.GIF" align="absmiddle" /></div>
    <div class="floatright" style="width:880px;">
        
        <div class="homesearchbody" style="padding-top:20px;">
        
         <div class="lineheight">
    <table>
        <tr>
            <td class="navregion"><b><%=Common.GetCityName() %>房产资讯搜索：</b></td>
            <td>
		   <asp:TextBox ID="tbkw" CssClass="input" runat="server" TabIndex=4 Width="393px" Height="20px"></asp:TextBox>
            <asp:ImageButton ID="imask" runat="server" ImageUrl="images/search.gif" ImageAlign="AbsMiddle"  CausesValidation="False"  TabIndex="5" OnClick="imask_Click" />
                </td>
        </tr>
    </table>
</div>
        </div>
       
    </div>
</div>
