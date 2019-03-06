<%@ control language="C#" autoeventwireup="true" inherits="AskClassList, House_FreeV2_deploy" %>
 <div>
    
    
    <div class="adrightitem">
        <asp:DataList ID="dlclass" ItemStyle-CssClass="font12" runat="server" RepeatColumns="10" EnableViewState="false" RepeatDirection="horizontal" >
            <ItemTemplate>
                <div>
                &nbsp;<span style="color:white;">·</span>&nbsp;
                    <a style="color:white;" href ='<%#FormatUrl.AskListByCid(Convert.ToInt32(Eval("ClassID").ToString())) %>'>
                        <%#Eval("ClassName") %>
                    </a>
                
                </div>
            </ItemTemplate>
        </asp:DataList>
   
    </div>
</div>
