<style>
	#topMenu #leftArea{
		width:50%;
		
	}
	#topMenu #leftArea img{
		float: left;
		width: 10%;
		height: 50px;
		border-radius: 10px;
		
	}
	
	#topMenu #rightArea{
		width:50%;
		
	}
	#topMenu #rightArea div{
		float: left;
		width: 20%;
		height: 50px;
 		line-height: 50px;
		border: 1px solid red;
		border-radius: 10px;
 		text-align: center; 
/* 		vertical-align: middle; */
	}
	
</style>
<div id="topMenu">
	<div id="leftArea">
		<a href="/main"><img src="<%= request.getContextPath() %>/img/zzang.jpg" alt="Image"></a>
	</div>
	<div id="rightArea">
		<div><a href="/main">home</a></div>
		<div><a href="/login">login</a></div>
		<div><a href="/join">join</a></div>
	</div>
</div>
