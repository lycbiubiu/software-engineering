	  FormItem = function(label,id){
			this.label = label;
			this.id = id;
		}

		FormCheck = function(){
			//验证非空（只能接收数组，并且每个数组中每个元素都是FormItem类型）
			this.isNotEmpty = function(formItemArr){
				for(var i=0;i<formItemArr.length;i++){
					var formItem = formItemArr[i];
					var id = formItem.id;
					var label = formItem.label;
					var domObj = document.getElementById(id);
					if(domObj.value == ""){
						alert(label+"不能为空！！");
						domObj.focus();
						return false;
					}
				}
				return true;
			};
//			
//			
//			this.lengthLimit20 = function(){
//				alert("funclimit10");
//				for(var i=0;i<formItemArr.length;i++){
//					var formItem = formItemArr[i];
//					var id = formItem.id;
//					var label = formItem.label;
//					var domObj = document.getElementById(id);
//					
//					alert(domObj.value+",,,"+domObj.value.length);
//					
//					if(domObj.value.length>10){
//						alert(label+"输入错误！（不超过10字符）");
//						domObj.focus();
//						return false;
//					}
//				}
//				return false;
//			};

//			this.lengthLimit = function(formItemArr){
//				for(var i=0;i<formItemArr.length;i++){
//					var formItem = formItemArr[i];
//					var id = formItem.id;
//					var label = formItem.label;
//					var domObj = document.getElementById(id);
//					if(domObj.length>20){
//						alert(label+"输入错误！（不超过20字符）");
//						domObj.focus();
//						return false;
//					}
//				}
//				return true;
//			}
//
		}

		var $ = new FormCheck();