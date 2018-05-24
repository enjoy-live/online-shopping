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
        function orderDel(orderId)
        {
            var url="<%=path %>/orderDel.action?orderId="+orderId;
            window.location.href=url;
        }
        
        function orderDetail(orderId)
        {
                 var url="<%=path %>/orderDetail.action?orderId="+orderId;
                 /* var ret = window.showModalDialog(url,"","dialogWidth:800px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;"); */
                 window.location.href=url;
        }
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
						<table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
				              <tr align="center" bgcolor="#FAFAF1" height="22">
				                  <td>订单编号</td>
				                  <td>金额</td>
				                  <td>下单日期</td>
				                  <td>订单状态</td>
				                  <td>编辑</td>
				              </tr>
							  <s:iterator value="#request.orderList" id="order">
							  <tr align='center' bgcolor="#FFFFFF" height="22">
								  <td>
									<s:property value="#order.orderBianhao"/>
								  </td>
								  <td>￥<s:property value="#order.orderJine"/><br/></td>
								  <td><s:property value="#order.orderDate"/></td>
								  <td>
								      <s:property value="#order.orderZhuangtai"/>
	                              </td>
								  <td>
								      <a href="#" onclick="orderDetail(<s:property value="#order.orderId"/>)">订单明细</a>
								      &nbsp;&nbsp;
								      <a href="#" onclick="orderDel(<s:property value="#order.orderId"/>)">删除</a>
								  </td>
							  </tr>
							  </s:iterator>
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
