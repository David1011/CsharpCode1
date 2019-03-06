<%@ control language="C#" autoeventwireup="true" inherits="AskGetUserHot, House_FreeV2_deploy" %>
    <div class="titlehead"><img src="images/line.gif" align="absmiddle" />&nbsp;能人排行榜</div>
    <div class="">
        <asp:DataList ID="dlhot" EnableViewState="false" ItemStyle-CssClass="font14dotitem" runat="server"  Width="100%">
            <ItemTemplate>
                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                   <tr>
                    <td class="numberbg" width="13" align="center"><%#Container.ItemIndex+1 %></td>
                    <td width="90"  align="center">
                        <a href ='<%#FormatUrl.AskListByUser(Eval("UserID").ToString()) %>'>
                            <%#Common.FilterRealName(Eval("RealName").ToString(), Eval("LoginAcc").ToString())%>
                        </a>
                    </td>
                    <td width="60"  align="center"><%#FilterEnterShop(Eval("UserID").ToString()) %></td>
                    <td width="50"  align="center">
                        ↑<%#Eval("AskScore") %>
                    </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
