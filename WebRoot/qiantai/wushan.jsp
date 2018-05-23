<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
    
    <link rel="stylesheet" href="<%=path %>/css/qiantai.css" type="text/css" media="all" />
    
  </head>
  
<body>
<div id="header">
	<div class="shell">
		<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include> 
	</div>
</div>



<div id="container">
	<div class="shell">
		
		<!-- <div class="small-nav">
			&nbsp;
		</div> -->
		
		<!-- <div class="msg msg-ok">
			<p><strong>Your file was uploaded succesifully!</strong></p>
			<a href="#" class="close">close</a>
		</div>
		
		<div class="msg msg-error">
			<p><strong>You must select a file to upload first!</strong></p>
			<a href="#" class="close">close</a>
		</div> -->
		<div id="main">
			<div class="cl">&nbsp;</div>
			
			<div id="content">
				<!-- 11 -->
				<div class="box">
					<div class="box-head">
						<h2 class="left">&nbsp;</h2>
						<div class="right">
							&nbsp;
						</div>
					</div>
					<div class="table">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<!-- <tr>
								<th width="13"></th>
								<th>&nbsp;</th>
								<th>&nbsp;</th>
								<th>&nbsp;</th>
								<th width="110" class="ac">&nbsp;</th>
							</tr> -->
							<tr>
								<td width="85%"><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
								<td width="15%">2014-06-05</td>
							</tr>
							<tr>
								<td width="85%"><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
								<td width="15%">2014-06-05</td>
							</tr>
							<tr>
								<td width="85%"><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
								<td width="15%">2014-06-05</td>
							</tr>
							<tr>
								<td width="85%"><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
								<td width="15%">2014-06-05</td>
							</tr>
							<tr>
								<td width="85%"><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
								<td width="15%">2014-06-05</td>
							</tr>
						</table>
						<div class="pagging">
							<div class="left">&nbsp;</div>
							<div class="right">
								&nbsp;
							</div>
						</div>
					</div>
				</div>
				<!-- 11 -->
				
				
				
				<!-- 22 -->
				<div class="box">
					<div class="box-head">
						<h2>&nbsp;</h2>
					</div>
					
					<form action="" method="post">
						<div class="form">
							&nbsp;
						</div>
					</form>
				</div>
				<!-- 22 -->
				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

			</div>
			
			<jsp:include flush="true" page="/qiantai/right.jsp"></jsp:include> 
			<div class="cl">&nbsp;</div>			
		</div>
	</div>
</div>

<div id="footer">
	<div class="shell">
		<span class="left"></span>
		<span class="right">
			<a href="<%=path %>/login.jsp">系统后台</a>
		</span>
	</div>
</div>
	
</body>
</html>
