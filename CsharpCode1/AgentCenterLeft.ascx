<%@ control language="C#" autoeventwireup="true" inherits="AgentCenterLeft, House_FreeV2_deploy" %>
<div class="border">
<div class="titlehead">
    我的信息
</div>

<table class="navregion" cellpadding="0" cellspacing="3" border="0">
    <tr>
        <td align="center" valign="top"> <img src='<%=SPic %>' class="userpic2" align="absmiddle"/>
        <div><%=LoadEditPhotoUrl %></div>
        </td>
        <td valign="top">
        <%=RealName%><br />
        <%=Degree %><br />

        <a href='<%=FormatUrl.UpdateLoginPwdUrl() %>'>修改密码</a><br />
       <a href="MyCenter_EditorUserInfo.aspx"><img src="images/editinfo.gif" align="absmiddle" /></a>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <%=Score %><br />
            <%=Counts %><br />
            <%=LastLoginIP%><br />
            <%=LastLoginDate %><br />
            <%=RecomShop %>
        </td>
    </tr>
       

 </table>
</div>
<div class="paddingtb"></div>
<div class="border">

<div class="titlehead">
    信息管理
</div>
<table  width="100%" >
    <tr>
        <td class="dot" align="center"><a href='<%=FormatUrl.MyUCenter() %>' style="color:Red;">后台管理首页</a></td>
        <td class="dot" align="left"><a href="MyTGLP.aspx">楼盘团购信息</a></td>
    </tr>
       <tr>
        <td class="dot" align="center" bgcolor="#f6f6f6"><a href="MyOrders.aspx"><img src="images/order.gif" />&nbsp;我的订单</a>&nbsp;(<%=OrderCounts %>)</td>
        <td class="dot" align="left" bgcolor="#f6f6f6"><a href="users_order.aspx" style="color:Red;"><img src="images/buyscore.gif" />&nbsp;帐号充值</a></td>
    </tr>
    
     
    <tr>
        <td class="dot" align="center"><a href="MyBBSPost.aspx">&nbsp;我的贴子</a>&nbsp;(<%=BBSCounts %>)</td>
        <td class="dot" align="left"><a href="BBS/Post.aspx" target="_blank" >&nbsp;发表贴子</a></td>
    </tr>
    <tr>
        <td class="dot" align="center" bgcolor="#f6f6f6"><a href='<%=FormatUrl.MyAgentCenterSell() %>' style="color:blue;">管理出售房源</a>&nbsp;(<%=SellCounts %>)</td>
        <td class="dot" align="left" bgcolor="#f6f6f6"><a href='<%=FormatUrl.AddSellUrl() %>'>发布出售信息</a></td>
    </tr>
    
    <tr>
        <td class="dot" align="center"><a href='<%=FormatUrl.MyAgentCenterRent() %>' style="color:blue;">管理出租房源</a>&nbsp;(<%=RentCounts %>)</td>
        <td class="dot" align="left"><a href='<%=FormatUrl.AddRentUrl() %>'>发布出租信息</a></td>
    </tr>
    
    <tr>
        <td class="dot" align="center" bgcolor="#f6f6f6"><%=QG %></td>
        <td class="dot" align="left" bgcolor="#f6f6f6"><%=FBQG %><%=Affiche %></td>
    </tr>
    <tr>
        <td class="dot" align="center"><%=QZ %></td>
        <td class="dot" align="left"><%=FBQZ%></td>
    </tr>
        

    </table>
 </div>
 <div class="paddingtb"></div>
 <div class="border">

<div class="titlehead">
    网站小帮手
</div>

<table width="100%">
    <tr>
    <td class="dot" align=left >
        <a href="UserCenter_Help.aspx#one">· 如何发布房源？</a>
    </td>
    </tr>
    <tr>
    <td class="dot"  align=left>
        <a href="UserCenter_Help.aspx#five">· 如何填写标题更吸引人？</a>
    </td>
    </tr>
    <tr>
        <td class="dot"  align=left>
            <a href="UserCenter_Help.aspx#two">· 如何发布信息更有效果？</a>
        </td>
    </tr>
    <tr>
        <td class="dot"  align=left>
            <a href="UserCenter_Help.aspx#deal">· 房子成交后如何防止骚扰？</a>
        </td>
    </tr>
    <tr>
        <td  class="dot"  align=left>
            <a href="UserCenter_Help.aspx#three">· 什么是网络经纪人？</a>
        </td>
    </tr>
    <tr>
        <td  class="dot" align=left >

            <a href="UserCenter_Help.aspx#VIP">· 成为金牌会员有什么好处？</a>
        </td>
    </tr>
    <tr>
        <td class="dot" align=left >

            <a href="UserCenter_Help.aspx#pay">· 收费标准及相关说明</a>
        </td>
    </tr>
     <tr>
        <td class="dot" align=left >

            <a href="UserCenter_Help.aspx#getscore">· 如何获取积分</a>
        </td>
    </tr>
    </table>
</div>