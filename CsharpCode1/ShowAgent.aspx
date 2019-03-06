<%@ page language="C#" autoeventwireup="true" inherits="ShowAgent, House_FreeV2_deploy" enableEventValidation="false" %>

<%@ Register Src="ShopHeader.ascx" TagName="ShopHeader" TagPrefix="uc1" %>

<%@ Register Src="ShopRight.ascx" TagName="ShopRight" TagPrefix="uc3" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=PageTitle %>,<%=Common.GetCityName() %>中介网店,<%=Common.GetCityName() %>房产中介</title>
   <meta name="keywords" content="惠州中介网店,惠州房产中介" />
    <meta name="description" content="惠州中介网店,惠州房产中介" />
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
     <uc1:ShopHeader ID="ShopHeader1" runat="server" />
    <div class="columncontain">
        <div class="columnrightbody" style="float:left;">
            <uc3:ShopRight id="ShopRight2" runat="server" />
         </div>
        <div class="twocolumnleft" style="float:right;">
           
                <div class="titlehead">推荐房源</div>
                <div class="bgwhite">
                     <asp:DataList id="dlrecomsell" runat="server" ItemStyle-HorizontalAlign="left" EnableViewState="false" RepeatColumns="3" RepeatDirection="horizontal">
                            <ItemTemplate>
                                <div class="shoprecom">
                                    <div class="shoprecombody">
                                        <a href='<%#FormatUrl.SellContentUrl(Convert.ToInt64(Eval("SellID").ToString())) %>' target="_blank">
                                            <img src='<%#Common.FilterInfoPic(Eval("SPic").ToString()) %>' align="absmiddle" class="listpic" alt="广州二手房" />
                                        </a>
                                     </div>
                                     <div class="shoprecomname">
                                        <a href='<%#FormatUrl.SellContentUrl(Convert.ToInt64(Eval("SellID").ToString())) %>' target="_blank">
                                            <font color="#d10d09"> <%#Common.myStringWidthoutDot(Eval("Title").ToString(),15) %></font>
                                        </a>
                                        &nbsp;<%#Eval("HuXing") %>
                                        &nbsp;<%#Common.FilterHouseSize(Eval("HouseSize").ToString()) %>
                                        &nbsp;<font color=red><%#Common.FilterSellPrice(Eval("SellPrice").ToString()) %></font>
                                        <br />
                                        <%#Eval("QuarterName") %><%#Eval("AddDate","{0:d}") %>
                                    </div>
                                </div>
                            </ItemTemplate>
                           </asp:DataList><hr />
                     <asp:DataList id="dlrecomrent" runat="server" EnableViewState="false" RepeatColumns="3" RepeatDirection="horizontal">
                                <ItemTemplate>
                                    <div class="shoprecom">
                                        <div class="shoprecombody">
                                            <a href='<%#FormatUrl.RentContentUrl(Eval("RentID").ToString()) %>' target="_blank">
                                                <img src='<%#Common.FilterInfoPic(Eval("SPic").ToString()) %>' align="absmiddle" class="listpic" alt="广州出租房" />
                                            </a>
                                         </div>
                                         <div class="shoprecomname">
                                            <a href='<%#FormatUrl.RentContentUrl(Eval("RentID").ToString()) %>' target="_blank">
                                                <font color="#d10d09"> <%#Common.myStringWidthoutDot(Eval("Title").ToString(),15) %></font>
                                            </a>
                                            &nbsp;<%#Eval("HuXing") %>
                                            &nbsp;<%#Common.FilterHouseSize(Eval("HouseSize").ToString()) %>
                                            &nbsp;<%#Common.FilterRentPrice(Eval("RentPrice").ToString()) %><%#Eval("RentUnit") %>
                                            <br />
                                            <%#Eval("QuarterName") %><%#Eval("AddDate","{0:d}") %>
                                        </div>
                                    </div>
                                </ItemTemplate>
                               </asp:DataList>
                </div>
           
            
                <div class="titlehead">最新二手房</div>
                <div class="bgwhite">
                    <asp:DataList id="dlnewsell" runat="server" EnableViewState="false" RepeatColumns="3" RepeatDirection="horizontal">
                                <ItemTemplate>
                                     <div class="shopnewlist">
                                     <li>
                                        <a href='<%#FormatUrl.SellContentUrl(Convert.ToInt64(Eval("SellID").ToString())) %>' target="_blank">
                                            <%#Common.myStringWidthoutDot(Eval("Title").ToString(),15) %>
                                        </a>
                                        <br />
                                        <%#Eval("QuarterName") %>&nbsp;<font color=red><%#Common.FilterSellPrice(Eval("SellPrice").ToString()) %></font>
                                        <br />
                                        <%#Eval("HuXing") %>
                                        &nbsp;<%#Common.FilterHouseSize(Eval("HouseSize").ToString()) %>

                                        <%#Eval("AddDate","{0:d}") %>
                                        </li>
                                    </div>
                                </ItemTemplate>
                               </asp:DataList>
                          <div class="morecss"><%=MoreES %></div>
                </div>
            
            <div class="titlehead">最新出租房</div>
            <div class="bgwhite">
                <asp:DataList id="dlnewrent" runat="server" EnableViewState="false" RepeatColumns="3" RepeatDirection="horizontal">
                            <ItemTemplate>
                                 <div class="shopnewlist">
                                 <li>
                                    <a href='<%#FormatUrl.RentContentUrl(Eval("RentID").ToString()) %>' target="_blank">
                                        <%#Common.myStringWidthoutDot(Eval("Title").ToString(), 15)%>
                                    </a>
                                    <br />
                                     <%#Eval("QuarterName") %>
                                     &nbsp;<font color=red><%#Common.FilterRentPrice(Eval("RentPrice").ToString()) %></font>
                                     <br />
                                    <%#Eval("HuXing") %>
                                    &nbsp;<%#Common.FilterHouseSize(Eval("HouseSize").ToString()) %>

                                   <%#Eval("AddDate","{0:d}") %>
                                    </li>
                                </div>
                            </ItemTemplate>
                           </asp:DataList>
                        <div class="morecss"><%=MoreZF %></div>
            </div>
            
        </div>
         
    </div>
    <div>
        <uc2:Footer ID="Footer1" runat="server" />
    </div>
    </form>
</body>
</html>
