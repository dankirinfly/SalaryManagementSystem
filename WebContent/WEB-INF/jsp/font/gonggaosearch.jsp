<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
        <link href="${pageContext.request.contextPath }/css/stytle.css" rel="stylesheet" media="screen" />
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
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
                    <a class="list-group-item  active" href="${pageContext.request.contextPath }/font/font.action"><i class="fa fa-fw fa-gear"></i> ホームページ </a> 
                    </div> 
                   </div> 
                   <div class="panel panel-default"> 
                    <div class="panel-heading">
                      給与照会 
                    </div> 
                    <div class="list-group"> 
                     <a class="list-group-item " href="${pageContext.request.contextPath }/font/search.action"><i class="fa fa-fw fa-gear"></i> 給与照会 </a>
                     <a class="list-group-item " href="${pageContext.request.contextPath }/font/search2.action"><i class="fa fa-fw fa-lock"></i> 経費申込照会 </a>
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

                 <div class="col-md-9">
					
                    
                    <div class="row">
                    <form method="post" action="${pageContext.request.contextPath }/font/font.action" class="form-horizontal">
                        <div class="panel panel-default">
                            
                            
                            <div class="bootstrap-admin-panel-content">
                            	<div  >
                            		<label >お知らせ時間</label>
                            		</div>
                            		<div  >
                            		<input id = "gonggao"  type="date" readonly="readonly" value="${fn:substring(gonggao.gonggaodate, 0, 10)}" />
                            	</div>
                            	<div  >
                            		<label >お知らせの概要</label>
                            		</div>
                            		<div  >
                            		<input type="text" class="col-lg-12" readonly="readonly" value="${ gonggao.gonggaotitle  }" >
                            	</div>
                            	<div >
                            		<label >お知らせの内容</label>
                            		</div>
                            		<div  >
                            		<textarea cols="1000" rows="15" readonly="readonly" class="col-lg-12"  >${ gonggao.gonggaoneirong  }</textarea>
	                           	</div>                                          
                            	<div>
                            	<button type="button" class="btn btn-lg btn-primary" onclick="form.submit()">戻る</button>
                            	 </div>                   
                            </div>
                        </div>
                        
                    </form>
                    </div>
                    
				</div>
           </div>    
        </div>
       
    </body>
</html>