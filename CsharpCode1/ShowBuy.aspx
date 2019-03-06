<%@ page language="C#" autoeventwireup="true" inherits="ShowBuy, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="Searcher_Sell.ascx" TagName="Searcher_Sell" TagPrefix="uc4" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <title><%=PageTitle %>,<%=Common.GetCityName() %>����Ϣ,<%=Common.GetCityName() %>���ַ��󹺣�<%=Common.GetCityName() %>������</title>
    <meta name="keywords" content="��������Ϣ,���ݶ��ַ��󹺣����ݷ�����" />
    <meta name="description" content="��������Ϣ,���ݶ��ַ��󹺣����ݷ�����" />
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
        <form id="form2" runat="server">
            <uc8:LoginUC id="LoginUC2" runat="server">
            </uc8:LoginUC>
            <div>
               <uc1:Header ID="Header1" runat="server" />
            </div>
             <div class="columncontain3">

                    <div>
                        <uc4:Searcher_Sell ID="Searcher_Sell1" runat="server" />
                     </div>
               
            </div>
            
            <div class="columncontain">
                <div class="currnavtop">
                    &nbsp;
                        ����λ�ã�
                    <a href='<%=FormatUrl.HomeUrl() %>'>��վ��ҳ</a>&nbsp;>&nbsp;
                    <a href='<%=FormatUrl.SellHomeUrl() %>'>���ַ�</a>&nbsp;>&nbsp;
                    <a href='<%=FormatUrl.BuyHouseHomeUrl() %>'>�󹺷�Դ</a>
                    
            </div>
        </div>
       
            <div class="middlebody">
                <div  class="listborder">
                 <table width="100%">
                    <tr>
                        <td class="loginbar2" style="font-size:15px;"><b>��<%=Region %><%=HuXing %><%=SellPrice %>����</b></td>
                    </tr>
                    <tr>
                        <td align="center" class="lineheight2">
                            <a href="javascript:window.external.addFavorite('<%=PageUrl %>','<%=HouseName %>')">
	                                <img src="images/nav.gif" align="absmiddle" />&nbsp;�ղظ÷�Դ
	                            </a> &nbsp;
	                            <a  onclick="JavaScript: clipboardData.setData('Text','<%=CopyPageUrl %>');alert('��ҳ���ַ�Ѿ����ƣ�������ͨ��CTRL+V������Ҽ�ճ���õ�ַ');return false;" href="JavaScript:;" >
	                            <img src="images/nav.gif" align="absmiddle" />&nbsp;�Ƽ��˷�������</a>
	                            <a  href='<%=DoReport() %>' target="_blank">
	                            <img src="images/nav.gif" align="absmiddle" />&nbsp;�ٱ���ٷ�Դ</a>
                        </td>
                    </tr>
                </table>
                <table width="100%" bgcolor="#cccccc" cellpadding="1" cellspacing="1">
                    
                    <tr>
                        <td class="itemtitle" bgcolor="white" style="">����ʱ�䣺</td>
                        <td bgcolor="white" class="itemtitle" style="background: white"><%=PubDate %></td>
                        <td class="itemtitle" bgcolor="white">��Ч�ڣ�</td>
                        <td bgcolor="white" class="itemtitle" colspan="3" style="background: white"><%=AvaiDate %>��</td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle" style="">������</td>
                        <td bgcolor="white" class="itemtitle" style="background: white"><%=Region %></td>
                        <td bgcolor="white" class="itemtitle">��ҵ���ͣ�</td>
                        <td bgcolor="white" class="itemtitle" colspan="3" style="background: white"><%=LeiXing %></td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle" style="">���ݻ��ͣ�</td>
                        <td bgcolor="white" class="itemtitle" style="background: white" colspan="5"><%=HuXing %></td>
                    </tr>
                   
                    <tr>
                        <td bgcolor="white" class="itemtitle" style="">¥�㣺</td>
                        <td bgcolor="white" class="itemtitle" style="background: white" colspan="5"><%=Floor %>¥</td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle">
                            ¥��Ҫ��</td>
                        <td bgcolor="white" class="itemtitle" style="background: white"><%=HouseAge %>
                        </td>
                        <td bgcolor="white" class="itemtitle">
                            ���ݳ���</td>
                        <td bgcolor="white" class="itemtitle" style="background: white" colspan="3"><%=FangWei %>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle">���Ҫ��
                        </td>
                        <td bgcolor="white" class="itemtitle" style="background: white" colspan="5"><%=HouseSize %>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle">֤��Ҫ��
                        </td>
                        <td bgcolor="white" class="itemtitle" style="background: white" colspan="5"><%=FCZ %>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="white" class="itemtitle">�����ۼۣ�
                        </td>
                        <td bgcolor="white" class="itemtitle" style="background: white" colspan="5"><span class="price"><%=SellPrice%></span>
                        </td>
                    </tr>
                    
                    
                    
                </table>
                
                <table border="0" style="width: 100%; height: 100%">
                <tr>
                
                    </tr>
                    <tr>
                        <td colspan="2" class="titlehead">��ϵ��ʽ
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="3" width="85" class="lineheight2" align="center" valign="top">
                            
                            <%=SPic %>
                        </td>
                        <td rowspan="3" class="lineheight2" >
                         
                         ��ϵ�ˣ�<%=RealName %>
                       <br />
                            ��ϵ�绰��<span class="font15"><b><%=Tel %><br /><%=Mobile %></b></span>
                            <br /><%=UserEmail %>
                             <%=QQ %>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                </table>
                
                
                    <div class="twocolumnleftbody">
                        <div class="titlehead">������</div>
                        <div class="intro"><%=Details %></div>
                    </div>
                </div>
                 <div class="columnrightbody">
                   <div class="columnright" style="border:0px;">
                    
                     <a href='<%=FormatUrl.AddBuyUrl() %>'>
                                <img src="images/pubqgbg.gif" align="absmiddle" />
                            </a>
                       <a href='<%=FormatUrl.RegisterUrl() %>'>
                                <img src="images/reg2.gif" align="absmiddle" />
                            </a>
                </div>   
                <div class="columnright">
                     
                    <div class="titlehead"><img src="images/line.gif" align="absmiddle" />&nbsp;��վ�Ƽ�������
                    </div>
                    <div class="adrightitem">
                        <%=V.AgentByRecom(2, false, true, true, true, true, 90, 80, 10, "lineheight2")%>
                    </div>
                </div>
                 

            </div>
            </div>
        
        <div><uc2:Footer ID="Footer2" runat="server" /></div>
    </form>


</body>
</html>
