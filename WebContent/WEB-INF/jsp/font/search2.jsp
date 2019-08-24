<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <title>tkzSalary</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/css/bootstrap-admin-theme.css" rel="stylesheet" media="screen">
		<link href="${pageContext.request.contextPath }/css/DT_bootstrap.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/css/stytle.css" rel="stylesheet" media="screen" />
		<script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/twitter-bootstrap-hover-dropdown.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/vendors/datatables/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/DT_bootstrap.js"></script>
       <script type="text/javascript">
        </script>
    </head>
    <body class="bootstrap-admin-with-small-navbar">
		<nav class="navbar navbar-default navbar-inverse navbar-fixed-top " role="navigation">
			<h1 align="center" style="color:FloralWhite;">タレントキリンズ株式会社</h1>
		</nav>

        <div class="container">
            <!-- left, vertical navbar & content -->
            <div class="row">
                <!-- left, vertical navbar -->
                                <div class="col-md-3"> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading"> 
                      ホームページ
                    </div> 
                    <div class="list-group">
                    <a class="list-group-item " href="${pageContext.request.contextPath }/font/font.action"><i class="fa fa-fw fa-gear"></i> ホームページ </a> 
                    </div> 
                   </div> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      給与照会 
                    </div> 
                    <div class="list-group"> 
                     <a class="list-group-item " href="${pageContext.request.contextPath }/font/search.action"><i class="fa fa-fw fa-gear"></i> 給与照会 </a>
                     <a class="list-group-item  active" href="${pageContext.request.contextPath }/font/search2.action"><i class="fa fa-fw fa-lock"></i> 経費申込照会 </a>
                     <a class="list-group-item " href="${pageContext.request.contextPath }/font/search3.action"><i class="fa fa-fw fa-sign-in"></i> 個人情報照会 </a>
                    </div> 
                   </div> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      個人情報修正 
                    </div> 
                    <div class="list-group"> 
                     <a class="list-group-item " href="${pageContext.request.contextPath }/font/xiugai.action"><i class="fa fa-fw fa-gear"></i> 個人情報修正 </a>
                    </div> 
                   </div> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      経費申込 
                    </div> 
                    <div class="list-group"> 
                     <a class="list-group-item" href="${pageContext.request.contextPath }/font/shenbao.action"><i class="fa fa-fw fa-gear"></i> 経費申込 </a>
                    </div> 
                   </div> 
                   
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      ログアウト 
                    </div> 
                    <div class="list-group">
                     <a class="list-group-item" href="${pageContext.request.contextPath }/font/tologin.action"><i class="fa fa-fw fa-gear"></i> ログアウト</a> 
                    </div> 
                   </div> 
                </div> 
                <!-- content -->
                <div class="col-md-9">
					 <div class="row">
                        <div class="panel panel-default">
                           
                            <div class="bootstrap-admin-panel-content">
                                <table class="table table-striped table-bordered" id="example">
                                    <thead>
                                        <tr>
                                            <th>社員氏名</th>
                                            <th>料金タイプ</th>
                                            <th>交通区間</th>
                                            <th>費用時間</th>
                                            <th>交通費</th>
                                            <th>審查狀態</th>
                                            <th>失敗理由</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${trafficList }" var="traffic" varStatus="s">
                                        <tr class="gradeA">
                                            <td>
                                            <c:forEach items="${employeeList }" var="employee" varStatus="s">
                                            <c:if test="${ traffic.employeeid == employee.employeeid }">
                                            	${ employee.employeename}
                                            </c:if>
                                            </c:forEach>
                                            </td>
                                            <td>
                                            <c:if test="${ traffic.trafficexpensetype == 1 }">
                                            	定期通勤料
                                            </c:if>
                                            <c:if test="${ traffic.trafficexpensetype == 2 }">
                                            	非定期料金
                                            </c:if>
                                            </td>
                                            <td>${traffic.trafficsection }</td>
                                            <td>${traffic.traffictime }</td>
                                            <td>${traffic.trafficexpense }</td>
                                           
                                            <td class="center">
                                            	<c:if test="${ traffic.verifystatus == 1 }">
                                            		未審查
                                            	</c:if>
                                            	<c:if test="${ traffic.verifystatus == 2 }">
                                            		失敗
                                            	</c:if>
                                            	<c:if test="${ traffic.verifystatus == 3 }">
                                            		成功
                                            	</c:if>
                                            </td>
                                           
                                            <td class="center">${traffic.failedreason }</td>
                                        </tr>
                                       </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>      
                    
				</div>
           </div>    
        </div>
    </body>
</html>