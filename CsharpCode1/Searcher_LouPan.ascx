<%@ control language="C#" autoeventwireup="true" inherits="Searcher_LouPan, House_FreeV2_deploy" %>

<div class="homesearchcontain" >
    <div class="searchgifcss"><img src="<%=Common.GetSiteUrl() %>/images/searcdbg.GIF" align="absmiddle" /></div>
    <div class="floatright" style="width:880px;">
        
        <div class="homesearchbody" style="padding-top:25px;">
        
         <div class="lineheight">
    <table>
        <tr>
            <td class="navregion"><b><%=Common.GetCityName() %>楼盘搜索：</b></td>
            <td>
		     
		        <asp:TextBox ID="tbkw" CssClass="input" runat="server" TabIndex=4 Width="450px"></asp:TextBox>
        <asp:ImageButton ID="imlp" runat="server" ImageUrl="images/search.gif" ImageAlign="AbsMiddle"  CausesValidation="False" OnClick="imask_Click" TabIndex="5" />
                </td>
        </tr>
    </table>
</div>
        </div>
       
    </div>
</div>
