<%@page import="java.util.List"%>
<%@page import="org.PMS.entity.EmployeeBasicInfomation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css" />
  <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js" type="text/javascript"
    charset="utf-8"></script>
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"
    integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/index.css">
  <script src="js/index.js"></script>
	<script src="js/formCheck.js"></script>
  <script>
	  function validateForm(){
			var eid = new FormItem("职工号","eid");
			var name = new FormItem("姓名","name");
			var sex= new FormItem("性别","sex");
			var branch = new FormItem("所在单位","branch");
			var typeOfWork = new FormItem("工种","typeOfWork");
			var workingHours = new FormItem("工龄","workingHours");
			
			var politicalStatus = new FormItem("政治面貌","politicalStatus");
			var birthdate = new FormItem("出生日期","birthdate");
			var nation = new FormItem("民族","nation");
			var contractTerm = new FormItem("合同期限","contractTerm");
			var skillWage = new FormItem("技能工资","skillWage");
			var fileWage = new FormItem("档案工资","fileWage");
			var jobWage = new FormItem("岗位工资","jobWage");
			var totalWage = new FormItem("总工资","totalWage");
			var postalcode = new FormItem("邮政编码","postalcode");
			var homeAddress = new FormItem("家庭住址","homeAddress");

			//检测数据输入长度
			function islengthLimit(formItemArr,maxlength){
				for(var i=0;i<formItemArr.length;i++){
					var formItem = formItemArr[i];
					var id = formItem.id;
					var label = formItem.label;
					var domObj = document.getElementById(id);
					if(domObj.value.length>maxlength){
						alert(label+"输入错误！（不超过"+maxlength+"字符）");
						domObj.focus();
						return false;
					}
				}
				return true;
			};
			
			//判断是否为空,为空返回false
			var formItemArr1 = [eid,name,sex,branch,typeOfWork,workingHours];
			var r1 = $.isNotEmpty(formItemArr1);
			
			//判断输入数据是否超出（10/20/50）长度
			var formItemArr2 = [eid];
			var r2 = islengthLimit(formItemArr2,10);
			
			var formItemArr3 = [name,branch,typeOfWork,workingHours,politicalStatus,birthdate,nation,contractTerm,
				skillWage,fileWage,jobWage,totalWage,postalcode];
			var r3 = islengthLimit(formItemArr3,20);
			
			var formItemArr4 = [homeAddress];
			var r4 = islengthLimit(formItemArr4,50);
			
			return r1 && r2 && r3 && r4;
		}
	  
		function doAdd(){
		  var ok = validateForm();
		  if(ok){
				document.forms["addEmpInfo"].action = "AddEmployeeServlet";
				document.forms["addEmpInfo"].submit();
		  }
		}
	</script>
	
</head>


<body>
  <div id="top">
    <div class="ui huge header" id="logo">
      <font style="vertical-align: inherit;">
        <font style="vertical-align: inherit;">公司人事管理系统</font>
      </font>
    </div>
    <a href="" id="quit">退出登录</a>
  </div>
  <div id="center">
    <div id="left">
      <div class="ui vertical steps self1">
        <a class="completed step" href="#">
          <div class="content">
            <div class="title">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">人员调入</font>
              </font>
            </div>
            <div class="description">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">transfer_IN</font>
              </font>
            </div>
          </div>
        </a>
        <a class="completed step" href="#">
          <div class="content">
            <div class="title">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">人员调出</font>
              </font>
            </div>
            <div class="description">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">transfer_OUT</font>
              </font>
            </div>
          </div>
        </a>
        <a class="completed step" href="#">
          <div class="content">
            <div class="title" >
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">部门内调</font>
              </font>
            </div>
            <div class="description">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">intra-transfer</font>
              </font>
            </div>
          </div>
        </a>
        <a class="completed step" href="#">
          <div class="content">
            <div class="title">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">每月分类统计表</font>
              </font>
            </div>
            <div class="description">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">classified statistical</font>
              </font>
            </div>
          </div>
        </a>
        <a class="completed step" href="#">
          <div class="content">
            <div class="title">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">个人中心</font>
              </font>
            </div>
            <div class="description">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">personal center</font>
              </font>
            </div>
          </div>
        </a>

      </div>


    </div>
    <div id="right">
      <form class="ui form segment" name="addEmpInfo" method="post">
        <p style="font-size: 10px;">1.建立新员工档案</p>
        <div class="two fields">
          <div class="field">
            <input placeholder="姓名（必填）" id="name" name="name" type="text">
          </div>
          <div class="field">
            <input placeholder="职工号（必填）" id="eid" name="eid" type="text">
          </div>
          <div class="field">
            <select class="ui dropdown" id="sex" name="sex">
              <option value="">性别（必填）</option>
              <option value="男">男</option>
              <option value="女">女</option>
            </select>
          </div>
        </div>
        <div class="two fields">
          <div class="field">
            <input placeholder="民族" id="nation" name="nation" type="text">
          </div>
          <div class="field">
            <input placeholder="政治面貌" id="politicalStatus" name="politicalStatus" type="text">
          </div>
          <div class="field">

            <select class="ui dropdown" id="standardOfCulture" name="standardOfCulture">
              <option value="">文化程度</option>
              <option value="文盲">文盲</option>
              <option value="小学">小学</option>
              <option value="初中">初中</option>
              <option value="高中">高中</option>
              <option value="本科">本科</option>
              <option value="本科以上">本科以上</option>
            </select>
          </div>
        </div>
        <div class="two fields">
          <div class="field">
            <input placeholder="工龄/年（必填）" id="workingHours" name="workingHours" type="text">
          </div>
          <div class="field">
            <input placeholder="合同期限" id="contractTerm" name="contractTerm" type="text">
          </div>
          <div class="field">
            <select class="ui dropdown" id="typeOfWork" name="typeOfWork">
              <option value="">工种（必填）</option>
              <option value="司机">司机</option>
              <option value="售票">售票</option>
              <option value="保养工">保养工</option>
              <option value="干部">干部</option>
            </select>
          </div>
        </div>
        <div class="two fields">
          <div class="field">
            <input placeholder="出生日期" id="birthdate" name="birthdate" type="text">
          </div>
          <div class="field">
            <select class="ui dropdown" id="branch" name="branch">
              <option value="">所在单位（必填）</option>
              <option value="东直门">东直门</option>
              <option value="莲花池">莲花池</option>
              <option value="天桥">天桥</option>
              <option value="北郊">北郊</option>
            </select>
          </div>
          <div class="field">
            <select class="ui dropdown" id="drivingLicense" name="drivingLicense">
              <option value="">有无驾照</option>
              <option value="有">有</option>
              <option value="无">无</option>
            </select>
          </div>
        </div>
        <div class="two fields">
          <div class="field">
            <input placeholder="技能工资" id="skillWage" name="skillWage" type="text">
          </div>
          <div class="field">
            <input placeholder="档案工资" id="fileWage" name="fileWage" type="text">
          </div>
          <div class="field">
            <input placeholder="岗位工资" id="jobWage" name="jobWage" type="text">
          </div>
        </div>
        <div class="two fields">
          <div class="field">
            <input placeholder="累计工资" id="totalWage" name="totalWage" type="text">
          </div>
          <div class="field">
            <input placeholder="家庭住址" id="homeAddress" name="homeAddress" type="text">
          </div>
          <div class="field">
            <input placeholder="邮政编码" id="postalcode" name="postalcode" type="text">
          </div>
        </div>
        <div class="inline field">
        <!-- 
        	<div class="ui checkbox">
            <input type="checkbox" name="terms">
            <label>确认无误</label>
          	</div>
         -->  
        </div>
        
		<input type="button" class="ui primary submit button" onclick="doAdd()" value="下一步"><br/>
        <div class="ui error message">
        </div>
      </form>
    </div>
  </div>
  <div id="bottom">
    <p id="copyright">copyright@软件工程第七小组 </p>
  </div>
</body>

</html>