<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
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
    
    <script language="javascript">
            
    </script>
    
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
					<div class="table" style="height: 593px;margin-top: 10px;margin-left: 10px;">
						<table width="99%" border="0" cellpadding="9" cellspacing="9" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
				              <tr>
				                  <td align="center" style="color: red">恭喜您，订单提交成功！</td>
				              </tr>
				              <tr>
				                  <td>订单编号：<s:property value="#request.order.orderBianhao"/></td>
				              </tr>
				              
				              <tr>
				                  <td>总金额：<s:property value="#request.order.orderJine"/></td>
				              </tr>
				              <tr>
				                  <td>下单日期:<s:property value="#request.order.orderDate"/></td>
				              </tr>
				              <tr>
				                  <td>送货地址:<s:property value="#request.order.odderSonghuodizhi"/></td>
				              </tr>
				              <tr>
				                  <td>付款方式:<s:property value="#request.order.odderFukuangfangshi"/></td>
				              </tr>
		        		</table>
					</div>
				</div>
				<!-- 11 -->
				
				
				
				<!-- 22 -->
				<!-- <div class="box">
					<div class="box-head">
						<h2>&nbsp;</h2>
					</div>
					
					<form action="" method="post">
						<div class="form">
							&nbsp;
						</div>
					</form>
				</div> -->
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
