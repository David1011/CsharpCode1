<%@ control language="C#" autoeventwireup="true" inherits="LoginUC, House_FreeV2_deploy" %>
<div class="loginbar">
    <div class="bodywidth">
        <div id="loginbar_left">
            <a href='<%=Common.GetSiteUrl() %>'>首页</a>
            <img src='<%=Common.GetSiteUrl()+"/images/dot_black.gif" %>' align="absmiddle" alt="租房" />  
            <a href='<%=FormatUrl.RentHomeUrl() %>'>租房网</a>
            <img src='<%=Common.GetSiteUrl()+"/images/dot_black.gif" %>' align="absmiddle" alt="租房" /> 
		<a href='<%=FormatUrl.SellHomeUrl() %>'>二手房</a>
	<img src='<%=Common.GetSiteUrl()+"/images/dot_black.gif" %>' align="absmiddle" alt="楼盘" /> 
		<a href='<%=FormatUrl.LouPanHomeUrl() %>'>楼盘</a>
		<img src='<%=Common.GetSiteUrl()+"/images/dot_black.gif" %>' align="absmiddle" alt="租房" /> 
		<a href='<%=FormatUrl.AgentHomeUrl() %>'>经纪人</a>
<img src='<%=Common.GetSiteUrl()+"/images/dot_black.gif" %>' align="absmiddle" alt="房产论坛" /> 
		<a href="http://www.0752house.com/bbs">论坛</a>
            
            ·<a href='<%=FormatUrl.GetPwdUrl() %>' target="_blank">忘记密码</a>
        </div>
        <div id="loginbar_right">
               <%=LoginMsg %>
                <asp:TextBox ID="tbAcc" runat="server" CssClass="input" Width="104px" Height="15px" ForeColor="LightGray"  onblur="if(this.value=='')this.value = '用户名'"  onclick="if(this.value=='用户名')this.value = ''" value="用户名" ></asp:TextBox>
                <asp:TextBox ID="tbPwd" runat="server" TextMode="Password" CssClass="input" Width="94px"  Height="15px" ForeColor="#E0E0E0"  onblur="if(this.value=='')this.value = '*****'"  onclick="if(this.value=='*****')this.value = ''" value="*****" ></asp:TextBox>
                <asp:ImageButton ID="btnLogin" ImageUrl="images/login.gif" ImageAlign="absMiddle"  runat=server OnClick="btnLogin_Click1"  OnClientClick="return checkinput()" CausesValidation="False" />
                <asp:ImageButton ID="btnreg" ImageUrl="images/register.gif"  ImageAlign="absMiddle"  runat=server OnClick="btnreg_Click1" CausesValidation="False" />
                

        </div>
    </div>
</div>
