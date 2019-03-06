<%@ page language="C#" autoeventwireup="true" inherits="AddHouse_Pic, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title><%=pageTitle %></title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="copyright" content="Copyright 2007. 0752house.com All Rights Reserved.">
    <meta name="author" content="0752house.com">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
    <script src="js/ajax.js" type="text/javascript"></script>
    <script src="js/search.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:LoginUC ID="LoginUC1" runat="server" />
    </div>
    <div>
            <uc1:Header ID="Header1" runat="server" />
        </div>
      <div class="currnav">
            <div class="currnavtop">
                <img src="images/navh.JPG" align="absmiddle" />&nbsp;
            您的位置：
            <a href='<%=FormatUrl.HomeUrl() %>'>网站首页</a>&nbsp;>&nbsp;
            <a href='<%=FormatUrl.LouPanHomeUrl() %>'>楼盘大全</a>&nbsp;>&nbsp;
            <%=AddUrl %>
        </div>
        </div>
        <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign="top">
            
            </td>
            <td  valign="top">
                <div >
                    <div   style="font-size:15px;color:#e77529;font-weight:bold;line-height:400%;">
                       您正在完善<%=LPName %> 的<%=lp %>信息
                       <br />
                       <div>
                       提醒：上传图片时请注意图片质量和大小
                       </div>
                    </div>
                    <div>
             <table cellpadding=0 cellspacing=0 border=0 width=100% align=center>
             <tr>
                <td class="msgtip"><%=Tip %></td>
             </tr>
            <tr>
                <td class=rightitem valign="top">
                   
                    <table width=100% style="border:1px solid #ccc;background:#f3f3f3;">
                      <tr>
                            <td colspan="2" nowrap="noWrap" bgcolor="#ffffff" style="text-align:left;font-size:15px;color:#e77529;font-weight:bold;height:50px;">
                                &nbsp;添加<%=LPName %><%=lp %>实图<span style="color:Gray;">(一次最多添加6张)</span>
                            </td>
                            
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                                请选择<%=lp %>实图：</td>
                            <td bgcolor="#ffffff"  align="center" height="150">
                            
                                <br />
                                    <INPUT id="File1" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File1" runat="server">
                                 <br /> <br />
                                    <INPUT id="File2" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File2" runat="server">
                                 <br /> <br />
                                    <INPUT id="File3" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File3" runat="server">
                               <br /> <br />
                                    <INPUT id="File4" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File4" runat="server">
                                 <br /> <br />
                                    <INPUT id="File5" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File5" runat="server">
                                 <br /> <br />
                                    <INPUT id="File6" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File6" runat="server">
                                <br />
                            <br />
                            </td>
                        </tr>
                        
                       
                   </table><br />
                    <table width=100% style="border:1px solid #ccc;background:#f3f3f3;">
                        <tr>
                            <td colspan="2" nowrap="noWrap" bgcolor="#ffffff" style="text-align:left;font-size:15px;color:#e77529;font-weight:bold;height:50px;">
                                &nbsp;添加<%=LPName %>户型图<%=bigphoto %><span style="color:Gray;">(一次最多添加6张)</span>
                            </td>
                            
                        </tr>
                         <tr>
                           <td bgcolor="#ffffff" class="alignright" nowrap="nowrap" >
                               请选择<%=bigphoto %>：</td>
                             <td bgcolor="#ffffff"  align="center" height="150">
                               
                                 <br />
                                    <INPUT id="File7" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File1" runat="server">
                                 <br /><br />
                                    <INPUT id="File8" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File2" runat="server">
                                <br /><br />
                                    <INPUT id="File9" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File3" runat="server">
                                <br /><br />
                                    <INPUT id="File10" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File4" runat="server">
                                <br /><br />
                                    <INPUT id="File11" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File5" runat="server">
                                <br /><br />
                                    <INPUT id="File12" style="WIDTH: 499px; HEIGHT: 22px" type="file" name="File6" runat="server">
                                <br />
                            <br />
                              </td>
                         </tr>
                        
                   </table>
                    <asp:Label ID="lblspic" runat="server" Visible="False"></asp:Label>&nbsp;
                    </td>
            </tr>
            <tr>
                <td align="center" >
                 <asp:Button ID="btnaddhouse" runat="server" Height="27px" OnClick="btnaddhouse_Click"
                                    Text="提交" Width="112px" />
                </td>
             </tr>
        </table>
                    <asp:Label ID="lblbpic" runat="server" Visible="False"></asp:Label><br />

                    </div>
                </div>
                
            </td>
        </tr>
    </table>

         <div>
             <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
