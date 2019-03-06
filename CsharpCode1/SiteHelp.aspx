<%@ page language="C#" autoeventwireup="true" inherits="SiteHelp, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
         <title>网站帮助,我的管理中心,<%=Common.GetSiteName() %></title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
   <meta name="copyright" content="Copyright 2007. 0752house.com All Rights Reserved.">
    <meta name="author" content="0752house.com">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css" media="all">
        .mii
        {
            line-height:200%;background:#f6f6f6;text-align:left;padding:5px;
        }
        .item
        {
            line-height:200%;background:#fff;text-align:left;padding:5px;
        }
    </style>
</head>
<body>
       <form id="form1" runat="server">
    <div>
        <uc1:LoginUC ID="LoginUC1" runat="server" />
    </div>
    <div>
            <uc1:Header ID="Header1" runat="server" />
        </div>
      <div class="currnav">
            <div class="currnavtop">
                <img src="images/navh.JPG" align="absmiddle" />&nbsp;
            您的位置：
            <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
            <a href="SiteHelp.aspx">网站帮助中心</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign=top>
             <div class="border">

<div class="titlehead">
    网站小帮手
</div>

<table width="100%">
    <tr>
    <td align="center" class="dot" >
        <a href="UserCenter_Help.aspx#one">如何发布房源？</a>
    </td>
    </tr>
    <tr>
    <td align="center" class="dot" >
        <a href="UserCenter_Help.aspx#five">如何填写标题更吸引人？</a>
    </td>
    </tr>
    <tr>
        <td align="center" class="dot" >
            <a href="UserCenter_Help.aspx#two">如何发布信息更有效果？</a>
        </td>
    </tr>
    <tr>
        <td align="center" class="dot" >
            <a href="UserCenter_Help.aspx#deal">房子成交后如何防止骚扰？</a>
        </td>
    </tr>
    <tr>
        <td align="center" class="dot" >
            <a href="UserCenter_Help.aspx#three">什么是网络经纪人？</a>
        </td>
    </tr>
    <tr>
        <td align="center" class="dot" >

            <a href="UserCenter_Help.aspx#vip">成为VIP会员有什么好处？</a>
        </td>
    </tr>
    <tr>
        <td align="center" class="dot" >

            <a href="UserCenter_Help.aspx#pay">收费标准及相关说明</a>
        </td>
    </tr>
    </table>
</div>
            </td>
            <td valign="top">
                <div class="border">
                    <div class="titlehead">
                        网站帮助中心
                    </div>
                    <div>
             <table cellpadding=0 cellspacing=0 border=0 width=100% align="center">

            <tr>
                <td valign="top" class="mii" id="one">
                  <img src="images/helpico.gif" align="absmiddle" />&nbsp;<b>如何发布房源？ </b><br />
                  
                </td>
            </tr>
            <tr>
                <td class="item">
                    在本站发布房源请先<a href='<%=FormatUrl.RegisterUrl() %>'><font color=red>注册</font></a>成为本站会员,<a href='<%=FormatUrl.RegisterUrl() %>'><font color=red>注册</font></a>完成后点击网站最顶端的
                    “<a href="pub.aspx"><font color=red>发布信息</font></a>”，然后输入房屋的各项信息，再提交即可。<br />
                    如果您在<a href="pub.aspx"><font color=red>发布</font></a>过程中有任何问题，请与我们的客服人员联系。感谢您的支持！
                    
                        
                </td>
            </tr>
            <tr>
                <td class="mii" valign="top"  id="two">
                    <img src="images/helpico.gif" align="absmiddle" />&nbsp;<b>如何发布信息更有效果？  </b><br />
                </td>
            </tr>
           <tr>
            <td class="item" valign="top">
                首先，信息的标题填写请参考<a href="#five">如何填写标题更吸引人？</a>．
                其次，信息的各项说明最好都填上，如面积，楼层，证件等情况．
                信息的内容应描述好屋内的情况．最好配上屋内实图，这样更能提高信息的效果．
            </td>
           </tr>
             <tr>
                <td class="mii" valign="top" id="five">
                   <img src="images/helpico.gif" align="absmiddle" />&nbsp;<b>如何填写标题更吸引人？  </b><br />
                </td>
            </tr>
            <tr>
                <td class="item">
                    填写标题时应从浏览者和搜索引擎的角度来填写．所以信息的标题应是人性化的，应包括相关的关键词．根据浏览者的搜索习惯来
                    填写效果最好，曝光率最高．
                    <br /><span class=blue>如当用户想找一套两房的某小区二手房，价格在60万以下的．</span>
                    <br />那么为了能让用户搜索到您的信息，标题
                    可填写为：<span class=blue>　出售ＸＸ小区两房60万以下．证件齐全，有实图．</span>　后面的＂证件齐全，有实图＂为附加信息，可以吸引用户点击该标题．
                    <br />
                    <span class=red>注：请不要在标题里添加任何不相关的符号，那样会让浏览者觉得是一条垃圾信息，反而降低点击率．</span>
                </td>
            </tr>
            <tr>
                <td class="mii" valign="top" id="deal">
                   <img src="images/helpico.gif" align="absmiddle" />&nbsp;<b>房子成交后如何防止骚扰？ </b><br />

                </td>
            </tr>
            <tr>
                <td class="item">
                      当您在本站发布的信息成交（已租或已售）后，为了防止用户再看到你的信息时打电话询问．
                      <br />您可以登录后进入个人管理中心．进入出租或出售管理．点击信息标题右边的＂未成交＂
                      链接，即可将您的信息设置为已成交，您的电话将被隐藏．
                 </td>
            </tr>
            <tr>
                <td class="mii" valign="top" id="three">
                   <img src="images/helpico.gif" align="absmiddle" />&nbsp;<b>什么是网络经纪人？ </b><br />

                </td>
            </tr>
            <tr>
                <td class="item">
                      “网络经纪人”是指房产经纪人借助互联网来发布信息，展现自己，为消费者提供业务咨询服务，从而打造个人品牌的一种营销模式。是网站针对房产经纪人的业务特点，为其开发出的个人网络营销平台。
                 </td>
            </tr>
            <tr>
                <td class="mii" valign="top"  id="vip">
                   <span id="four"><img src="images/helpico.gif" align="absmiddle" />&nbsp;<b>成为VIP会员有什么好处？  </b></span><br />
                </td>
            </tr>
            <tr>
                <td class="item">
                    <div class="lineheight2" style="text-align:left;">
                    <b>· 什么是VIP会员？</b><br />
                    只要您注册成为本站会员，并购买本站的积分，您就会自动成为VIP会员！本站的VIP会员采用积分制度．
                    <br />
                    <b>· VIP会员较普通会员有什么优势？</b><br />
                    只要您购买本站的积分后，您就可以享用以下高级服务:<br />
                    1. 批量刷新已成功发布的房源，可以节省您的时间．<br />
                    2. 可以置顶您的房源.<br />
                    3. 将您的房源设为＂十万火急房源＂，可以提高房源的曝光率，加快成交的速度.<br />
                    4. 如果您是房产经纪，在本站免费注册开通网店后，可以将您的店铺推荐到网站首页，提高曝光率．也许为您带来更好的业绩！<br />
                    5. 本站将采取更多的有效宣传途径，推销您的房源．
                    
                    </div>
                </td>
            </tr>
            <tr>
                <td class="mii" valign="top" id="pay">
                   <span id="Span2"><img src="images/helpico.gif" align="absmiddle" />&nbsp;<b>收费标准及相关说明</b></span><br />
                </td>
            </tr>
            <tr>
                <td class="item">
                    <div class="lineheight2" style="text-align:left;">
                        <b>· 网站为什么要收费？</b><br />
                        网站收费是为了能够更好地生存下去．只有广大网友的支持，网站才能提供更多更好的服务．通过收费，为会员提供更优质的服务，从而达到双赢．<br />
                        <b>· 收费标准如何？</b><br />
                        
                        
                        1．刷新房源 (需要 <font color=red><b><%=Common.GetRefleshScore() %></b></font> 个积分)
                        <br />
                        2．推荐房源 (需要 <font color=red><b><%=Common.GetRecomScore() %></b></font> 个积分)
                        <br />
                        3．置顶房源 (需要 <font color=red><b><%=Common.GetTopScore() %></b></font> 个积分)
                        
                        <a href="users_order.aspx"><font color=blue><u>点击此处立刻充值</u></font></a>
                        <br />
                        如需帮助，请联系：<font color=red><b><%=SiteTel %></b></font>  客服ＱＱ：
                              <%=QQ %>   
                    </div>
                </td>
            </tr>
        </table><br />

                    </div>
                </div>
            </td>
        </tr>
    </table>
        </div>
         <div>
             <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
