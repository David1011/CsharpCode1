<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="C#" autoeventwireup="true" inherits="Default2, House_FreeV2_deploy" enableEventValidation="false" %>

<%@ Register Src="Searcher.ascx" TagName="Searcher" TagPrefix="uc10" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc8" %>

<%@ Register Src="FriendLinks.ascx" TagName="FriendLinks" TagPrefix="uc5" %>

<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head id="Head1" runat="server">
   <title><%=Common.GetCityName() %>����_<%=Common.GetCityName()%>������_��¥��_<%=Common.GetCityName()%>���ַ�_<%=Common.GetCityName()%>�ⷿ��</title>
    <meta name="keywords" content="���ݷ���,���ݷ�����,�����ⷿ��,���ݶ��ַ�" />
    <meta name="description" content="���ݷ������ǻ�����ʮ�ѷ�����֮һ���ṩҵ����̳����ƽ̨�����羭���˷���ƽ̨�����ܹ�����Ѻ���" />

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
            <uc8:LoginUC id="LoginUC1" runat="server" />            
        <uc1:Header ID="Header1" runat="server" />
        <div class="columncontain">
            
            <uc10:Searcher id="Searcher1" runat="server" />
            
        </div>
        
        <div class="columncontain">
            <div class="columnleft">
                   
                    <div class="columnright">
                        <%=V.SiteSlideFlash(4,250,250,20,"lineheight2") %>
                     </div>
                     <div class="columnright">
                       <div class="titlehead">
                        <div class=floatleft><a href='<%=FormatUrl.AskListBySid(0) %>'>���̶�̬</a></div>
                        <div class=normalright><a href='<%=FormatUrl.AskListBySid(0) %>'>����>>></a></div>
                       </div>
                        <%=V.NewsPic(0, 0, 5, true, 28, 60, 69, 14, "lineheight", false)%>
                        <%=V.LouPanPicByHot(2,10,false,true,100,100,"lineheight2") %>
                     </div>
                     
                     
                    
                </div>   
                <div class="columnmiddle">
                    <div class="border">
                     <div class="titlehead">
                        <div class="floatleft">
                            <a href="<%=FormatUrl.AskHomeUrl() %>">���ݷ�����Ѷ</a>
                        </div>
                        <div class="floatright"><a href="http://www.0752house.com/bbs/index.htm" target=_blank style="color:orange;">������̳</a></div>
                    </div>
                    <div >
                       <%=V.NewsOfHeadLine(2, true, false, 15, "headline", "headlineintro")%>
                       <div style="padding-bottom:13px;"></div>
                       <%=V.News(0, 0, 10, false, 24, false, true, true, "todaynewsitem")%>
                       <hr class="dothr" />
                       
                       <%=V.News(0, 0, 9, false, 24, false, true, true, "todaynewsitem")%>
                       <%=V.NewsPicByHot(0,0,4,false,0,100,80,15,"lineheight2",true) %>
                    </div>

                   </div>
                </div>
                
                <div class="columnrightbody">
                     <div class="columnright">
			            <div class="titlehead">��վ����</div>
                         <%=V.AfficheOfSite(1, true, 200, true, "lineheight2")%>
                    </div>
                   <div class="columnright">
                    <div class="titlehead">��ע�ᷢ����Ϣ</div>
                    <div style="line-height:200%;font-size:14px;text-align:center;">
                        <a href="AddSell_Anon.aspx" style="color:Red;">��������</a>
                        <a href="AddRent_Anon.aspx">��������</a><br />
                        <a href="AddBuy_Anon.aspx" style="color:Red;">������</a>
                        <a href="AddQiuZu_Anon.aspx">��������</a>
                    </div>
                   </div>
                   
                        <div class="columnright">
                        
                            <div class="titlehead">
                                <div class=floatleft><a href='<%=FormatUrl.AskListBySid(0) %>'>��������</a></div>
                                <div class=normalright><a href='<%=FormatUrl.AskListBySid(0) %>'>����>>></a></div>
                            </div>
                                <%=V.News(0, 0, 8, false, 15, false, true, true, "dot")%>
                        </div>
                        
                        <div class="columnright">
                        
                            <div class="titlehead">
                                <div class=floatleft><a href='<%=FormatUrl.AskListBySid(0) %>'>ר�ҿ���</a></div>
                                <div class=normalright><a href='<%=FormatUrl.AskListBySid(0) %>'>����>>></a></div>
                            </div>
                                <%=V.NewsPicByHot(0,0,2,false,0,100,80,15,"lineheight2",true) %>
                                <%=V.News(0, 0, 6, false, 15, false, true, true, "dot")%>
                        </div>
                    </div>
                
                </div>
            
        
       <div class="columncontain2">
            <div class="recomloupanbg">
                <div style="font-size:14px;font-weight:bold;text-align:left;line-height:150%;color:#000;">
                    &nbsp;<a href='<%=FormatUrl.LouPanHomeUrl() %>'>����¥���Ƽ�</a>
                </div>
                <%=V.LouPanByRecom(6,8,true,true,150,140,"lineheight2") %>
            </div>
       </div>


        <div class="longheadbg">&nbsp;&nbsp;��������</div>
        <div class="columncontain">
             
                <div class="columnleft">
                
                <div class="border">
                     <div class="titlehead">
                        ����/����/д��¥����
                    </div>
                    
                    <%=V.RentByLeiXing(5, "д��¥", false, false, false, false, true, false, false, false, 13, true, 0, 0, "lineheight2")%>
                    <hr class="dothr" />
                    <%=V.RentByLeiXing(5, "����", false, false, false, false, true, false, false, false, 13, true, 0, 0, "lineheight2")%>
                    <hr class="dothr" />
                    <%=V.RentByLeiXing(5, "����", false, false, false, false, true, false, false, false, 13, true, 0, 0, "lineheight2")%>
                    </div>
                
                <div class="border">
                     <div class="titlehead">
                        ��ҵͶ��
                    </div>
                    <div style="padding-bottom:3px;padding-top:3px;">
                        <%=V.NewsPicByHot(0, 0, 2, false, 0, 100, 80, 9, "lineheight2", true)%>
                    </div>
                    <%=V.News(0, 0, 9, false, 18, false, false, true, "dot")%>
                    </div>
               </div>
            
            <div class="columnmiddle">
                <div class="border">
                    <div class="titlehead">�Ƽ�������</div>
                    <div class="recomloupanbg">
                        <%=V.AgentByRecom(2,true,true,true,true,true,82,102,6,"lineheight2") %>
                    </div>
                </div>
                <div class="border">
                <div class="titlehead">
                    <div class="floatleft">
                        <a href='<%=FormatUrl.SellHomeUrl() %>'>���ַ���Ϣ</a>
                      
                    </div>
                    <div class="floatright" ><a href='<%=FormatUrl.SellHomeUrl() %>'>����>>></a>&nbsp;</div>
                    
                </div>
                <div>
                     <%=V.Sell(10,true,true,false,false,false,false,false,true,15,true,0,0,"dot") %>
                </div>
                <div class="titlehead">
                    <div class="floatleft">
                        <a href='<%=FormatUrl.RentHomeUrl() %>'>�ⷿ��Ϣ</a>
                        
                    </div>
                    <div class="floatright" ><a href='<%=FormatUrl.RentHomeUrl() %>'>����>>></a>&nbsp;</div>
                    
                    
                    
                </div>
                    <%=V.Rent(10,true,true,false,false,false,false,false,true,15,true,0,0,"dot") %>
                    
            </div>
               
            </div>
            <div class="columnrightbody">
                <div class="columnright">
                    <div class="titlehead">�¼��뾭����</div>
                    <%=V.AgentByNewest(4,true,true,true,false,7,"dot") %>
                </div>
                <div class="columnright">
                    <div class="titlehead" style="background-image:none;">���ٲ��Ҷ��ַ�</div>
                    <div class="navregion">
                        �����ͣ�
                        <a href='<%=FormatUrl.SellListByHouseHoldOneUrl() %>' class="black" >һ��</a>&nbsp;
                        <a href='<%=FormatUrl.SellListByHouseHoldTwoUrl() %>' class="black" >����</a>&nbsp;
                        <a href='<%=FormatUrl.SellListByHouseHoldThreeUrl() %>' class="black" >����</a>&nbsp;
                        <a href='<%=FormatUrl.SellListByHouseHoldFourUrl() %>' class="black" >�ķ�</a>&nbsp;
                        <a href='<%=FormatUrl.SellListByHouseHoldFiveUrl() %>' class="black" >�巿</a>&nbsp;
                        <a href='<%=FormatUrl.SellListByHouseHoldFsUrl() %>' class="black" >��ʽ¥</a>
                    </div>
                    <div class="navregion">
                        ���ۼۣ�
                        <a href='<%=FormatUrl.SellListByPrice35Url() %>' class="black" >35������</a>&nbsp;
                        <a href='<%=FormatUrl.SellListByPrice3550Url() %>' class="black" >35-50��</a>&nbsp;
                        <a href='<%=FormatUrl.SellListByPrice5080Url() %>' class="black" >50-80��</a>&nbsp;
                        <a href='<%=FormatUrl.SellListByPrice80120Url() %>' class="black" >80-120��</a>&nbsp; 
                        <a href='<%=FormatUrl.SellListByPrice120200Url() %>' class="black" >120-200��</a>&nbsp; 
                        <a href='<%=FormatUrl.SellListByPrice20010000Url() %>' class="black" >200������</a>&nbsp; 
                    </div>
                </div>
                
                <div class="columnright">
                    <div class="titlehead" style="background-image:none;">���ٲ����ⷿ</div>
                    <div class="navregion">
                        ����ۣ�
                        <A href='<%=FormatUrl.RentListByPrice500Url() %>' class="black" >500����</A>&nbsp; 
                        <A href='<%=FormatUrl.RentListByPrice5001000Url() %>' class="black" >500��1000</A>&nbsp;
                        <A href='<%=FormatUrl.RentListByPrice10001500Url() %>' class="black" >1000��1500</A>&nbsp; 
                        <A href='<%=FormatUrl.RentListByPrice15002000Url() %>' class="black" >1500�� 2000</A>&nbsp; 
                        <A href='<%=FormatUrl.RentListByPrice20002500Url() %>' class="black" >2000��2500</A>&nbsp; 
                        <A href='<%=FormatUrl.RentListByPrice25003000Url() %>' class="black" >2500��3000</A>
                         
                     </div>
                </div>
                <div class="columnright">
                    <div class="titlehead">
                        ����Ϣ
                    </div>
                    
                        <%=V.QiuGou(5,true,15,true,"dot") %>
                    
                </div>
                <div class="columnright">
                    <div class="titlehead">
                        ������Ϣ
                    </div>
                    
                        <%=V.QiuZu(5,true,15,true,"dot") %>
                    
                </div>
                <div class="columnright">
                <div class="titlehead">
                        �����г�
                    </div>
                    
                    <%=V.News(0, 0, 4, false, 18, false, false, true, "dot")%>
               </div>
            </div>
            
           
            </div>
        
        <!---->
        
        
        
        <uc5:FriendLinks ID="FriendLinks1" runat="server" />
        <uc2:Footer ID="Footer1" runat="server" />
        
        
    </form>
</body>
</html>
