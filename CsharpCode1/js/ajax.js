

function checkinput()
{
    if(document.getElementById("LoginUC1_tbAcc").value=='')
    {
        alert('请输入用户名');
        document.getElementById("LoginUC1_tbAcc").focus();
        return false;
    }
    if(document.getElementById("LoginUC1_tbPwd").value=='')
    {
        alert('请输入密码');
        document.getElementById("LoginUC1_tbPwd").focus();
        return false;
    }
} 
 function loadsellsub()
        {
            var cid=document.getElementById("ddlRegion").value;
            AddSell.ReturnArea(cid,loadsub_callback);
        }
function loadsub_callback(res)
{
    var area=document.getElementById("ddlArea");
    var tbl=res.value;
    
    if(tbl)
    {
        area.options.length=0;
        for(var i=0;i<tbl.Rows.length;i++)
        {
            var n=tbl.Rows[i].AreaName;
            var id=tbl.Rows[i].AreaID;
            
            area.options.add(new Option(n,id));
        }
    }
}
        
        function loadrentsub()
        {
            var cid=document.getElementById("ddlRegion").value;
            AddRent.ReturnArea(cid,loadrnetsub_callback);
        }
        function loadrnetsub_callback(res)
        {
            var area=document.getElementById("ddlArea");
            var tbl=res.value;
            
            if(tbl)
            {
                area.options.length=0;
                for(var i=0;i<tbl.Rows.length;i++)
                {
                    var n=tbl.Rows[i].AreaName;
                    var id=tbl.Rows[i].AreaID;
                    
                    area.options.add(new Option(n,id));
                }
            }
        }
    function checktginput()
    {
        if(document.getElementById("tbname").value=='')
        {
            alert('请输入您的姓名');
            document.getElementById("tbname").focus();
            return false;
        }
        if(document.getElementById("tbtel").value=='')
        {
            alert('请输入您的联系电话');
            document.getElementById("tbtel").focus();
            return false;
        }
    }
function checkreginput()
{
    if(document.getElementById("tbacc").value=='')
    {
        alert('请输入用户名');
        document.getElementById("tbacc").focus();
        return false;
    }
    if(document.getElementById("tbpwd1").value=='')
    {
        alert('请输入密码');
        document.getElementById("tbpwd1").focus();
        return false;
    }
    if(document.getElementById("tbpwd2").value=='')
    {
        alert('请再次输入密码');
        document.getElementById("tbpwd2").focus();
        return false;
    }
    if(document.getElementById("tbrealname").value=='')
    {
        alert('请输入您的姓名');
        document.getElementById("tbrealname").focus();
        return false;
    }
   if(document.getElementById("tbacc").value.length<3 )
    {
        alert('用户名长度应大于4个字符，请重新输入');
        document.getElementById("tbacc").focus();
        return false;
    }
    if(document.getElementById("tbacc").value.length>15 )
    {
        alert('用户名长度应小于15个字符，请重新输入');
        document.getElementById("tbacc").focus();
        return false;
    }
     if(document.getElementById("tbpwd1").value.length<6 )
    {
        alert('密码长度应大于6个字符，请重新输入');
        document.getElementById("tbpwd1").focus();
        return false;
    }
    if(document.getElementById("tbpwd1").value.length>15 )
    {
        alert('密码长度应小于15个字符，请重新输入');
        document.getElementById("tbpwd1").focus();
        return false;
    }
    if(document.getElementById("tbtel").value=='' && document.getElementById("tbmobile").value=='' )
    {
        alert('电话和手机两项请选填一项，或两项都填写');
        document.getElementById("tbtel").focus();
        
        return false;
    }
    if(document.getElementById("tbcompany").value=='' && document.getElementById("tbmobile").value=='' )
    {
        alert('请输入公司名称');
        document.getElementById("tbcompany").focus();
        
        return false;
    }
     if(document.getElementById("tbaddress").value=='' && document.getElementById("tbmobile").value=='' )
    {
        alert('请输入公司地址');
        document.getElementById("tbaddress").focus();
        
        return false;
    }
   
} 
//验证个人用户是否已被注册
function CheckUser(name)
        {
            if(document.getElementById("tbacc").value=='')
            {
                alert('用户名不能为空');
                document.getElementById("tbacc").focus();
                return false;
            }
        
            Reg_Per.ValidateUserName(name,
                function(res)
                {
                    var tip=document.getElementById("tip");
                    tip.innerHTML="";
                    var getit=res.value;
                    var n = document.getElementById("tbacc").value;

                    if(getit=="1")
                    {
                        tip.innerHTML="该用户名已被注册，请重新输入";
                        document.getElementById("tbacc").focus();
                        document.getElementById("tbacc").style.background="red";
                        document.getElementById("tbacc").style.color="white"; 
                    }
                    else
                    {
                        tip.innerHTML="该用户名可以注册";
                        document.getElementById("tbacc").style.background="#ffffff";
                        document.getElementById("tbacc").style.color="#000";
                    }
                  
                }
            );
        }
        
//验证经纪人是否已被注册
function CheckAgentUser(name)
        {
            if(document.getElementById("tbacc").value=='')
            {
                alert('用户名不能为空');
                document.getElementById("tbacc").focus();
                return false;
            }
            
            Reg_Age.ValidateUserName(name,
                function(res)
                {
                    var tip=document.getElementById("tip");
                    tip.innerHTML="";
                    var getit=res.value;
                    var n = document.getElementById("tbacc").value;

                    if(getit=="1")
                    {
                        tip.innerHTML="该用户名已被注册，请重新输入";
                        document.getElementById("tbacc").focus();
                        document.getElementById("tbacc").style.background="red";
                        document.getElementById("tbacc").style.color="white"; 
                    }
                    else
                    {
                        tip.innerHTML="该用户名可以注册";
                        document.getElementById("tbacc").style.background="#ffffff";
                        document.getElementById("tbacc").style.color="#000";
                    }
                  
                }
            );
        }
        //网店消息发送检查输入
 function checksendmsgblank()
        {
            if(document.getElementById("tbname").value=='')
            {
                alert('请输入姓名');
                document.getElementById("tbname").focus();
                return false;
            }
            if(document.getElementById("tbmail").value=='')
            {
                alert('请输入邮箱');
                document.getElementById("tbmail").focus();
                return false;
            }
            if(document.getElementById("tbmsg").value=='')
            {
                alert('请输入留言内容');
                document.getElementById("tbmsg").focus();
                return false;
            }
        } 
        //委托单
function checkwtblank()
{
         if(document.getElementById("ShopRight2$AgentWT1$tbwtname").value=='')
        {
            alert('请输入委托人姓名');
            document.getElementById("ShopRight2$AgentWT1$tbwtname").focus();
            return false;
        }
         if(document.getElementById("ShopRight2$AgentWT1$tbwttel").value=='')
        {
            alert('请输入联系电话');
            document.getElementById("ShopRight2$AgentWT1$tbwttel").focus();
            return false;
        }
         if(document.getElementById("ShopRight2$AgentWT1$tbwtcontent").value=='')
        {
            alert('请输入委托描述');
            document.getElementById("ShopRight2$AgentWT1$tbwtcontent").focus();
            return false;
        }
}
//图片轮换显示
function showbigimage(url)
{ 
    document.getElementById("picim").src=url; 
    return 1; 
}  

function loadaddhousesub()
{
    var cid=document.getElementById("ddlregion").value;
    AddHouse.ReturnArea(cid,loadaddhousesub_callback);
}
function loadaddhousesub_callback(res)
{
    var area=document.getElementById("ddlarea");
    var tbl=res.value;

    if(tbl)
    {
        area.options.length=0;
        for(var i=0;i<tbl.Rows.length;i++)
        {
            var n=tbl.Rows[i].AreaName;
            var id=tbl.Rows[i].AreaID;
            
            area.options.add(new Option(n,id));
        }
    }
}

//验证楼盘是否已在
function CheckLouPanExist(name)
        {
             if(document.getElementById("tbname").value=='')
            {
                alert('楼盘名称不能为空');
                document.getElementById("tbname").focus();
                return false;
            }
            
            AddHouse.ValidateLouPan(name,
                function(res)
                {
                    var tip=document.getElementById("tip");
                    tip.innerHTML="";
                    var getit=res.value;
                    var n = document.getElementById("tbname").value;

                    if(getit=="1")
                    {
                        tip.innerHTML="该楼盘已存在，您可以重新搜索并查看是否您要添加的楼盘";
                        document.getElementById("tbname").focus();
                        document.getElementById("tbname").style.background="red";
                        document.getElementById("tbname").style.color="white"; 
                    }
                    else
                    {
                        tip.innerHTML="该楼盘还未有数据，您可以继续添加";
                        document.getElementById("tbname").style.background="#ffffff";
                        document.getElementById("tbname").style.color="#000";
                    }
                  
                }
            );
        }
        



function $(s) {
	return document.getElementById(s);
}




			var changeTopHouseType='sale';
			var saleChangeTopHouse=1;
			var rentChangeTopHouse=1;
			function displayTopHouse(ntype,otype){
				$(otype+'TopHouseTable').style.display='none';
				$(otype+'TopHouseMenu').className='tj2';
				$(ntype+'TopHouseTable').style.display='';
				$(ntype+'TopHouseMenu').className='tj1';
				topHouseStop();
				changeTopHouseType=ntype;
				topHouseStart();
			}
			function topHouseStop(){
				clearTimeout(timeoutIDTopHouse);
			}
			function topHouseStart(){
				timeoutIDTopHouse=setTimeout('changeTopHouse(0)',1500);
			}
			function changeTopHouse(num){
				if(changeTopHouseType=='sale'){
					changeTopHouseNum=saleChangeTopHouse;
				}else if(changeTopHouseType=='rent'){
					changeTopHouseNum=rentChangeTopHouse;
				}
				
				if(changeTopHouseType=='sale'){
					saleChangeTopHouse=changeTopHouseNum;
				}else if(changeTopHouseType=='rent'){
					rentChangeTopHouse=changeTopHouseNum;
				}
				if(num==0) timeoutIDTopHouse=setTimeout('changeTopHouse(0)',1500);
			}
			timeoutIDTopHouse=setTimeout('changeTopHouse(0)',1500);       