<%@ page language="C#" autoeventwireup="true" inherits="QiuZu, House_FreeV2_deploy" enableEventValidation="false" %>

<%@ Register Src="Search_Rent.ascx" TagName="Search_Rent" TagPrefix="uc3" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title><%=Common.GetCityName() %>������Ϣ,<%=Common.GetCityName() %>�ⷿ��Ϣ,<%=Common.GetSiteName() %></title>
    <meta name="keywords" content="��������,�����ⷿ��Ϣ" />
    <meta name="description" content="����������Ϣ,���ݷ�����" />
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
                        <uc3:Search_Rent ID="Search_Rent1" runat="server" />
                     </div>
               
            </div>
            <div class="columncontain">
                <div class="currnavtop">
                &nbsp;����λ�ã�
                <a href='<%=FormatUrl.HomeUrl() %>'>��վ��ҳ</a>&nbsp;>&nbsp;
               
                <a href='<%=FormatUrl.QiuZuHomeUrl() %>'>���ⷿ��Ϣ</a>
            </div>
            </div>
        <!--���ٲ�ѯ-->
         <div class="columncontain">
            <div class="listborder" style="border:0px;">
               <table width="450px" align="right">
                        <tr>
                        <td class="lineheight">
                            <a href='<%=FormatUrl.AddRentUrl() %>'>
                                <img src="images/pubrent.gif" align="absmiddle" />
                            </a>
                        </td>
                        <td class="lineheight">
                             <a href='<%=FormatUrl.AddQiuZuUrl() %>'>
                                <img src="images/pubqz2.gif" align="absmiddle" />
                            </a>
                        </td>
                        
                        <td class="lineheight">
                             <a href='<%=FormatUrl.QiuZuHomeUrl() %>'>
                                <img src="images/rents.gif" align="absmiddle" />
                            </a>
                        </td>
                        <td class="lineheight">
                             <a href='<%=FormatUrl.RegisterUrl() %>'>
                                <img src="images/reg2.gif" align="absmiddle" />
                            </a>
                        </td>
                        </tr>
                    </table>
             </div>
             <div class="columnrightbody">
                <div class="columnright" style="border:0px;">
                    
                </div>
             </div>
         </div> 
        <div class="middlebody">
                <div class="listborderbody">
                <table cellpadding="0" cellspacing="0" border="0" align="left" width="710">
                <tr>
                    <td  class="blueblock" nowrap width="95">
                        <a href='<%=FormatUrl.RentHomeUrl() %>'><b>��������</b></a>
                    </td>
                    
                    <td width="615"></td>
                </tr>
               </table>
                <div class="listborder" >
              <asp:DataList ID="dlbuylist" DataKeyField="QZID" runat="server"  EnableViewState="false" Width="100%">
            <HeaderTemplate>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr >
                    <td class="loginbar2"  nowrap width="200" style="text-align:left;">&nbsp;�������</td>
                    <td class="loginbar2" nowrap width="70">��������</td>
                    <td class="loginbar2"  nowrap width="90">����Ҫ��</td>
                    <td class="loginbar2" nowrap width="70">����Ҫ��</td>
                    <td class="loginbar2" nowrap width="80">�������</td>
                    <td class="loginbar2" nowrap width="40">ʱ��</td>
                   
                </tr>
            </HeaderTemplate>
        <ItemTemplate>
            <tr  onmouseover="javascript:this.style.backgroundColor='#f3f3f3';" onmouseout="javascript:this.style.backgroundColor='#FFFFFF';">
            <td class="listitem_title" width="200">
             <a target="_blank" href='<%#FormatUrl.QiuZuContentUrl(Eval("QZID").ToString())%>'>
                <%#Common.myStringWidthoutDot(Eval("Title").ToString(),18) %>
             </a>
            </td>
            <td class="listitem" width="70">&nbsp;
                <%#Eval("LeiXing")%>
            </td>
            <td class="listitem" width="90">&nbsp;
               <%#Eval("Region")%>
            </td>
             <td class="listitem" width="70">
               <%#Eval("HuXing")%>
            </td>
            
            <td class="listitem" width="80" nowrap>
                <%#Common.FilterQiuZuPrice(Eval("RentPrice").ToString()) %>
            </td>

            <td class="listitem" width="40">
                <%#Eval("AddDate","{0:d}").ToString().Substring(5)%>
            </td>
            
            </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>
        </asp:DataList>
                        <br />
                        <webdiyer:AspNetPager ID="AspNetPager1" CssClass="pagercss"  runat="server" EnableTheming="true" FirstPageText="��ҳ" HorizontalAlign="center" LastPageText="βҳ" NextPageText="��һҳ" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="DropDownList" PageSize="20" PrevPageText="ǰһҳ" ShowPageIndexBox="Always" TextBeforePageIndexBox="ת�� " UrlPageIndexName="p" UrlPaging="false" Width="100%">
                    </webdiyer:AspNetPager>
                      
                </div>
                
                  </div>
            
                <div class="columnrightbody">
                    <div class="columnright">
                        <div class="titlehead"><img src="images/line.gif" align="absmiddle" />&nbsp;��վ�Ƽ�������</div>
                        <div class="adrightitem">
                            <%=V.AgentByRecom(2,false,true,true,true,true,82,102,6,"lineheight2") %>
                        </div>
                    </div>
                    
                    
                    
                </div>
        </div>
        <div>
            <uc2:Footer ID="Footer2" runat="server" />
        </div>
    </form>
</body>

</html>
