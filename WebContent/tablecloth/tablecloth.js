/* 

	Tablecloth 
	written by Alen Grakalic, provided by Css Globe (cssglobe.com)
	please visit http://cssglobe.com/lab/tablecloth/
	
*/

this.tablecloth = function(){
	
	// CONFIG 
	
	//如果设置为true，则将鼠标悬停在表格单元格上会突出显示整个列（兄弟标题除外）
	var highlightCols = true;
	
	// 如果设置为true，则鼠标悬停在表格单元格上会突出显示整行（同级标题除外）
	var highlightRows = false;	
	
	// 如果设置为true，则单击表sell将根据配置选择行或列
	var selectable = true;
	
	// this function is called when 
	//如果要添加操作，请添加自己的代码
	//函数接收已单击的对象
	this.clickAction = function(obj){
		//alert(obj.innerHTML);
		
	};


	

	
	
	var tableover = false;
	this.start = function(){
		var tables = document.getElementsByTagName("table");
		for (var i=0;i<tables.length;i++){
			tables[i].onmouseover = function(){tableover = true};
			tables[i].onmouseout = function(){tableover = false};			
			rows(tables[i]);
		};
	};
	
	this.rows = function(table){
		var css = "";
		var tr = table.getElementsByTagName("tr");
		for (var i=0;i<tr.length;i++){
			css = (css == "odd") ? "even" : "odd";
			tr[i].className = css;
			var arr = new Array();
			for(var j=0;j<tr[i].childNodes.length;j++){				
				if(tr[i].childNodes[j].nodeType == 1) arr.push(tr[i].childNodes[j]);
			};		
			for (var j=0;j<arr.length;j++){				
				arr[j].row = i;
				arr[j].col = j;
				if(arr[j].innerHTML == "&nbsp;" || arr[j].innerHTML == "") arr[j].className += " empty";					
				arr[j].css = arr[j].className;
				arr[j].onmouseover = function(){
					over(table,this,this.row,this.col);
				};
				arr[j].onmouseout = function(){
					out(table,this,this.row,this.col);
				};
				arr[j].onmousedown = function(){
					down(table,this,this.row,this.col);
				};
				arr[j].onmouseup = function(){
					up(table,this,this.row,this.col);
				};				
				arr[j].onclick = function(){
					click(table,this,this.row,this.col);
				};								
			};
		};
	};
	

	this.highlightCol = function(table,active,col,sel){
		var css = (typeof(sel) != "undefined") ? "selected" : "over";
		var tr = table.getElementsByTagName("tr");
		for (var i=0;i<tr.length;i++){	
			var arr = new Array();
			for(j=0;j<tr[i].childNodes.length;j++){				
				if(tr[i].childNodes[j].nodeType == 1) arr.push(tr[i].childNodes[j]);
			};							
			var obj = arr[col];
			if (check2(active,obj) && check3(obj)) obj.className = obj.css + " " + css; 		
		};
	};
	this.unhighlightCol = function(table,col){
		var tr = table.getElementsByTagName("tr");
		for (var i=0;i<tr.length;i++){
			var arr = new Array();
			for(j=0;j<tr[i].childNodes.length;j++){				
				if(tr[i].childNodes[j].nodeType == 1) arr.push(tr[i].childNodes[j])
			};				
			var obj = arr[col];
			if(check3(obj)) obj.className = obj.css; 
		};
	};	
	this.highlightRow = function(table,active,row,sel){
		var css = (typeof(sel) != "undefined") ? "selected" : "over";
		var tr = table.getElementsByTagName("tr")[row];		
		for (var i=0;i<tr.childNodes.length;i++){		
			var obj = tr.childNodes[i];
			if (check2(active,obj) && check3(obj)) obj.className = obj.css + " " + css; 		
		};
	};
	this.unhighlightRow = function(table,row){
		var tr = table.getElementsByTagName("tr")[row];		
		for (var i=0;i<tr.childNodes.length;i++){
			var obj = tr.childNodes[i];			
			if(check3(obj)) obj.className = obj.css; 			
		};
	};
	this.unselect = function(table){
		tr = table.getElementsByTagName("tr")
		for (var i=0;i<tr.length;i++){
			for (var j=0;j<tr[i].childNodes.length;j++){
				var obj = tr[i].childNodes[j];	
				if(obj.className) obj.className = obj.className.replace("selected","");
			};
		};
	};
	this.unselectAll = function(){
		if(!tableover){
			tables = document.getElementsByTagName("table");
			for (var i=0;i<tables.length;i++){
				unselect(tables[i])
			};		
		};
	};	
	this.check1 = function(obj,col){
		return (!(col == 0 && obj.className.indexOf("empty") != -1));
	}
	this.check2 = function(active,obj){
		return (!(active.tagName == "TH" && obj.tagName == "TH")); 
	};
	this.check3 = function(obj){
		return (obj.className) ? (obj.className.indexOf("selected") == -1) : true; 
	};	
	
	start();
	
};

/* script initiates on page load. */
window.onload = tablecloth;
