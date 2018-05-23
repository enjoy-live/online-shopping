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
		function buy1()
        {
            <s:if test="#session.user==null">
                  alert("请先登录");
            </s:if>
            <s:else>
                 document.buy.submit();
            </s:else>
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
						<form action="<%=path %>/addToCart.action" method="post" name="buy">
							<table width="100%" border="0" cellpadding="9" cellspacing="9">
							    <tr>
							       <td align="left"><img src="<%=path %>/<s:property value="#request.goods.goodsPic"/>" width="520" height="240" style="border:1px solid #ccc; padding:3px;"/></td>
							    </tr>
							    <tr>
							       <td align="left">商品
名称：<s:property value="#request.goods.goodsName"/></td>
							    </tr>
							    <tr>
							       <td align="left">商品
介绍：<s:property value="#request.goods.goodsMiaoshu" escape="false"/></td>
							    </tr>
							    <tr>
							       <td align="left">商品
价格：<s:property value="#request.goods.goodsTejia"/></td>
							    </tr>
							    <tr>
							       <td align="left">预订数量：<input type="text" name="quantity" value="1" size="8" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/></td>
							    </tr>
							    <tr>
							       <td>
							          <input type="hidden" name="goodsId" value="<s:property value="#request.goods.goodsId"/>"/>
							          <input type="button" value="购买" onclick="buy1()" style="width: 60px;"/>
							       </td>
							    </tr>
							</table>		    
						</form>
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
