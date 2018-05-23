<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%@ taglib prefix="s" uri="/struts-tags"%>

<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

    <script type="text/javascript">
            function myXinxi()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                var url="<%=path %>/qiantai/userinfo/userXinxi.jsp";
	                var n="";
	                var w="480px";
	                var h="500px";
	                var s="resizable:no;help:no;status:no;scroll:yes";
				    openWin(url,n,w,h,s);
	            </s:else>
	        }
	        function myCart()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                 var s="<%=path %>/myCart.action";
	                 window.location.href=s;
	            </s:else>
	        }
	        
	        function myOrder()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                 var s="<%=path %>/myOrder.action";
	                 window.location.href=s;
	            </s:else>
	        }
	        
	        function liuyanAll()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                 var url="<%=path %>/liuyanAll.action";
				     window.open(url,"_blank");
	            </s:else>
	        }
        
    </script>
    
  </head>
  
  <body>
        <div id="top">
			<div style="font-family: 微软雅黑;font-size: 28px;color: white;margin-top: 38px;">化妆品销售网站</div>
			<div id="top-navigation">
				<!-- <a href="#" style="font-family: 微软雅黑;font-size: 14px;">注册</a>
				<span>|</span>
				<a href="#" style="font-family: 微软雅黑;font-size: 14px;">登陆</a> -->
			</div>
		</div>
		
		<div id="navigation" style="margin-top: 0px;">
			<ul>
			    <li><a href="<%=path %>/qiantai/default.jsp"><span>系统首页</span></a></li>
			    <li><a href="<%=path %>/qiantai/userinfo/userReg.jsp"><span>注册用户</span></a></li>
			   
			    <c:if test="${sessionScope.user==null }">
			    <li><a href="<%=path %>/qiantai/userinfo/userLogin.jsp"><span>用户登陆</span></a></li>
			    </c:if>
			    <c:if test="${sessionScope.user!=null }">
			    <li><a href="#"><span>欢迎你：${sessionScope.user.userName }</span></a></li>
			    <li><a href="<%=path %>/userLogout.action"><span>注销退出</span></a></li>
			    
			    <li><a href="#" onClick="myCart()"><span>我的购物车</span></a></li>
			    <li><a href="#" onClick="myOrder()"><span>查看我的订单</span></a></li>
			    <li><a href="#" onClick="liuyanAll()"><span>系统留言板</span></a></li>
			    
			    </c:if>
			</ul>
		</div>
  </body>
</html>
