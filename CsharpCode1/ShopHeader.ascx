<%@ control language="C#" autoeventwireup="true" inherits="ShopHeader, House_FreeV2_deploy" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
 <div>
        <uc8:LoginUC id="LoginUC1" runat="server">
        </uc8:LoginUC>
   </div>
<div class="columncontain3">

    <div class="shophead">
        <div id="toumin">
            <%=RealName %>的网络店铺
            <br />
            <span style="padding-left:100px;"><%=Address %></span>
        </div>
        
    </div>
    <div class="shopmenu">
        <ul>
            <li><a href='<%=UserID %>'>店铺首页</a></li>
            <li><a href='<%=MySell %>'>二手房</a></li>
            <li><a href='<%=MyRent %>'>出租房</a></li>
            <li><a href='<%=MyWT %>'>委托服务</a></li>
            <li><a href='<%=MyMsg %>'>给我留言</a></li>
        </ul>
    </div>
</div>
