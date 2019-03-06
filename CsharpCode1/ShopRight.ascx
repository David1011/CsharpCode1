<%@ control language="C#" autoeventwireup="true" inherits="ShopRight, House_FreeV2_deploy" %>
<%@ Register Src="AgentWT.ascx" TagName="AgentWT" TagPrefix="uc1" %>
        
        <div class="columnright" style="background-color:white;">
            <div class="titlehead"><%=RealName %>简介</div>
            <table cellpadding="0"  cellspacing="0" border="0" width="250" align="center" class="lineheight2">
            <tr>
                <td width=5></td>
                <td width="90" class="lineheight2">
                    <img src='<%=SPic %>' class="userpic2" align="absmiddle" alt="广州房产中介" />
                </td>
            
                <td class="lineheight2" style="padding-left:5px;">
                     姓名：<%=RealName %><br />
                    类型：<%=Degree %><br />
                    
                    人气：<%=Clicked %><br />
                    登陆：<%=Counts %><br />

                    
                </td>
            </tr>
            <tr>
            <td width=5></td>
                <td colspan="2" class="lineheight2">
                    <%=QQ %><br>
                    服务区域：<%=Region %><br />
                    所属公司：<%=Company %><br />
                    公司地址：<%=Address %><br />
                    联系电话：<span class="font14"><b><%=Tel %></b></span><br />
                    联系邮箱：<%=Mail %><br />
                   
                </td>
            </tr>
        </table>
        </div>
        
        <div class="columnright" style="background-color:white;">
            <div class="titlehead">最新公告</div>
            <div class="lineheight" style="text-align:left;padding-left:4px;"><%=Intro %></div>
        </div>
        
        <div class="columnright" style="background-color:white;">
            <div class="titlehead">在线委托</div>
            <div><uc1:AgentWT ID="AgentWT1" runat="server" /></div>
        </div>
        
