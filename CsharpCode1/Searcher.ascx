<%@ control language="C#" autoeventwireup="true" inherits="Searcher, House_FreeV2_deploy" %>
<script>
function tabpane(titlename,contentname,idnum,length){
    for(var id = 1;id<=length;id++)
    {
    		var curtitleid=titlename+id;
    		var curcontentid=contentname+id;
			
    		if(id==idnum){
			
					
    			  	document.getElementById(curtitleid).className=titlename+"_1";
    				document.getElementById(curcontentid).style.display="block";
    		}
    		else{
					
    				document.getElementById(curtitleid).className=titlename+"_2";
    				document.getElementById(curcontentid).style.display="none";
					//document.getElementById(curcontentid).innerHTML=""
    		}
    }    
}
</script>
<div class="columncontain">
<div id="gb_search">
    <div class="gb_search1">
    <ul>
     <li id="gb_search_h3" onmousedown="tabpane('gb_search_h','ss',3,4)" class="gb_search_h_1">二手房</li>   
    <li id="gb_search_h1" onmousedown="tabpane('gb_search_h','ss',1,4)" class="gb_search_h_2">新楼盘</li>
    <li id="gb_search_h2" onmousedown="tabpane('gb_search_h','ss',2,4)" class="gb_search_h_2">出租房</li>
    
    <li id="gb_search_h4" onmousedown="tabpane('gb_search_h','ss',4,4)" class="gb_search_h_2">资讯</li>
    </ul>
    </div>
 <div class="gb_search2" id="ss3">
  
  <table>
        <tr>
            <td>
                区域：<asp:DropDownList id="ddlsellregion" runat="server"></asp:DropDownList>
         

            售价：
            <asp:DropDownList id="ddlsellprice" runat="server" TabIndex="2" Height="22px" Width="82px">
            <asp:ListItem Value="不限">不限</asp:ListItem>
            <asp:ListItem Value="30万以内">30万以内</asp:ListItem>
            <asp:ListItem>50万以内</asp:ListItem>
            <asp:ListItem>80万以内</asp:ListItem>
            <asp:ListItem>100万以内</asp:ListItem>
            <asp:ListItem>120万以内</asp:ListItem>
            <asp:ListItem>150万以内</asp:ListItem>
            <asp:ListItem>180万以内</asp:ListItem>
            <asp:ListItem>220万以内</asp:ListItem>
            <asp:ListItem>250万以内</asp:ListItem>
            <asp:ListItem>280万以内</asp:ListItem>
            <asp:ListItem>320万以内</asp:ListItem>
            <asp:ListItem>350万以内</asp:ListItem>
            <asp:ListItem>400万以内</asp:ListItem>
            <asp:ListItem>450万以内</asp:ListItem>
            <asp:ListItem>500万以内</asp:ListItem>
            <asp:ListItem>1000万以上</asp:ListItem>
            </asp:DropDownList>

            日期：<asp:DropDownList id="ddlselldate" runat="server" TabIndex="3" Height="22px" Width="122px">
                <asp:ListItem Value="不限">不限</asp:ListItem>
                <asp:ListItem Value="三天内">三天内</asp:ListItem>
                <asp:ListItem Value="一周内">一周内</asp:ListItem>
                <asp:ListItem Value="半个月内">半个月内</asp:ListItem>
                <asp:ListItem Value="一个月内">一个月内</asp:ListItem>
             </asp:DropDownList>

             关键词：<asp:TextBox ID="tbsellkeyword" CssClass="input" runat="server" TabIndex=1 Width="180px"></asp:TextBox>
                          <asp:ImageButton ID="btnsellfind" runat=server ImageUrl="images/searchbutton.GIF" CausesValidation=false OnClick="btnsellfind_Click" />
                </td>
        </tr>
    </table>
</div>   
<div class="gb_search2" id="ss1" style="display:none;">
  <table>
        <tr>
            <td>
		请输入楼盘名称：
       <asp:TextBox ID="TextBox1" CssClass="input" runat="server" TabIndex=4 Width="250px"></asp:TextBox>
       <asp:ImageButton ID="imlp" runat="server" ImageUrl="images/search.gif" ImageAlign="AbsMiddle"  CausesValidation="False" TabIndex="5" OnClick="imlp_Click" />
            <asp:datalist id="regionList"  RepeatColumns="12" Runat="server" RepeatLayout="table" RepeatDirection="Horizontal"
				 EnableViewState="false" ItemStyle-HorizontalAlign="center" Width="100%">
								
						<ItemTemplate>
						        
							    <a href='<%#FormatUrl.LouPanByRegionID(Convert.ToInt32(Eval("RegionID").ToString()))%>'>
								    <font color="#173a7c"><%#Eval("RegionName") %></font>
							    </a>&nbsp;|&nbsp;
								
					    </ItemTemplate>
                </asp:datalist>
		    </td>
        </tr>
    </table>
    
</div>

<div class="gb_search2" id="ss2" style="display:none;">
<table>
        <tr>
            <td>
		        区域：<asp:DropDownList id="ddlrentregion" runat="server"></asp:DropDownList>
        
            价格：<asp:DropDownList id="ddlEndPrice" runat="server" TabIndex="2" Height="22px" Width="82px">
	            <asp:ListItem Value="不限">不限</asp:ListItem>
	            <asp:ListItem Value="400以内">400以内</asp:ListItem>
	            <asp:ListItem Value="600以内">600以内</asp:ListItem>
	            <asp:ListItem Value="800以内">800以内</asp:ListItem>
	            <asp:ListItem Value="1000以内">1000以内</asp:ListItem>
	            <asp:ListItem Value="1200以内">1200以内</asp:ListItem>
	            <asp:ListItem Value="1400以内">1400以内</asp:ListItem>
	            <asp:ListItem Value="1600以内">1600以内</asp:ListItem>
	            <asp:ListItem Value="1800以内">1800以内</asp:ListItem>
	            <asp:ListItem Value="2000以内">2000以内</asp:ListItem>
	            <asp:ListItem Value="2200以内">2200以内</asp:ListItem>
	            <asp:ListItem Value="2400以内">2400以内</asp:ListItem>
	            <asp:ListItem Value="2600以内">2600以内</asp:ListItem>
	            <asp:ListItem Value="2800以内">2800以内</asp:ListItem>
	            <asp:ListItem Value="3000以内">3000以内</asp:ListItem>
	            <asp:ListItem Value="3500以内">3500以内</asp:ListItem>
	            <asp:ListItem Value="4000以内">4000以内</asp:ListItem>
	            <asp:ListItem Value="4500以内">4500以内</asp:ListItem>
	            <asp:ListItem Value="5000以内">5000以内</asp:ListItem>
	            <asp:ListItem Value="5000以上">5000以上</asp:ListItem>
            </asp:DropDownList>&nbsp;
            
            方式：<asp:DropDownList ID="ddlHeZu" runat="server">
                
                <asp:ListItem>整租</asp:ListItem>
                <asp:ListItem>合租</asp:ListItem>
            </asp:DropDownList>
            来源：<asp:DropDownList ID="ddlPersonOrAgent" runat="server">
                
                <asp:ListItem Value="false">个人</asp:ListItem>
                        <asp:ListItem Value="true">经纪人</asp:ListItem>
            </asp:DropDownList>
            日期：<asp:DropDownList id="ddlAddedDate" runat="server" TabIndex="3">
	            <asp:ListItem Value="不限">不限</asp:ListItem>
	            <asp:ListItem Value="三天内">三天内</asp:ListItem>
	            <asp:ListItem Value="一周内">一周内</asp:ListItem>
	            <asp:ListItem Value="半个月内" Selected=true>半个月内</asp:ListItem>
	            <asp:ListItem Value="一个月内">一个月内</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="tbrentkw" runat="server" CssClass="input" Width="120px" TabIndex=1 ></asp:TextBox>
            <asp:ImageButton ID="btnrentfind" runat=server ImageUrl="images/searchbutton.GIF" CausesValidation=false OnClick="btnrentfind_Click" />
                </td>
        </tr>
    </table>
</div>



<div class="gb_search2" id="ss4" style="display:none;">
  
  <table>
        <tr>
            <td>请输入关键词：
            <asp:TextBox ID="tbkw" CssClass="input" runat="server" TabIndex=4 Width="393px" ></asp:TextBox>
            <asp:ImageButton ID="btnsearchnews" runat="server" ImageUrl="images/search.gif" ImageAlign="AbsMiddle"  CausesValidation="False"  TabIndex="5" OnClick="btnsearchnews_Click"  />

            </td>
        </tr>
    </table>
</div>
</div>
</div>