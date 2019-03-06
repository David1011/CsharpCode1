<%@ page language="C#" autoeventwireup="true" inherits="AskList, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="Searcher_Ask.ascx" TagName="Searcher_Ask" TagPrefix="uc1" %>
<%@ Register Src="AskClassList.ascx" TagName="AskClassList" TagPrefix="uc3" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=PageTitle %>,<%=Common.GetCityName()%>������Ѷ,<%=Common.GetSiteName()%></title>
    <meta name="keywords" content="���ݷ�����Ѷ,���ݷ�������,����¥��" />
    <meta name="description" content="��վ�ǻ�����רҵ�ⷿ�����ַ���Ϣ��,ÿ�����������Ϣ,�ڻ��ݵ����нϺõĿڱ�,�������ϲ��.Ϊ����ʮ��רҵ������" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="robots" content="index,follow">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/search.js" language="javascript"></script>
    <script type="text/javascript" src="js/ajax.js" language="javascript"></script>

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
                        <uc1:Searcher_Ask ID="Searcher_Ask1" runat="server" />
                     </div>
               
            </div>
         
<div class="columncontain">
<table width=100%>
	<tr>
	<td width=4 bgcolor="#c41717">
	</td>
	<td>
<a href='<%=FormatUrl.AskHomeUrl() %>'><img src="images/news_logo.gif" /></a>
	</td>
	<td>
<table width=100% style="background:#c41717 ;height:43px;">
	<tr>
	<td  align=left>
<uc3:AskClassList id="AskClassList1" runat="server"></uc3:AskClassList>  
	</td>
	</tr>
	<tr>
	<td>

	</td>
	</tr>
</table>
	</td>
	</tr>
</table>

    </div>
        <div class="columncontain"><div style="text-align:left;">
             
            <asp:DataList ID="dlsubclass" ItemStyle-HorizontalAlign="left" EnableViewState="false" RepeatDirection="horizontal" runat="server" RepeatColumns="10">
                    <ItemTemplate>
                        
                            &nbsp;<img src="images/nav.gif"  align="absmiddle"/>&nbsp;<a href ='<%#FormatUrl.AskListBySid(Convert.ToInt32(Eval("SubClassID").ToString())) %>'>
                                <%#Eval("SubClassName") %>
                            </a>
                        
                    </ItemTemplate>
                </asp:DataList></div>
        </div>
        
        <div class="columncontain">
            <div  class="twocolumnleft">
                <div class="titlehead">
                   
                    <a href='<%=FormatUrl.HomeUrl() %>'>��վ��ҳ</a>&nbsp;>&nbsp;
                    <a href='<%=FormatUrl.AskHomeUrl() %>' >������Ѷ</a>
                    <%=Current %>
                </div>
                
                <!--��ǰ��Ŀ����-->
                <%=V.NewsPicByCurrentClassHot(5,false,0,120,110,20,"lineheight2",true) %>
                
                <asp:DataList ID="dllist"  EnableViewState="false" Width="100%" runat="server">
                    <HeaderTemplate>
                        <table Width="100%" >
                            
                    </HeaderTemplate>
                    <FooterTemplate></table></FooterTemplate>
                    <ItemTemplate>
                            <tr  onmouseover="javascript:this.style.backgroundColor='#f3f3f3';" onmouseout="javascript:this.style.backgroundColor='#FFFFFF';">
                                <td>��</td>
                                <td class="font14dotitem">
                                    <a title='<%#Eval("Title") %>' href ='<%#FormatUrl.AskContentUrl(Eval("NewsID").ToString()) %>' target="_blank">
                                        <%#Common.FilterTitle(Eval("Title").ToString(), Eval("TitleColor").ToString(),30)%>
                                    </a><br />
                                    <%#Common.myStringWidthoutDot(Eval("UserEmail").ToString(), 50)%>
                                </td>

                                <td class="font14dotitem" nowrap align="center"><%#Eval("AddDate","{0:d}") %></td>
                            </tr>
                        
                    </ItemTemplate>
                </asp:DataList>
               <br />
               
                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" EnableTheming="true" FirstPageText="��ҳ" HorizontalAlign="center" LastPageText="βҳ" NextPageText="��һҳ" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="DropDownList" PageSize="20" PrevPageText="ǰһҳ" ShowPageIndexBox="Always" TextBeforePageIndexBox="ת�� " CssClass="pagercss" UrlPageIndexName="p" UrlPaging="false" Width="700px">
                    </webdiyer:AspNetPager>
               
               
            </div>
             <div class="columnrightbody">
                
                
                <div class="columnright">
                         <div class="titlehead">�������а�</div>
                         <%=V.NewsByHot(10,false,false,true,false,18,"dot") %>
                         <div class="titlehead">����ͼ˵</div>
                        <%=V.NewsPicByHot(0, 0, 4, true, 35, 90, 80, 12, "dot", false) %>
                        
                        
                    </div>
            </div>
        </div>
        
        <div>
            <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
