<%@page import="java.util.List"%>
<%@page import="org.PMS.entity.EmployeeBasicInfomation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to Tablecloth</title>
<link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="tablecloth/tablecloth.js"></script>
<style>
body { margin:0; padding:0; background:#f1f1f1; font:70% Arial, Helvetica, sans-serif; color:#555; line-height:150%; text-align:left; }

h1 { font-size:140%; margin:0 20px; line-height:80px; }

#container { margin:0 auto; width:680px; background:#fff; padding-bottom:20px; }
#content { margin:0 20px; }
p.sig { margin:0 auto; width:680px; padding:1em 0; }
form { margin:1em 0; padding:.2em 20px; background:#eee; }
</style>
</head>
<body>
	<br />
	<br />
<div id="container">
  <center><h1>员工信息表</h1></center>
  <div id="content">
    
    
	<%EmployeeBasicInfomation emp=(EmployeeBasicInfomation)request.getAttribute("emp"); %>
    <table cellspacing="0" cellpadding="0">
    	<tr>
        <th>单位</th>
        <td><%=emp.getBranch() %></td>
      </tr>
      <tr>
        <th>姓名</th>
        <td><%=emp.getName() %></td>
      </tr>
      <tr>
        <th>性别</th>
        <td><%=emp.getSex() %></td>
      </tr>
      <tr>
        <th>出生日期</th>
        <td><%=emp.getBirthdate()%></td>
      </tr>
      <tr>
        <th>民族</th>
        <td><%=emp.getNation() %></td>
      </tr>
      <tr>
        <th>文化程度</th>
        <td><%=emp.getStandardOfCulture() %></td>
      </tr><tr>
        <th>政治面貌</th>
        <td><%=emp.getPoliticalStatus() %></td>
      </tr>
      <tr>
        <th>工作时间</th>
        <td><%=emp.getWorkingHours() %></td>
      </tr>
      <tr>
        <th>合同期限</th>
        <td><%=emp.getContractTerm() %></td>
      </tr>
      <tr>
        <th>工种</th>
        <td><%=emp.getTypeOfWork() %></td>
      </tr>
      <tr>
        <th>驾驶执照</th>
        <td><%=emp.getDrivingLicense() %></td>
      </tr><tr>
        <th>技能工资</th>
        <td><%=emp.getSkillWage() %></td>
      </tr>
      <tr>
        <th>档案工资</th>
        <td><%=emp.getSkillWage() %></td>
      </tr>
      <tr>
        <th>岗位工资</th>
        <td><%=emp.getJobWage() %></td>
      </tr>
      <tr>
        <th>累计工资</th>
        <td><%=emp.getTotalWage() %></td>
      </tr>
      <tr>
        <th>家庭住址</th>
        <td><%=emp.getHomeAddress() %></td>
      </tr>
      <tr>
        <th>邮政编码</th>
        <td><%=emp.getPostalcode() %></td>
      </tr>
    </table>
  </div>
</div>



<div style="width:550px;margin:20px auto;">

</div>


</body>
</html>
