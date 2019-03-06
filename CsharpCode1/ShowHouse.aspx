<%@ page language="C#" autoeventwireup="true" inherits="ShowHouse, House_FreeV2_deploy" enableEventValidation="false" %>

<%@ Register Src="RelateLouPanNews.ascx" TagName="RelateLouPanNews" TagPrefix="uc5" %>
<%@ Register Src="Searcher_LouPan.ascx" TagName="Searcher_LouPan" TagPrefix="uc1" %>

<%@ Register Src="UserComments.ascx" TagName="UserComments" TagPrefix="uc3" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <title><%=PageTitle %>,<%=Common.GetCityName() %>楼盘展示,<%=Common.GetCityName() %>新楼盘,<%=Common.GetCityName() %>房产网</title>
   <meta name="keywords" content="惠州楼盘展示,惠州新楼盘,惠州房产网" />
    <meta name="description" content="惠州楼盘展示,惠州新楼盘,惠州房产网" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="robots" content="index,follow">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/search.js" language="javascript"></script>
    <script type="text/javascript" src="js/ajax.js" language="javascript"></script>
    <link href="css/menu.css" rel="stylesheet" type="text/css" />    

</head>
<body>
    <form id="form1" runat="server">
            <uc8:LoginUC id="LoginUC2" runat="server">
            </uc8:LoginUC>

            <div>
                 <uc1:Header ID="Header1" runat="server" />
            </div>
            <div class="columncontain3">

                    <div>
                       <uc1:Searcher_LouPan ID="Searcher_LouPan1" runat="server" />
                     </div>
               
            </div>

            <div class="columncontain">
                <div class="currnavtop">
                &nbsp;
            您的位置：
            <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.LouPanHomeUrl() %>'>楼盘展示</a>&nbsp;>&nbsp;
            <%=RegName %>&nbsp;>&nbsp;
            <%=AreaName %>
            </div>
            </div>
        <div class="columncontain">
            <div  class="twocolumnleft">
                <table border="0" cellpadding="0" cellspacing="2"  class="twocolumnleftbody">
                                <tr>
                                    <td colspan="7" class="titlehead">
                                       基本信息
                                    </td>
                                </tr>
                                <tr>
                                    <td class="loupanname">
                                        楼盘名称：</td>
                                    <td class="loupanname" colspan="3">
                                        <b><%=LPName %></b>&nbsp;&nbsp;
                                        <!--点击率调用：<%=Clicked %>，楼盘封面URL调用：<%=BPic %>，交通图URL调用：<%=MapUrl %>-->
                                    </td>
                                    <td class="lineheight2" rowspan="16">
                                       <table width="200" class="border">
                                           
                                            <tr>
                                                <td class="titlehead"><%=LPName %></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                     <a href='<%=MapUrl %>' target="_blank">
                                                        <img src='<%=SPic %>'  width="266" height="210" align="absmiddle" />
                                                    </a>
                                                </td>
                                            </tr>
 <tr>
                                                <td class="titlehead">楼盘视频</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                 
                                                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="266" height="210">
                                                    <param name="movie" value="flash/videoplayer.swf">
                                                    <param name="quality" value="high">
                                                    <param name="allowFullScreen" value="true" />
                                                    <param name="FlashVars" value="vcastr_file=&IsShowBar=1&BarPosition=1&IsAutoPlay=0&IsContinue=1"  /> 
                                                    <embed src="flash/videoplayer.swf" allowFullScreen="true" FlashVars="vcastr_file=" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="266" height="210"></embed>
                                                    </object>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td  rowspan="16" width="8">
                                    </td>

                                </tr>
                                <tr>
                                     <td class="loupancontentleft" bgcolor="#f6f6f6" >
                                        参考均价：
                                    </td>
                                    <td bgcolor="#f6f6f6" class="loupancontentleft"><%=LPPrice %>
                                    </td>
                                    <td class="loupancontentleft" bgcolor="#f6f6f6">
                                         &nbsp;
                                    </td>
                                    <td bgcolor="#f6f6f6" class="loupancontentleft"> &nbsp;
                                    </td>
                                </tr>
                    <tr>
                        <td class="loupancontentleft">
                                        楼盘地址：</td>
                        <td class="loupancontentleft" colspan="3"><%=LPAddress %>
                        </td>
                    </tr>
                                
                                <tr>
                                    <td  class="loupancontentleft" bgcolor="#f6f6f6">
                                        所在区域：
                                    </td>
                                    <td bgcolor="#f6f6f6" class="loupancontentleft"><%=RegName2 %>
                                    </td>
                                    <td class="loupancontentleft" bgcolor="#f6f6f6">
                                        所在地段：
                                    </td>
                                    <td bgcolor="#f6f6f6" class="loupancontentleft"><%=AreaName2 %>
                                    </td>
                                </tr>
                                <tr>
                                     <td class="loupancontentleft">
                                         开盘时间：
                                    </td>
                                    <td class="loupancontentleft"><%=KaiPanDate %>
                                    </td>
                                    <td class="loupancontentleft">
                                        交房时间：
                                    </td>
                                    <td class="loupancontentleft"><%=JiaoFangDate %>
                                    </td>
                                </tr>
                                <tr>
                                     <td class="loupancontentleft" bgcolor="#f6f6f6">
                                         建筑面积：
                                    </td>
                                    <td bgcolor="#f6f6f6" class="loupancontentleft"><%=AllSize %>
                                    </td>
                                    <td class="loupancontentleft" bgcolor="#f6f6f6">
                                        总户数：
                                    </td>
                                    <td bgcolor="#f6f6f6" class="loupancontentleft"><%=AllCounts %>
                                    </td>
                                </tr>
                                <tr>
                                     <td class="loupancontentleft">
                                         楼盘类型：
                                    </td>
                                    <td class="loupancontentleft"><%=LouPanType %>
                                    </td>
                                    <td class="loupancontentleft" >
                                        现场进度：
                                    </td>
                                    <td class="loupancontentleft"><%=JinDu %>
                                    </td>
                                </tr>
                                <tr>
                                     <td class="loupancontentleft" bgcolor="#f6f6f6">
                                         容 积 率：
                                    </td>
                                    <td bgcolor="#f6f6f6" class="loupancontentleft"><%=RongJi %>
                                    </td>
                                    <td class="loupancontentleft" bgcolor="#f6f6f6">
                                        绿化率：
                                    </td>
                                    <td bgcolor="#f6f6f6" class="loupancontentleft"><%=LuHua %>
                                    </td>
                                </tr>
                    <tr>
                        <td  class="loupancontentleft">
                            车 &nbsp; &nbsp; &nbsp;&nbsp; 位：</td>
                        <td  class="loupancontentleft" colspan="3"><%=CheWei %>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#f6f6f6" class="loupancontentleft">
                            开 发 商：</td>
                        <td bgcolor="#f6f6f6" class="loupancontentleft" colspan="3"><%=KFS %>
                        </td>
                    </tr>
                                 
                                <tr>
                                     <td class="loupancontentleft">
                                         售 楼 处：
                                    </td>
                                    <td class="loupancontentleft" colspan="3"><%=ShouLouAddress %>
                                    
                                    </td>
                                </tr>
                    <tr>
                        <td bgcolor="#f6f6f6" class="loupancontentleft">
                                        售楼电话：
                        </td>
                        <td bgcolor="#f6f6f6" class="loupancontentleft" colspan="3" style="color:red"><%=ShouLouTel %>
                        </td>
                    </tr>
                                <tr>
                                     <td class="loupancontentleft">
                                         物业公司：
                                    </td>
                                    <td class="loupancontentleft" colspan="3"><%=WuYe %>
                                    
                                    </td>
                                </tr>
                    <tr>
                        <td bgcolor="#f6f6f6" class="loupancontentleft">
                                        物业管理费：
                        </td>
                        <td bgcolor="#f6f6f6" class="loupancontentleft" colspan="3"><%=GuangLiFei %>
                        </td>
                    </tr>
                                 <tr>
                                     <td class="loupancontentleft" colspan=4 align=center>
                                         <img src="images/arrow.gif" alt="业主论坛" />&nbsp;<a href='<%=BBSUrl %>' target=_blank>进入<%=LouPanName %>业主论坛</a>
                                    </td>
                                    
                                </tr>
                            </table>

                <table class="twocolumnleftbody">
                    <tr>
                        <td class="titlehead" colspan="7">
                            周边环境</td>
                    </tr>
                     
                    <tr>
                      
                        <td class="lineheight2" width="80">
                            <span >
                                周边学校：
                           </span>
                        </td>
                        <td class="lineheight2" width="580"><%=Schools %>
                        </td>
                    </tr>
                    <tr>
                        
                        <td class="lineheight2" width="80" bgcolor="#f6f6f6">
                        
                             <span >
                             周边地铁：
                         </span>
                        </td>
                        <td class="lineheight2" width="580" bgcolor="#f6f6f6"><%=DiTei %>
                        </td>
                    </tr>
                    <tr>
                        
                        <td class="lineheight2" width="80">
                        
                        <span>
                            周边公交：</span>
                        </td>
                        <td class="lineheight2"><%=Bus %>
                        </td>
                    </tr>
                    <tr>
                        
                        <td class="lineheight2" width="80" bgcolor="#f6f6f6">
                        
                        <span >
                            购物商场：</span>
                        </td>
                        <td class="lineheight2" width="580" bgcolor="#f6f6f6"><%=Shopping %>
                        </td>
                    </tr>
                    <tr>
                      
                        <td class="lineheight2" width="80">
                        
                        <span >
                            周边医院：</span>
                        </td>
                        <td class="lineheight2" width="580"><%=Hospital %>
                        </td>
                    </tr>
                </table>
                <table class="twocolumnleftbody">
                    <tr>
                        <td class="titlehead">楼盘简介</td>
                    </tr>
                    <tr>
                        <td class="font14" style="color:#000;line-height:180%;">
                            <%=LPIntro %>
                        </td>
                    </tr>
                </table>
                <table class="twocolumnleftbody">
                    <tr>
                        <td class="titlehead"> 楼盘实图&nbsp;&nbsp;<span class="normalfont"><a href='<%=UploadPicUrl %>' target="_blank"><font color=red>上传该楼盘相关图片</font></a></span></td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:DataList ItemStyle-HorizontalAlign="left"  ID="dlpic" runat="server" RepeatColumns="4" RepeatDirection="horizontal" EnableViewState="false" Width="98%">
                                <ItemTemplate>
                                    <a href='<%#Eval("BPic") %>' target="_blank">
                                        <img class="borderpic" src='<%#Eval("SPic") %>' align="absmiddle" />
                                    </a>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
                <table class="twocolumnleftbody">
                    <tr>
                        <td class="titlehead">
                            户 型 图&nbsp;&nbsp;<span class="normalfont"><a href='<%=UploadPicUrl %>' target="_blank"><font color=red>上传该楼盘相关户型</font></a></span></td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:DataList ItemStyle-HorizontalAlign="left" ID="dlhx" runat="server" RepeatColumns="4" RepeatDirection="horizontal" EnableViewState="false" Width="98%">
                                <ItemTemplate>
                                    <a href='<%#Eval("HXBPic") %>' target="_blank">
                                        <img class="borderpic" src='<%#Eval("HXSPic") %>' align="absmiddle" />
                                    </a>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
                <uc3:UserComments ID="UserComments1" runat="server" />
            </div>
            
            <div class="columnrightbody">
                 
                <div class="columnright">
                    <div class="titlehead">
                        <%=LPName %>&nbsp;网上售楼处
                    </div>
                    <table cellpadding="0" cellspacing="5" border="0" width="100%" align="center">
                    <tr>
                        <td colspan=2><font color=red><b><%=TGMSG %></b></font></td>
                    </tr>
                    <tr>
                        <td nowrap class="tableleft" width="85">&nbsp; <font color=red>*</font><span class="itemtitle">姓名：</span></td>
                        <td class="dot" align="left">
                            <asp:TextBox ID="tbname" runat="server" Width="135px" Height="22px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td nowrap class="tableleft" width="85">&nbsp; <font color=red>*</font>&nbsp;
                            <span class="itemtitle">电话：</span></td>
                        <td class="dot" align="left">
                            <asp:TextBox ID="tbtel" runat="server" Height="22px" Width="135px"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td class="tableleft" nowrap="nowrap" width="85">
                             &nbsp;团购户型：</td>
                         <td align="left" class="dot">
                             <asp:TextBox ID="tbhuxing" runat="server" Height="22px" Width="135px"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td class="tableleft" nowrap="nowrap" width="85">
                             &nbsp;联系地址：</td>
                         <td align="left" class="dot">
                             <asp:TextBox ID="tbaddress" runat="server" Height="22px" Width="135px"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td class="tableleft" nowrap="nowrap" width="85">
                             &nbsp;QQ：</td>
                         <td align="left" class="dot">
                             <asp:TextBox ID="tbqq" runat="server" Height="22px" Width="135px"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td class="tableleft" nowrap="nowrap" width="85">
                             &nbsp;邮箱：</td>
                         <td align="left" class="dot">
                             <asp:TextBox ID="tbemail" runat="server" Width="135px"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td class="tableleft" nowrap="nowrap" width="85">
                             &nbsp;类型：</td>
                         <td align="left" class="dot">
                             <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                 <asp:ListItem Value="kft">看房团</asp:ListItem>
                                 <asp:ListItem Selected="True" Value="gft">购房团</asp:ListItem>
                                 <asp:ListItem Value="jls">寄楼书给我</asp:ListItem>
                                 <asp:ListItem Value="lx">和我联系</asp:ListItem>
                             </asp:RadioButtonList></td>
                     </tr>
                    <tr>
                        <td nowrap class="tableleft" width="85">&nbsp;<span class="itemtitle">留言：</span></td>
                        <td class="dot" align="left">
                            <asp:TextBox ID="tbmsg" runat="server" Height="145px" TextMode="MultiLine" Width="135px"></asp:TextBox>
                          
                        </td>
                    </tr>
                    <tr>
                        <td class="dot" align="left" colspan=2>
                            <asp:Button ID="btnok"  runat="server" Enabled=false Text="免费版不能使用网上售楼功能" OnClientClick="return checktginput()" OnClick="btnok_Click"  CausesValidation="False" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan=2 align=center><%=TGCOUNTS %></td>
                    </tr>
                   </table>       
                </div>
                <div class="columnright">
                    <uc5:RelateLouPanNews id="RelateLouPanNews1" runat="server">
                    </uc5:RelateLouPanNews></div>
                    
                 <div class="columnright">
                            <div class=titlehead>新盘动态</div>
                           <%=V.News(0,98,10,false,15,false,false,true,"dot") %>
                         </div> 
            </div>
        </div>
        
        <div class="columncontain2">
            <div class="recomloupanbg">
                <div style="font-size:14px;font-weight:bold;text-align:left;line-height:150%;color:#000;">
                    &nbsp;<a href='<%=FormatUrl.LouPanHomeUrl() %>'>惠州楼盘推荐</a>
                </div>
                <%=V.LouPanByRecom(6,8,true,true,120,140,"lineheight2") %>
            </div>
       </div>
       
        <div>
            <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
