<%@ control language="C#" autoeventwireup="true" inherits="Loging, House_FreeV2_deploy" %>
<div>
    <table width="100%">
        <tr>
            <td align="right">帐号：</td>
            <td><asp:TextBox ID="tbname" runat=server Width="155px"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td align="right">密码：</td>
            <td><asp:TextBox ID="tbpwd" TextMode=password runat=server Width="155px"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td></td>
            <td><asp:ImageButton ID="btnlogin" runat="server" ImageUrl="images/loginpagebutton.GIF" ImageAlign=AbsMiddle OnClick="btnlogin_Click" /></td>
            
        </tr>
        <tr bgcolor="#f6f6f6">
            <td align="right">
                <a href='<%=FormatUrl.RegisterUrl() %>'><img src="images/reg.gif" align=absmiddle /></a>
             </td>
            <td >
            <a href='<%=FormatUrl.RegisterPersonUrl() %>'>个人用户</a>
            <a href='<%=FormatUrl.RegisterAgentUrl() %>'>中介用户</a>
            <a href='<%=FormatUrl.GetPwdUrl() %>'>忘记密码</a>
            </td>
        </tr>
    </table>
</div>