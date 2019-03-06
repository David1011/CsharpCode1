<%@ control language="C#" autoeventwireup="true" inherits="UserComments, House_FreeV2_deploy" %>
<div class="twocolumnleftbody">
   <div class="titlehead">网友留言&nbsp;&nbsp;(<span style="font-size:12px;font-weight:normal;">本站注：以下为网友个人看法，并不代表本站同意其观点．本站不对其言行负任何责任．</span>)</div>
    <div class="intro">
        <asp:DataList  ID="dlComments" runat="server"   RepeatDirection="vertical" EnableViewState="false" Width="98%">
            <ItemTemplate>
                <b style="background:#dedede;color:#dedede;"><%#Container.ItemIndex+1%></b>
        	    <%#Eval("UserIP") %>&nbsp;<span style="color:Gray">(<%#Eval("AddDate") %>)</span>
        	    <br />
        	    <b style="background:#dedede;color:#dedede;"><%#Container.ItemIndex+1%></b>
                <%#DataBinder.Eval(Container.DataItem,"UserContent")%>
                <br /><br />
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div>
        <div class="titlehead">我要说两句</div>
        <table id="Table8" border="0" cellpadding="0" cellspacing="0" width="700">               
                <tr>
                    <td width="350" class="intro"> 
                        <asp:TextBox  ID="tbcommcontent" runat="server" BorderStyle="Groove" TextMode="MultiLine"
                            Width="350" BackColor="#f1f1f1" Height="147px"></asp:TextBox>
                        <br />
                        <span style="color: #808080">声明：留言请勿发表任何含有攻击性，违法性等的不良语言，否则后果由发表留言者自负，本站不承担任何责任</span>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbcommcontent"
                            Display="Dynamic" ErrorMessage="请输入评论内容" CssClass="validatecss" Font-Bold="True"></asp:RequiredFieldValidator><br />
                        <asp:Button ID="btncomOK" runat="server" Text="提交评论" Width="112px" OnClick="btncomOK_Click" Height="26px" /></td>
                        <td>
                            
                        </td>
                </tr>
           
        </table>
    </div>
</div>