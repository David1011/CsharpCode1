<%@ page language="C#" autoeventwireup="true" inherits="ShowAsk, House_FreeV2_deploy" validaterequest="false" enableEventValidation="false" %>


<%@ Register Src="Searcher_Ask.ascx" TagName="Searcher_Ask" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=PageTitle %>, <%=Common.GetCityName() %>������</title>
     <meta name="keywords" content="���ݷ�����Ѷ,���ݷ��ز���Ѷ" />
    <meta name="description" content="�������·��ز���Ѷ���" />
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
                alert('�ظ����ݲ���Ϊ�գ�������');
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
            ����λ�ã�
            <a href='<%=FormatUrl.HomeUrl() %>'>��վ��ҳ</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.AskHomeUrl() %>'><%=Common.GetCityName() %>������Ѷ</a>
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
                                ����<%=adddate %>&nbsp;&nbsp;&nbsp;�����<%=clicked %>
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
                                ��һƪ��<%=PreNews %><br />
                                ��һƪ��<%=NextNews %><br />
                            </td>
                            </tr>
                           
                            </table>
                        </div>
                   </div> 
                   <br />
                    <div>
                        <!--�ظ�--><%=Msg %>
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
                                                �ظ���&nbsp;<%#Eval("AddDate") %>
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
                                <td><span class="font14item"><b>����</b></span></td>
                            </tr>
                            <tr>
                                <td width="5"></td>
                                <td>
                                    <asp:Label ID="lblname" runat="server" Text="�û�����"></asp:Label>
                                    <asp:TextBox  CssClass="input" ID="tbreplyname" runat="server" Height="20px" Width="78px"></asp:TextBox>
                                    <asp:Label ID="lblpwd" runat="server" Text="���룺"></asp:Label>
                                    <asp:TextBox CssClass="input" ID="tbreplypwd" TextMode="password" runat="server" Height="20px" Width="88px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="5"></td>
                                <td><span style="color:Gray;">������ѡ���¼�ظ����������ظ�������¼ֱ���ύ�ظ���Ϊ�����ظ�</span></td>
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

                        <!--�ظ�����-->
                
                </div>
                
            </div>
            <div class="columnrightbody">
                
                    <div class="columnright">
                         <div class="titlehead">�������а�</div>
                         <%=V.NewsByHot(10,false,false,true,false,18,"dot") %>
                         <div class="titlehead">����ͼ˵</div>
                        <%=V.NewsPicByHot(0, 0, 4, true, 35, 90, 80, 12, "dot", false) %>
                        <div class="titlehead">¥�̵������</div>
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
