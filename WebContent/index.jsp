<%@page import="java.util.List"%>
<%@page import="org.PMS.entity.EmployeeBasicInfomation"%>
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
        <a class="completed step" href="QueryAllEmployeeServlet">
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
        <div class="search-wrap">
            <div class="search-content">
                <form  action="QueryEmployeeByEid" method="post">
                    <table class="search-tab">
                        <tr>
                            <th width="70">员工号:</th>
                            <td><input class="common-text" placeholder="员工号" name="eid" value="" id="" type="text"></td>
                            <td><input class="btn btn2" name="sub" value="查询" type="submit"></td>
                            <td><a href="addEmpInfo.jsp">    添加员工  </a></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>EID</th>
                            <th>员工姓名</th>
                            <th>性别</th>
                            <th>工龄</th>
                            <th>所在单位</th>
                            <th>职位</th>
                            <th>操作</th>
                        </tr>
									      <%
												List<EmployeeBasicInfomation> emps = (List<EmployeeBasicInfomation>)request.getAttribute("emps");
									      Integer totalsize = (Integer)request.getAttribute("totalsize");
									  		Integer pageno = (Integer)request.getAttribute("pageno");
									  		Integer pagecount = (Integer)request.getAttribute("pagecount");
									  		boolean isNotFirstPage = pageno>1;
									  		boolean isNotLastPage = pageno<totalsize;
												for(EmployeeBasicInfomation emp:emps){
												%>
													
                        <tr>
                            <td><%=emp.getEid()%></td>
                            <td><%=emp.getName()%></td>
                            <td><%=emp.getSex()%></td>
                            <td><%=emp.getWorkingHours()%></td>
                            <td><%=emp.getBranch()%></td>
                            <td><%=emp.getTypeOfWork()%></td>
                            <td>
                                <a class="link" href="ShowEmpInfomationServlet?eid=<%=emp.getEid()%>">查看详情</a>
                                <a class="link-update" href="GoUpdateServlet?eid=<%=emp.getEid()%>">修改</a>
                                <a class="link-del" href="DeleteEmployeeServlet?eid=<%=emp.getEid()%>">删除</a>
                            </td>
                        </tr>
                        <%
													}
                        %>
                    </table>
                    <div class="list-page">
                     	<div >
                     		共 <%=totalsize%> 条 <span name=pageno><%=pageno%></span>/<%=pagecount%>页
											</div>			
											<div><br>
                     		 <a class="link btn " href="#"> 上一页  </a>
                     		 <a class="link btn " href="#"> 下一页  </a>
											</div>	
                     </div>
                </div>
            </form>
        </div>
    </div>
  </div>
  <div id="bottom">
    <p id="copyright">copyright@软件工程第七小组 </p>
  </div>
</body>

</div>
</body>
</html>