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
      <form class="ui form segment" id="transfer_out" action="AddJobTransferServlet" method="post">
				<div class="two fields">
					<div class="field">
						<label>
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;">员工编号</font>
							</font>
						</label>
						<input type="text" name="field1">
					</div>
					<div class="field">
						<label>
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;">姓名</font>
							</font>
						</label>
						<input type="text" name="field2">
					</div>
					<div class="field">
						<label>
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;">性别</font>
							</font>
						</label>
						<input type="text" name="field3">
					</div>
				</div>
				<div class="two fields">
					<div class="field">
						<label>
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;">工种</font>
							</font>
						</label>
						<input type="text" name="field4">
					</div>
					<div class="field">
						<label>
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;">工资</font>
							</font>
						</label>
						<input type="text" name="field5">
					</div>
					<div class="field">
						<label>
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;">原单位</font>
							</font>
						</label>
						<input type="text" name="field6">
					</div>
				</div>
				<div class="two fields">
					<div class="field">
						<label>
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;">新单位</font>
							</font>
						</label>
						<input type="text" name="field7">
					</div>
					<div class="field">
						<label>
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;">调动日期</font>
							</font>
						</label>
						<input type="text" name="field8">
					</div>
				</div>
				<div class="inline field">
					<div class="ui checkbox">
						<input type="checkbox" name="terms">
					</div>
				</div>
				<div class="ui primary submit button">
					<font style="vertical-align: inherit;">
						<font style="vertical-align: inherit;">提交</font>
					</font>
				</div>
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