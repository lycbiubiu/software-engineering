<%@page import="java.util.List"%>
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
  <script src="js/index.js"></script>
 
 
    <title>公司人事管理</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
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
                <form action="#" method="post">
                    <table class="search-tab">
                        <tr>
                            <th width="120">选择分类:</th>
                            <td>
                                <select name="search-sort" id="">
                                    <option value="">全部</option>
                                    <option value="19">精品界面</option><option value="20">推荐界面</option>
                                </select>
                            </td>
                            <th width="70">关键字:</th>
                            <td><input class="common-text" placeholder="关键字" name="keywords" value="" id="" type="text"></td>
                            <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="insert.html"><i class="icon-font"></i>新增作品</a>
                        <a id="batchDel" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
                        <a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name="" type="checkbox"></th>
                            <th>排序</th>
                            <th>ID</th>
                            <th>标题</th>
                            <th>审核状态</th>
                            <th>点击</th>
                            <th>发布人</th>
                            <th>更新时间</th>
                            <th>评论</th>
                            <th>操作</th>
                        </tr>
                        <tr>
                            <td class="tc"><input name="id[]" value="59" type="checkbox"></td>
                            <td>
                                <input name="ids[]" value="59" type="hidden">
                                <input class="common-input sort-input" name="ord[]" value="0" type="text">
                            </td>
                            <td>59</td>
                            <td title="发哥经典"><a target="_blank" href="#" title="发哥经典">发哥经典</a> …
                            </td>
                            <td>0</td>
                            <td>2</td>
                            <td>admin</td>
                            <td>2014-03-15 21:11:01</td>
                            <td></td>
                            <td>
                                <a class="link-update" href="#">修改</a>
                                <a class="link-del" href="#">删除</a>
                            </td>
                        </tr>
                        <tr>
                            <td class="tc"><input name="id[]" value="58" type="checkbox"></td>
                            <td>
                                <input name="ids[]" value="58" type="hidden">
                                <input class="common-input sort-input" name="ord[]" value="0" type="text">
                            </td>
                            <td>58</td>
                            <td title="黑色经典"><a target="_blank" href="#" title="黑色经典">黑色经典</a> …
                            </td>
                            <td>0</td>
                            <td>35</td>
                            <td>admin</td>
                            <td>2013-12-30 22:34:00</td>
                            <td></td>
                            <td>
                                <a class="link-update" href="#">修改</a>
                                <a class="link-del" href="#">删除</a>
                            </td>
                        </tr>
                    </table>
                    <div class="list-page"> 2 条 1/1 页</div>
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