<%@ page language="C#" autoeventwireup="true" inherits="SiteHelp, House_FreeV2_deploy" enableEventValidation="false" %>
<%@ Register Src="LoginUC.ascx" TagName="LoginUC" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
         <title>��վ����,�ҵĹ�������,<%=Common.GetSiteName() %></title>
    <meta http-equiv="Content-Language" content="zh-CN" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
   <meta name="copyright" content="Copyright 2007. 0752house.com All Rights Reserved.">
    <meta name="author" content="0752house.com">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
     <link href="css/zz020.css" rel="stylesheet" type="text/css" media="all" />
     <link href="css/top.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css" media="all">
        .mii
        {
            line-height:200%;background:#f6f6f6;text-align:left;padding:5px;
        }
        .item
        {
            line-height:200%;background:#fff;text-align:left;padding:5px;
        }
    </style>
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
            ����λ�ã�
            <a href='<%=FormatUrl.HomeUrl() %>'>��վ��ҳ</a>&nbsp;>&nbsp;
            <a href="SiteHelp.aspx">��վ��������</a>
        </div>
    <table cellpadding="0" cellspacing="10" border="0" width="980">
        <tr>
            <td width="250" valign=top>
             <div class="border">

<div class="titlehead">
    ��վС����
</div>

<table width="100%">
    <tr>
    <td align="center" class="dot" >
        <a href="UserCenter_Help.aspx#one">��η�����Դ��</a>
    </td>
    </tr>
    <tr>
    <td align="center" class="dot" >
        <a href="UserCenter_Help.aspx#five">�����д����������ˣ�</a>
    </td>
    </tr>
    <tr>
        <td align="center" class="dot" >
            <a href="UserCenter_Help.aspx#two">��η�����Ϣ����Ч����</a>
        </td>
    </tr>
    <tr>
        <td align="center" class="dot" >
            <a href="UserCenter_Help.aspx#deal">���ӳɽ�����η�ֹɧ�ţ�</a>
        </td>
    </tr>
    <tr>
        <td align="center" class="dot" >
            <a href="UserCenter_Help.aspx#three">ʲô�����羭���ˣ�</a>
        </td>
    </tr>
    <tr>
        <td align="center" class="dot" >

            <a href="UserCenter_Help.aspx#vip">��ΪVIP��Ա��ʲô�ô���</a>
        </td>
    </tr>
    <tr>
        <td align="center" class="dot" >

            <a href="UserCenter_Help.aspx#pay">�շѱ�׼�����˵��</a>
        </td>
    </tr>
    </table>
</div>
            </td>
            <td valign="top">
                <div class="border">
                    <div class="titlehead">
                        ��վ��������
                    </div>
                    <div>
             <table cellpadding=0 cellspacing=0 border=0 width=100% align="center">

            <tr>
                <td valign="top" class="mii" id="one">
                  <img src="images/helpico.gif" align="absmiddle" />&nbsp;<b>��η�����Դ�� </b><br />
                  
                </td>
            </tr>
            <tr>
                <td class="item">
                    �ڱ�վ������Դ����<a href='<%=FormatUrl.RegisterUrl() %>'><font color=red>ע��</font></a>��Ϊ��վ��Ա,<a href='<%=FormatUrl.RegisterUrl() %>'><font color=red>ע��</font></a>��ɺ�����վ��˵�
                    ��<a href="pub.aspx"><font color=red>������Ϣ</font></a>����Ȼ�����뷿�ݵĸ�����Ϣ�����ύ���ɡ�<br />
                    �������<a href="pub.aspx"><font color=red>����</font></a>���������κ����⣬�������ǵĿͷ���Ա��ϵ����л����֧�֣�
                    
                        
                </td>
            </tr>
            <tr>
                <td class="mii" valign="top"  id="two">
                    <img src="images/helpico.gif" align="absmiddle" />&nbsp;<b>��η�����Ϣ����Ч����  </b><br />
                </td>
            </tr>
           <tr>
            <td class="item" valign="top">
                ���ȣ���Ϣ�ı�����д��ο�<a href="#five">�����д����������ˣ�</a>��
                ��Σ���Ϣ�ĸ���˵����ö����ϣ��������¥�㣬֤���������
                ��Ϣ������Ӧ���������ڵ�����������������ʵͼ���������������Ϣ��Ч����
            </td>
           </tr>
             <tr>
                <td class="mii" valign="top" id="five">
                   <img src="images/helpico.gif" align="absmiddle" />&nbsp;<b>�����д����������ˣ�  </b><br />
                </td>
            </tr>
            <tr>
                <td class="item">
                    ��д����ʱӦ������ߺ���������ĽǶ�����д��������Ϣ�ı���Ӧ�����Ի��ģ�Ӧ������صĹؼ��ʣ���������ߵ�����ϰ����
                    ��дЧ����ã��ع�����ߣ�
                    <br /><span class=blue>�統�û�����һ��������ĳС�����ַ����۸���60�����µģ�</span>
                    <br />��ôΪ�������û�������������Ϣ������
                    ����дΪ��<span class=blue>�����ۣأ�С������60�����£�֤����ȫ����ʵͼ��</span>������ģ�֤����ȫ����ʵͼ��Ϊ������Ϣ�����������û�����ñ��⣮
                    <br />
                    <span class=red>ע���벻Ҫ�ڱ���������κβ���صķ��ţ�������������߾�����һ��������Ϣ���������͵���ʣ�</span>
                </td>
            </tr>
            <tr>
                <td class="mii" valign="top" id="deal">
                   <img src="images/helpico.gif" align="absmiddle" />&nbsp;<b>���ӳɽ�����η�ֹɧ�ţ� </b><br />

                </td>
            </tr>
            <tr>
                <td class="item">
                      �����ڱ�վ��������Ϣ�ɽ�����������ۣ���Ϊ�˷�ֹ�û��ٿ��������Ϣʱ��绰ѯ�ʣ�
                      <br />�����Ե�¼�������˹������ģ�����������۹��������Ϣ�����ұߵģ�δ�ɽ���
                      ���ӣ����ɽ�������Ϣ����Ϊ�ѳɽ������ĵ绰�������أ�
                 </td>
            </tr>
            <tr>
                <td class="mii" valign="top" id="three">
                   <img src="images/helpico.gif" align="absmiddle" />&nbsp;<b>ʲô�����羭���ˣ� </b><br />

                </td>
            </tr>
            <tr>
                <td class="item">
                      �����羭���ˡ���ָ���������˽�����������������Ϣ��չ���Լ���Ϊ�������ṩҵ����ѯ���񣬴Ӷ��������Ʒ�Ƶ�һ��Ӫ��ģʽ������վ��Է��������˵�ҵ���ص㣬Ϊ�俪�����ĸ�������Ӫ��ƽ̨��
                 </td>
            </tr>
            <tr>
                <td class="mii" valign="top"  id="vip">
                   <span id="four"><img src="images/helpico.gif" align="absmiddle" />&nbsp;<b>��ΪVIP��Ա��ʲô�ô���  </b></span><br />
                </td>
            </tr>
            <tr>
                <td class="item">
                    <div class="lineheight2" style="text-align:left;">
                    <b>�� ʲô��VIP��Ա��</b><br />
                    ֻҪ��ע���Ϊ��վ��Ա��������վ�Ļ��֣����ͻ��Զ���ΪVIP��Ա����վ��VIP��Ա���û����ƶȣ�
                    <br />
                    <b>�� VIP��Ա����ͨ��Ա��ʲô���ƣ�</b><br />
                    ֻҪ������վ�Ļ��ֺ����Ϳ����������¸߼�����:<br />
                    1. ����ˢ���ѳɹ������ķ�Դ�����Խ�ʡ����ʱ�䣮<br />
                    2. �����ö����ķ�Դ.<br />
                    3. �����ķ�Դ��Ϊ��ʮ��𼱷�Դ����������߷�Դ���ع��ʣ��ӿ�ɽ����ٶ�.<br />
                    4. ������Ƿ������ͣ��ڱ�վ���ע�Ὺͨ����󣬿��Խ����ĵ����Ƽ�����վ��ҳ������ع��ʣ�Ҳ��Ϊ���������õ�ҵ����<br />
                    5. ��վ����ȡ�������Ч����;�����������ķ�Դ��
                    
                    </div>
                </td>
            </tr>
            <tr>
                <td class="mii" valign="top" id="pay">
                   <span id="Span2"><img src="images/helpico.gif" align="absmiddle" />&nbsp;<b>�շѱ�׼�����˵��</b></span><br />
                </td>
            </tr>
            <tr>
                <td class="item">
                    <div class="lineheight2" style="text-align:left;">
                        <b>�� ��վΪʲôҪ�շѣ�</b><br />
                        ��վ�շ���Ϊ���ܹ����õ�������ȥ��ֻ�й�����ѵ�֧�֣���վ�����ṩ������õķ���ͨ���շѣ�Ϊ��Ա�ṩ�����ʵķ��񣬴Ӷ��ﵽ˫Ӯ��<br />
                        <b>�� �շѱ�׼��Σ�</b><br />
                        
                        
                        1��ˢ�·�Դ (��Ҫ <font color=red><b><%=Common.GetRefleshScore() %></b></font> ������)
                        <br />
                        2���Ƽ���Դ (��Ҫ <font color=red><b><%=Common.GetRecomScore() %></b></font> ������)
                        <br />
                        3���ö���Դ (��Ҫ <font color=red><b><%=Common.GetTopScore() %></b></font> ������)
                        
                        <a href="users_order.aspx"><font color=blue><u>����˴����̳�ֵ</u></font></a>
                        <br />
                        �������������ϵ��<font color=red><b><%=SiteTel %></b></font>  �ͷ��ѣѣ�
                              <%=QQ %>   
                    </div>
                </td>
            </tr>
        </table><br />

                    </div>
                </div>
            </td>
        </tr>
    </table>
        </div>
         <div>
             <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
