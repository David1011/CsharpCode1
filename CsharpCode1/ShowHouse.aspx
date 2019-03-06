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
   <title><%=PageTitle %>,<%=Common.GetCityName() %>¥��չʾ,<%=Common.GetCityName() %>��¥��,<%=Common.GetCityName() %>������</title>
   <meta name="keywords" content="����¥��չʾ,������¥��,���ݷ�����" />
    <meta name="description" content="����¥��չʾ,������¥��,���ݷ�����" />
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
            ����λ�ã�
            <a href='<%=FormatUrl.HomeUrl() %>'>��վ��ҳ</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.LouPanHomeUrl() %>'>¥��չʾ</a>&nbsp;>&nbsp;
            <%=RegName %>&nbsp;>&nbsp;
            <%=AreaName %>
            </div>
            </div>
        <div class="columncontain">
            <div  class="twocolumnleft">
                <table border="0" cellpadding="0" cellspacing="2"  class="twocolumnleftbody">
                                <tr>
                                    <td colspan="7" class="titlehead">
                                       ������Ϣ
                                    </td>
                                </tr>
                                <tr>
                                    <td class="loupanname">
                                        ¥�����ƣ�</td>
                                    <td class="loupanname" colspan="3">
                                        <b><%=LPName %></b>&nbsp;&nbsp;
                                        <!--����ʵ��ã�<%=Clicked %>��¥�̷���URL���ã�<%=BPic %>����ͨͼURL���ã�<%=MapUrl %>-->
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
                                                <td class="titlehead">¥����Ƶ</td>
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
                                        �ο����ۣ�
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
                                        ¥�̵�ַ��</td>
                        <td class="loupancontentleft" colspan="3"><%=LPAddress %>
                        </td>
                    </tr>
                                
                                <tr>
                                    <td  class="loupancontentleft" bgcolor="#f6f6f6">
                                        ��������
                                    </td>
                                    <td bgcolor="#f6f6f6" class="loupancontentleft"><%=RegName2 %>
                                    </td>
                                    <td class="loupancontentleft" bgcolor="#f6f6f6">
                                        ���ڵضΣ�
                                    </td>
                                    <td bgcolor="#f6f6f6" class="loupancontentleft"><%=AreaName2 %>
                                    </td>
                                </tr>
                                <tr>
                                     <td class="loupancontentleft">
                                         ����ʱ�䣺
                                    </td>
                                    <td class="loupancontentleft"><%=KaiPanDate %>
                                    </td>
                                    <td class="loupancontentleft">
                                        ����ʱ�䣺
                                    </td>
                                    <td class="loupancontentleft"><%=JiaoFangDate %>
                                    </td>
                                </tr>
                                <tr>
                                     <td class="loupancontentleft" bgcolor="#f6f6f6">
                                         ���������
                                    </td>
                                    <td bgcolor="#f6f6f6" class="loupancontentleft"><%=AllSize %>
                                    </td>
                                    <td class="loupancontentleft" bgcolor="#f6f6f6">
                                        �ܻ�����
                                    </td>
                                    <td bgcolor="#f6f6f6" class="loupancontentleft"><%=AllCounts %>
                                    </td>
                                </tr>
                                <tr>
                                     <td class="loupancontentleft">
                                         ¥�����ͣ�
                                    </td>
                                    <td class="loupancontentleft"><%=LouPanType %>
                                    </td>
                                    <td class="loupancontentleft" >
                                        �ֳ����ȣ�
                                    </td>
                                    <td class="loupancontentleft"><%=JinDu %>
                                    </td>
                                </tr>
                                <tr>
                                     <td class="loupancontentleft" bgcolor="#f6f6f6">
                                         �� �� �ʣ�
                                    </td>
                                    <td bgcolor="#f6f6f6" class="loupancontentleft"><%=RongJi %>
                                    </td>
                                    <td class="loupancontentleft" bgcolor="#f6f6f6">
                                        �̻��ʣ�
                                    </td>
                                    <td bgcolor="#f6f6f6" class="loupancontentleft"><%=LuHua %>
                                    </td>
                                </tr>
                    <tr>
                        <td  class="loupancontentleft">
                            �� &nbsp; &nbsp; &nbsp;&nbsp; λ��</td>
                        <td  class="loupancontentleft" colspan="3"><%=CheWei %>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#f6f6f6" class="loupancontentleft">
                            �� �� �̣�</td>
                        <td bgcolor="#f6f6f6" class="loupancontentleft" colspan="3"><%=KFS %>
                        </td>
                    </tr>
                                 
                                <tr>
                                     <td class="loupancontentleft">
                                         �� ¥ ����
                                    </td>
                                    <td class="loupancontentleft" colspan="3"><%=ShouLouAddress %>
                                    
                                    </td>
                                </tr>
                    <tr>
                        <td bgcolor="#f6f6f6" class="loupancontentleft">
                                        ��¥�绰��
                        </td>
                        <td bgcolor="#f6f6f6" class="loupancontentleft" colspan="3" style="color:red"><%=ShouLouTel %>
                        </td>
                    </tr>
                                <tr>
                                     <td class="loupancontentleft">
                                         ��ҵ��˾��
                                    </td>
                                    <td class="loupancontentleft" colspan="3"><%=WuYe %>
                                    
                                    </td>
                                </tr>
                    <tr>
                        <td bgcolor="#f6f6f6" class="loupancontentleft">
                                        ��ҵ����ѣ�
                        </td>
                        <td bgcolor="#f6f6f6" class="loupancontentleft" colspan="3"><%=GuangLiFei %>
                        </td>
                    </tr>
                                 <tr>
                                     <td class="loupancontentleft" colspan=4 align=center>
                                         <img src="images/arrow.gif" alt="ҵ����̳" />&nbsp;<a href='<%=BBSUrl %>' target=_blank>����<%=LouPanName %>ҵ����̳</a>
                                    </td>
                                    
                                </tr>
                            </table>

                <table class="twocolumnleftbody">
                    <tr>
                        <td class="titlehead" colspan="7">
                            �ܱ߻���</td>
                    </tr>
                     
                    <tr>
                      
                        <td class="lineheight2" width="80">
                            <span >
                                �ܱ�ѧУ��
                           </span>
                        </td>
                        <td class="lineheight2" width="580"><%=Schools %>
                        </td>
                    </tr>
                    <tr>
                        
                        <td class="lineheight2" width="80" bgcolor="#f6f6f6">
                        
                             <span >
                             �ܱߵ�����
                         </span>
                        </td>
                        <td class="lineheight2" width="580" bgcolor="#f6f6f6"><%=DiTei %>
                        </td>
                    </tr>
                    <tr>
                        
                        <td class="lineheight2" width="80">
                        
                        <span>
                            �ܱ߹�����</span>
                        </td>
                        <td class="lineheight2"><%=Bus %>
                        </td>
                    </tr>
                    <tr>
                        
                        <td class="lineheight2" width="80" bgcolor="#f6f6f6">
                        
                        <span >
                            �����̳���</span>
                        </td>
                        <td class="lineheight2" width="580" bgcolor="#f6f6f6"><%=Shopping %>
                        </td>
                    </tr>
                    <tr>
                      
                        <td class="lineheight2" width="80">
                        
                        <span >
                            �ܱ�ҽԺ��</span>
                        </td>
                        <td class="lineheight2" width="580"><%=Hospital %>
                        </td>
                    </tr>
                </table>
                <table class="twocolumnleftbody">
                    <tr>
                        <td class="titlehead">¥�̼��</td>
                    </tr>
                    <tr>
                        <td class="font14" style="color:#000;line-height:180%;">
                            <%=LPIntro %>
                        </td>
                    </tr>
                </table>
                <table class="twocolumnleftbody">
                    <tr>
                        <td class="titlehead"> ¥��ʵͼ&nbsp;&nbsp;<span class="normalfont"><a href='<%=UploadPicUrl %>' target="_blank"><font color=red>�ϴ���¥�����ͼƬ</font></a></span></td>
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
                            �� �� ͼ&nbsp;&nbsp;<span class="normalfont"><a href='<%=UploadPicUrl %>' target="_blank"><font color=red>�ϴ���¥����ػ���</font></a></span></td>
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
                        <%=LPName %>&nbsp;������¥��
                    </div>
                    <table cellpadding="0" cellspacing="5" border="0" width="100%" align="center">
                    <tr>
                        <td colspan=2><font color=red><b><%=TGMSG %></b></font></td>
                    </tr>
                    <tr>
                        <td nowrap class="tableleft" width="85">&nbsp; <font color=red>*</font><span class="itemtitle">������</span></td>
                        <td class="dot" align="left">
                            <asp:TextBox ID="tbname" runat="server" Width="135px" Height="22px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td nowrap class="tableleft" width="85">&nbsp; <font color=red>*</font>&nbsp;
                            <span class="itemtitle">�绰��</span></td>
                        <td class="dot" align="left">
                            <asp:TextBox ID="tbtel" runat="server" Height="22px" Width="135px"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td class="tableleft" nowrap="nowrap" width="85">
                             &nbsp;�Ź����ͣ�</td>
                         <td align="left" class="dot">
                             <asp:TextBox ID="tbhuxing" runat="server" Height="22px" Width="135px"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td class="tableleft" nowrap="nowrap" width="85">
                             &nbsp;��ϵ��ַ��</td>
                         <td align="left" class="dot">
                             <asp:TextBox ID="tbaddress" runat="server" Height="22px" Width="135px"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td class="tableleft" nowrap="nowrap" width="85">
                             &nbsp;QQ��</td>
                         <td align="left" class="dot">
                             <asp:TextBox ID="tbqq" runat="server" Height="22px" Width="135px"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td class="tableleft" nowrap="nowrap" width="85">
                             &nbsp;���䣺</td>
                         <td align="left" class="dot">
                             <asp:TextBox ID="tbemail" runat="server" Width="135px"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td class="tableleft" nowrap="nowrap" width="85">
                             &nbsp;���ͣ�</td>
                         <td align="left" class="dot">
                             <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                 <asp:ListItem Value="kft">������</asp:ListItem>
                                 <asp:ListItem Selected="True" Value="gft">������</asp:ListItem>
                                 <asp:ListItem Value="jls">��¥�����</asp:ListItem>
                                 <asp:ListItem Value="lx">������ϵ</asp:ListItem>
                             </asp:RadioButtonList></td>
                     </tr>
                    <tr>
                        <td nowrap class="tableleft" width="85">&nbsp;<span class="itemtitle">���ԣ�</span></td>
                        <td class="dot" align="left">
                            <asp:TextBox ID="tbmsg" runat="server" Height="145px" TextMode="MultiLine" Width="135px"></asp:TextBox>
                          
                        </td>
                    </tr>
                    <tr>
                        <td class="dot" align="left" colspan=2>
                            <asp:Button ID="btnok"  runat="server" Enabled=false Text="��Ѱ治��ʹ��������¥����" OnClientClick="return checktginput()" OnClick="btnok_Click"  CausesValidation="False" />
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
                            <div class=titlehead>���̶�̬</div>
                           <%=V.News(0,98,10,false,15,false,false,true,"dot") %>
                         </div> 
            </div>
        </div>
        
        <div class="columncontain2">
            <div class="recomloupanbg">
                <div style="font-size:14px;font-weight:bold;text-align:left;line-height:150%;color:#000;">
                    &nbsp;<a href='<%=FormatUrl.LouPanHomeUrl() %>'>����¥���Ƽ�</a>
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
