<%@ control language="C#" autoeventwireup="true" inherits="AskFinished, House_FreeV2_deploy" %>
    <div class="titlehead"><img src="images/line.gif" align="absmiddle" />&nbsp;已解决的问题</div>
    <div class="adrightitem">
        <asp:DataList ID="dlhot" EnableViewState="false" ItemStyle-CssClass="font14item" runat="server" RepeatColumns="1">
            <ItemTemplate>
                <div>
                    ·
                    <a title='<%#Eval("Title") %>' href ='<%#FormatUrl.AskContentUrl(Eval("NewsID").ToString()) %>' target="_blank">
                        <%#Common.myStringWidthoutDot(Eval("Title").ToString(),15) %>
                    </a>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
