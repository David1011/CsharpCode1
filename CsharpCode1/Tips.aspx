<%@ page language="C#" autoeventwireup="true" inherits="Tips, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>系统提示</title>
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
     <style type="text/css" media="all">
        .message {
	FONT-WEIGHT: bold; FONT-SIZE: 18px; COLOR: #339933; LINE-HEIGHT: 150%
}
     </style>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <uc1:LoginUC ID="LoginUC1" runat="server" />
    
    </div>
    <div>
   <TABLE style="MARGIN: 100px auto" cellSpacing=0 cellPadding=0 width=500 
align=center border=0>
  <TBODY>
  <TR vAlign=top>
    <TD background=images/tip/pst_08.gif></TD>
    <TD bgColor=#ffffff>
      <TABLE class=tablebg borderColor=#dadada cellSpacing=8 cellPadding=0 
      width="100%" bgColor=#f9f9f9 border=1>
        <TBODY>
        <TR>
          <TD 
          style="PADDING-RIGHT: 40px; PADDING-LEFT: 20px; PADDING-BOTTOM: 20px; PADDING-TOP: 20px" 
          bgColor=#ffffff>
            <TABLE id=messageLogo cellSpacing=0 cellPadding=0 width="100%" 
            border=0>
              <TBODY>
              <TR>
                <TD align="left" style="text-align:left;font-size:15px;line-height:200%;padding:3px;color:Red;">
                    <b>本站提示</b></TD></TR></TBODY></TABLE>
            <TABLE cellSpacing=10 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD class=message align=middle><%=Msg %></TD></TR>
              <TR>
                <TD class=regbtn align=middle> 
                  <A onclick=window.opener=null 
                  href="javascript:window.close()">关闭窗口</A>
        </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
    <TD style="BACKGROUND-REPEAT: repeat-y" 
    background=images/tip/pst_07.gif>&nbsp;</TD></TR>
  </TBODY></TABLE> 
   </div>
    <uc2:Footer ID="Footer1" runat="server" />
    </form>
</body>
</html>
