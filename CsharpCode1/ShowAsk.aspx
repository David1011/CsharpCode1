<%@ page language="C#" autoeventwireup="true" inherits="ShowAsk, House_FreeV2_deploy" validaterequest="false" enableEventValidation="false" %>


<%@ Register Src="Searcher_Ask.ascx" TagName="Searcher_Ask" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=PageTitle %>, <%=Common.GetCityName() %>房产网</title>
     <meta name="keywords" content="惠州房产资讯,惠州房地产资讯" />
    <meta name="description" content="惠州最新房地产资讯快递" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="robots" content="index,follow">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/search.js" language="javascript"></script>
    <script type="text/javascript" src="js/ajax.js" language="javascript"></script>

    
    <script language="javascript" type="text/javascript">
        function checkreply()
        {
            if(document.getElementById("tbReplyContent").value=='')
            {
                alert('回复内容不能为空，请输入');
                document.getElementById("tbReplyContent").focus();
                return false;
            }
        }
    </script>

    <link href="css/menu.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
            <uc8:LoginUC id="LoginUC1" runat="server">
            </uc8:LoginUC>
        <div>
             <uc1:Header ID="Header1" runat="server" />
        </div>
         <div class="columncontain3">

                    <div>
                        <uc1:Searcher_Ask ID="Searcher_Ask2" runat="server" />
                     </div>
               
            </div>
        <div class="columncontain">
            <div class="currnavtop">
               &nbsp;
            您的位置：
            <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.AskHomeUrl() %>'><%=Common.GetCityName() %>房产资讯</a>
            <%=Current %>
            </div>
        </div>
        <div class="columncontain">
            <div class="twocolumnleft">
                
                    <div style="background:#f3fbff;">
                        <div>
                            <div class="bigtitle">
                                <asp:Label ID="lbltitle" runat="server"></asp:Label>
                            </div>
                            <center>
                                发表：<%=adddate %>&nbsp;&nbsp;&nbsp;点击：<%=clicked %>
                            </center><br>
                        </div>
                        <div class="font14" style="color:#000;line-height:180%;">
                            <table width="700">
                            <tr>
                            <td style="text-indent:25px;">
                                <center><div class="whitebgborder"><%=intro %></div></center><br>
                               
                                <%=content %>
                                <br />
                                <br />
                                上一篇：<%=PreNews %><br />
                                下一篇：<%=NextNews %><br />
                            </td>
                            </tr>
                           
                            </table>
                        </div>
                   </div> 
                   <br />
                    <div>
                        <!--回复--><%=Msg %>
                        <asp:DataList ID="dlreply" runat="server"   EnableViewState="false" Width="90%">
                        <HeaderTemplate><table width="650" class="border">

                        </HeaderTemplate>
                        <FooterTemplate></table></FooterTemplate>
                            <ItemTemplate>
                                
                                    <tr>
                                       
                                        <td width="10" class="dot" >&nbsp;</td>
                                        <td valign="top" class="dot" >
                                            <div style="text-align:left;">
                                                <%#FilterAuthor(Eval("UserID").ToString(), Eval("UserIP").ToString())%>
                                                回复于&nbsp;<%#Eval("AddDate") %>
                                            </div><br />
                                            <div class="font14item"><%#Eval("Content") %></div>

                                        </td>
                                        <td width="10" class="dot" ></td>
                                     </tr>
                                
                                
                            </ItemTemplate>
                        </asp:DataList>
                        <br />
                        <table  id="replyarea" style="width: 652px">
                            <tr>
                                <td width="5"></td>
                                <td><span class="font14item"><b>评论</b></span></td>
                            </tr>
                            <tr>
                                <td width="5"></td>
                                <td>
                                    <asp:Label ID="lblname" runat="server" Text="用户名："></asp:Label>
                                    <asp:TextBox  CssClass="input" ID="tbreplyname" runat="server" Height="20px" Width="78px"></asp:TextBox>
                                    <asp:Label ID="lblpwd" runat="server" Text="密码："></asp:Label>
                                    <asp:TextBox CssClass="input" ID="tbreplypwd" TextMode="password" runat="server" Height="20px" Width="88px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="5"></td>
                                <td><span style="color:Gray;">您可以选择登录回复或者匿名回复，不登录直接提交回复即为匿名回复</span></td>
                            </tr>
                            <tr>
                                <td width="5"></td>
                                <td><asp:TextBox ID="tbReplyContent" runat="server" Height="150px" TextMode="MultiLine" Width="429px"></asp:TextBox></td>
                            </tr>
                            
                            <tr>
                                <td width="5"></td>
                                <td>
                                <asp:ImageButton
                                    ID="ImageButton1" runat="server" OnClientClick="return checkreply()" ImageAlign="Left" ImageUrl="images/post.gif"
                                    OnClick="ImageButton1_Click" /><br />
                                <asp:Label ID="Label1" Visible=false runat="server"></asp:Label>
                                <asp:Label ID="Label2" Visible=false  runat="server"></asp:Label>
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                        </table>

                        <!--回复结束-->
                
                </div>
                
            </div>
            <div class="columnrightbody">
                
                    <div class="columnright">
                         <div class="titlehead">新闻排行榜</div>
                         <%=V.NewsByHot(10,false,false,true,false,18,"dot") %>
                         <div class="titlehead">道听图说</div>
                        <%=V.NewsPicByHot(0, 0, 4, true, 35, 90, 80, 12, "dot", false) %>
                        <div class="titlehead">楼盘点击排行</div>
                        <%=V.LouPanListByHot(10,10,true,true,"lineheight2") %>
                        
                    </div>
            </div>
        </div>
        <div>
            <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
