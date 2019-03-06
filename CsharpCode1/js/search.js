function ShowItem(item)
{
	
	if (item == 'esf')
	{
	   	document.getElementById("esfid").className = "searchesf";
		document.getElementById("zfid").className = "searchzf";	
		document.getElementById("esfDiv").style.display = "";
		document.getElementById("zfDiv").style.display = "none";
	}
	if (item == 'zf')
	{
		document.getElementById("esfid").className = "searchzf";
		document.getElementById("zfid").className = "searchesf";
		
		document.getElementById("zfDiv").style.display = "";
		document.getElementById("esfDiv").style.display = "none";
	}

}


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


¡¡function ChooseAll()
      {
          for(var i=0;i<document.all.length;i++)
          {
             var e=document.all[i];
             if(e.id != "chkSelectAll")
                e.checked=document.all.chkSelectAll.checked;
          }
      } 