<%@ control language="C#" autoeventwireup="true" inherits="Searcher_Agent, House_FreeV2_deploy" %>

<div class="homesearchcontain" >
    <div class="searchgifcss"><img src="<%=Common.GetSiteUrl() %>/images/searcdbg.GIF" align="absmiddle" /></div>
    <div class="floatright" style="width:880px;">
        
        <div class="homesearchbody" style="padding-top:12px;">
        
         <div class="lineheight">
    <table>
    <tr>
    <td height="20"></td>
    </tr>
        <tr>
            <td class="navregion"><b>经纪人搜索：</b></td>
            <td>
		    <!--租房搜索-->
		        <asp:TextBox ID="tbkw" CssClass="input" runat="server" TabIndex=4 Width="378px"></asp:TextBox>
        <asp:ImageButton ID="imagent" runat="server" ImageUrl="images/search.gif" ImageAlign="AbsMiddle"  CausesValidation="False" OnClick="imagent_Click" TabIndex="5" />
                </td>
        </tr>
    </table>
</div>
        </div>
       
    </div>
</div>
