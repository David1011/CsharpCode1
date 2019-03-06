<%@ page language="C#" autoeventwireup="true" inherits="RentList, House_FreeV2_deploy" enableEventValidation="false" %>

 
<%@ Register Src="Search_Rent.ascx" TagName="Search_Rent" TagPrefix="uc3" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=PageTitle %>,<%=Common.GetSiteName() %></title>
     <meta name="keywords" content=<%=PageTitle %> />
    <meta name="description" content="���ݳ��ⷿ��Ϣ,ÿ����ǧ����Ϣ����" />
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
                    <a href='<%=FormatUrl.RentHomeUrl() %>'><%=Common.GetCityName() %>�ⷿ</a>
                    
                    <%=RegName %>
                    <%=AreaName %>
                    <%=Sub %>
                </div>
            </div>
        <!--���ٲ�ѯ-->
         <div class="columncontain">
            <div class="listborder" style="border:0px;">
                <div class="navregion">
               
                <b>������</b>
                <asp:datalist id="regionList" Runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal"
				ItemStyle-HorizontalAlign="Center" EnableViewState="false" Width="90%">
										<ItemStyle HorizontalAlign="Center"></ItemStyle>
						<ItemTemplate>
								<a href='<%#FormatUrl.RentListByRegionUrl(Eval("RegionID").ToString())%>'>
									<%#Eval("RegionName") %>
								</a>
					    </ItemTemplate>
                </asp:datalist>
	            
                <asp:DataList ID="areaList" BackColor="#f3f3f3"  ItemStyle-HorizontalAlign="Center" RepeatDirection="Horizontal" RepeatLayout="Flow"
			                    Runat="server" EnableViewState="False" Width="90%">
                        <ItemTemplate>
	                        <a href='<%#FormatUrl.RentListByAreaUrl(Eval("AreaID").ToString())%>'>
		                        <%#Eval("AreaName") %>
	                        </a>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
	            </asp:DataList>
                </div>
                 <div class="navregion">
                    <b>�����ͣ�</b>
                    <a href="<%=XiaoQu %>">С��סլ</a>&nbsp;
                    <a href="<%=MinFang %>">��/����¥</a>&nbsp;
                    <a href="<%=GaoCheng %>">�߲�סլ</a>&nbsp;
                    <a href="<%=XieZi %>">д��¥</a>&nbsp; 
                    <a href="<%=ShangPin %>">��Ʒ��</a>&nbsp; 
                    <a href="<%=CangKu %>">�ֿ�</a>&nbsp; 
                    <a href="<%=ChangFang %>">����</a>&nbsp;
                    <a href="<%=ShangPu %>" style="color:#ff6600;">����</a>&nbsp; 
                    <a href="<%=GongYu %>">��Ԣ</a>&nbsp; 
                    <a href="<%=BeiXu %>">����</a>
                </div>
                 <div class="navregion">
                    <b>�������</b>
                    <a href="<%=Single %>">����</a>&nbsp;
                    <a href="<%=One %>">һ��</a>&nbsp;
                    <a href="<%=Two %>">����</a>&nbsp;
                    <a href="<%=Three %>">����</a>&nbsp; 
                    <a href="<%=Four %>">�ķ�</a>&nbsp; 
                    <a href="<%=Five %>">�巿</a>&nbsp; 
                    <a href="<%=FuShi %>">��ʽ¥</a>&nbsp;
                    <a href="<%=Under %>">������</a>&nbsp; 
                    <a href="<%=Oth %>">��������</a>&nbsp; 
                </div>
                 <div class="navregion">
                     <b>�����</b>
                    <a href="<%=SW %>">500����</a>&nbsp;
                    <a href="<%=WS %>">500-1000</a>&nbsp;
                    <a href="<%=BS %>">1000-1500</a>&nbsp;
                    <a href="<%=YES %>">1500-2000</a>&nbsp; 
                    <a href="<%=EBW %>">2000-2500</a>&nbsp; 
                    <a href="<%=YH %>">2500-3000</a>&nbsp; 
                    <a href="<%=SQ %>">3000����</a>&nbsp; 
       
                </div>
                <div class="navregion">
                     <b>�����ڣ�</b>
                    <a href="<%=ZZ %>">����</a>&nbsp;
                    <a href="<%=RZ %>">����</a>&nbsp;
                    <a href="<%=DZ %>">����</a>&nbsp;
       
                </div>
                <hr />
             </div>
             <div class="columnrightbody">
                <div class="columnright" style="border:0px;"><br />
                    <table width="98%">
                        <tr>
                        <td class="lineheight">
                            <a href='<%=FormatUrl.AddRentUrl() %>'>
                                <img src="<%=Common.GetSiteUrl() %>/images/pubrent.gif" align="absmiddle" />
                            </a>
                        </td>
                        <td class="lineheight">
                             <a href='<%=FormatUrl.AddQiuZuUrl() %>'>
                                <img src="<%=Common.GetSiteUrl() %>/images/pubqz2.gif" align="absmiddle" />
                            </a>
                        </td>
                        </tr>
                        <tr>
                        <td class="lineheight">
                             <a href='<%=FormatUrl.QiuZuHomeUrl() %>'>
                                <img src="<%=Common.GetSiteUrl() %>/images/rents.gif" align="absmiddle" />
                            </a>
                        </td>
                        <td class="lineheight">
                             <a href='<%=FormatUrl.RegisterUrl() %>'>
                                <img src="<%=Common.GetSiteUrl() %>/images/reg2.gif" align="absmiddle" />
                            </a>
                        </td>
                        </tr>
                    </table>
                </div>
             </div>
         </div> 
        <div class="middlebody">
                <div class="listborderbody">
                <table cellpadding="0" cellspacing="0" border="0" align="left" width="710">
                <tr>
                    <td  class="blueblock" nowrap width="95">
                        <a href='<%=FormatUrl.RentHomeUrl() %>'><b>�����ⷿ</b></a>
                    </td>
                    
                    <td  class="silverblock" nowrap width="95">
                        <a href='<%=FormatUrl.RentHomeUrl()+"?source=p" %>'>���˷�Դ</a>
                    </td>
                    <td  class="silverblock" nowrap width="95">
                        <a href='<%=FormatUrl.RentHomeUrl()+"?source=a" %>'>�����˷�Դ</a>
                    </td>
                    <td  class="silverblock" nowrap width="95">
                        <a href='<%=FormatUrl.QiuZuHomeUrl() %>'>���ⷿԴ</a>
                    </td>
                    <td width="330"></td>
                </tr>
               </table>
                <div class="listborder">
                <asp:DataList ID="dltoplist" DataKeyField="RentID" runat="server"  EnableViewState="false" Width="100%">
                            <HeaderTemplate>
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                <tr >
                                    
                                    <td  class="loginbar2" nowrap width="70">����</td>
                                    <td class="loginbar2"  nowrap width="330" align="left">����</td>
                                    <td class="loginbar2" nowrap width="70">���</td>
                                    <td class="loginbar2" nowrap width="70">���</td>
                                    <td class="loginbar2" nowrap width="50">���</td>
                                    <td class="loginbar2" nowrap width="40">ʱ��</td>
                                    
                                    
                                </tr>
                            </HeaderTemplate>
                        <ItemTemplate>
                            <tr  onmouseover="javascript:this.style.backgroundColor='#f3f3f3';" onmouseout="javascript:this.style.backgroundColor='#FFFFFF';">
                            
                            <td class="listitem" align="center" width="70">
                                <a  href='<%#FormatUrl.RentListByRegionUrl(Eval("RegionID").ToString())%>'>
                                    <%#Eval("RegionName") %>
                               </a>
                            </td>
                            
                            <td class="listitem_title" width="330">
                                <a target="_blank" href='<%#FormatUrl.RentContentUrl(Eval("RentID").ToString())%>'>
                                    <%#Common.myStringWidthoutDot(Eval("Title").ToString(),36) %>
                                 </a>
                                 &nbsp;<img src="images/ding.gif" alt="�ⷿ" />
                                 
                                 <%#Common.FilterPicInfo(Eval("SPic").ToString()) %>
                                 <br />
                                <%#Eval("QuarterName") %> <%#Eval("LeiXing") %> ¥��(<%#Eval("Floors") %>/<%#Eval("TopFloors") %>)
                            </td>
                             <td class="listitem" width="70">
                               <%#Convert.ToString(DataBinder.Eval(Container.DataItem,"HuXing"))%>
                            </td>
                            <td class="listitem" width="70">
                                <%#Common.FilterHouseSize(Eval("HouseSize").ToString()) %>
                            </td>
                            <td class="listitem" width="50">
                                <%#Common.FilterRentPrice(Eval("RentPrice").ToString(),Eval("RentUnit").ToString()) %>
                            </td>

                            <td class="listitem" width="40">
                                <%#Eval("AddDate","{0:d}").ToString().Substring(5)%>
                            </td>
                            
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate></table></FooterTemplate>
                        </asp:DataList>
                        <asp:DataList ID="dlselllist" DataKeyField="RentID" runat="server"  EnableViewState="false" Width="100%">
                            <HeaderTemplate>
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                
                            </HeaderTemplate>
                        <ItemTemplate>
                            <tr  onmouseover="javascript:this.style.backgroundColor='#f3f3f3';" onmouseout="javascript:this.style.backgroundColor='#FFFFFF';">
                            
                            <td class="listitem" align="center" width="70">
                                <a  href='<%#FormatUrl.RentListByRegionUrl(Eval("RegionID").ToString())%>'>
                                    <%#Eval("RegionName") %>
                               </a>
                            </td>
                            
                            <td class="listitem_title" width="330">
                                <a target="_blank" href='<%#FormatUrl.RentContentUrl(Eval("RentID").ToString())%>'>
                                    <%#Common.myStringWidthoutDot(Eval("Title").ToString(),36) %>
                                 </a>
                                 <%#Common.FilterPicInfo(Eval("SPic").ToString()) %>
                                  <br />
                                <%#Eval("QuarterName") %> <%#Eval("LeiXing") %> ¥��(<%#Eval("Floors") %>/<%#Eval("TopFloors") %>)
                            </td>
                             <td class="listitem" width="70">
                               <%#Convert.ToString(DataBinder.Eval(Container.DataItem,"HuXing"))%>
                            </td>
                            <td class="listitem" width="70">
                                <%#Common.FilterHouseSize(Eval("HouseSize").ToString()) %>
                            </td>
                            <td class="listitem" width="50">
                                <%#Common.FilterRentPrice(Eval("RentPrice").ToString(),Eval("RentUnit").ToString()) %>
                            </td>

                            <td class="listitem" width="40">
                                <%#Eval("AddDate","{0:d}").ToString().Substring(5)%>
                            </td>
                            
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate></table></FooterTemplate>
                        </asp:DataList>
                        <br />
                        <div>
                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" EnableTheming="true" FirstPageText="��ҳ" HorizontalAlign="center" LastPageText="βҳ" NextPageText="��һҳ" OnPageChanged="AspNetPager1_PageChanged" PageIndexBoxType="DropDownList" PageSize="20" PrevPageText="ǰһҳ" ShowPageIndexBox="Always" TextBeforePageIndexBox="ת�� " CssClass="pagercss" UrlPageIndexName="p" UrlPaging="false" Width="100%">
                            </webdiyer:AspNetPager>
                        </div>
                        
                </div>
                
                  </div>
            
                <div class="columnrightbody">
                    <div class="columnright">
                        <div class="titlehead">ʮ��𼱳���ķ�Դ</div>
                        <div class="adrightitem">
                              <%=V.RentByRecom(5,false,false,false,false,false,false,false,false,15,true,0,0,"dot") %>
                        </div>
                    </div>
                    <div class="columnright">
                        <div class="titlehead"><img src="<%=Common.GetSiteUrl() %>/images/line.gif" align="absmiddle" />&nbsp;��վ�Ƽ�������</div>
                        <div class="adrightitem">
                            <%=V.AgentByRecom(2, false, true, true, true, true, 90, 80, 10, "lineheight2")%>
                            
                        </div>
                    </div>
                    <div class="columnright">
                        <div class="titlehead"><img src="<%=Common.GetSiteUrl() %>/images/line.gif" align="absmiddle" />&nbsp;�������ⷿԴ</div>
                        <div class="adrightitem">
                             <%=V.QiuZu(10,true,15,false,"dot") %>
                            <center><span><a href='<%=FormatUrl.QiuZuHomeUrl() %>' target="_blank"><font color="red">����������Ϣ>>></font></a></span></center>
                        </div>
                    </div>
                    
                    <div class="columnright">
                        <div class="titlehead">�ָⷿ��</div>
                        <div class="adrightitem">
                            <%=V.News(0,98,8,false,14,true,false,true,"dot") %>
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
