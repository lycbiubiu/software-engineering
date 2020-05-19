v<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
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
  <link rel="stylesheet" type="text/css" href="css/common.css"/>
  <link rel="stylesheet" type="text/css" href="css/main.css"/>
  <script src="js/index.js"></script>
  <script type="text/javascript">
  	//验证表单是否合法
  	function dosave(){
		
  		var ok = validateform();
  		if(ok){
  			document.forms[0].submit();
  		}
  	}
  	
  	function validateform(){
  		var pwd = document.getElementById("password");
  		var checkpwd = document.getElementById("checkpwd");
  		var email = document.getElementById("email");
  		var phonenumber = document.getElementById("phonenumber");
		if(pwd==""){
			alert("pwd null!");
			pwd.focus();
			return false;
		}
		if(email==""){
			alert("pwd null!");
			email.focus();
			return false;
		}
		if(phonenumber==""){
			alert("pwd null!");
			phonenumber.focus();
			return false;
		}
		
		if(pwd.value != checkpwd.value){
			alert("pwd!= checkpwd!");
			pwd.value="";
			checkpwd.value="";
			checkpwd.focus();
			return false;
		}
		return true;
  	}
  	
  </script>
 
    <title>公司人事管理</title>
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
        <a class="completed step" href="index.jsp">
          <div class="content">
            <div class="title">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">查看员工</font>
              </font>
            </div>
            <div class="description">
              <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">transfer_IN</font>
              </font>
            </div>
          </div>
        </a>
        <a class="completed step" href="transferIn.jsp">
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
        <a class="completed step" href="transferOut.jsp">
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
        <a class="completed step" href="intraTransfer.jsp">
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
        <a class="completed step" href="statistics.jsp">
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
        <a class="completed step" href="accountCenter.jsp">
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
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.html">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">系统设置</span></div>
        </div>
        <div class="result-wrap">
            <form action="SaveUserServlet" method="post" id="myform" name="myform">
                <div class="config-items">
                    <div class="config-title">
                        <h1><i class="icon-font">&#xe00a;</i>网站信息设置</h1>
                    </div>
                    <div class="result-content">
                        <table width="100%" class="insert-tab">
                            <tbody><tr>
                                <th width="15%"><i class="require-red">*</i>用户ID：</th>
                                <td><input type="text" id="eid" size="85" name="eid" class="common-text"></td>
                            </tr>
                                <tr>
                                    <th><i class="require-red">*</i>密码：</th>
                                    <td><input type="password" id="password" size="85" name="password" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>确认密码：</th>
                                    <td><input type="password" id="checkpwd" size="85" name="checkpwd" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>邮箱：</th>
                                    <td><input type="text" id="email" size="85" name="email" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>手机号：</th>
                                    <td><input type="text" id="phonenumber" size="85" name="phonenumber" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th></th>
                                    <td>
                                        <input type="submit" value="提交" class="btn btn-primary btn6 mr10">
                                        <input type="button" value="返回" onClick="history.go(-1)" class="btn btn6">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </form>
        </div>
  </div>
  <div id="bottom">
    <p id="copyright">copyright@软件工程第七小组 </p>
  </div>
</body>

</div>
</body>
</html>