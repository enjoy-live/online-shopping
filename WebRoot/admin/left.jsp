<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
    
    <script src="<%=path %>/js/prototype.js"></script>
	
	<style type="text/css">
		body,td,th 
		{
			font-size: 12px;
		}
		.STYLE1 {color: #F33532}
		body 
		{
			background-color: #F7F7F7;
			background-image: url(<%=path %>/images/left_02_01_02.gif);
		}
		.STYLE2 {color: #FFFFFF}
	</style>
    
  </head>

<c:if test="${sessionScope.userType==0 }">
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="200" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td background="<%=path %>/images/left_02_01_02.gif">
			<table width="200"  border="0" cellpadding="0" cellspacing="0" background="<%=path %>/images/left_02_01_02.gif">
	          <!-- 1111 -->
	          <tr>
	            <td>
	            <table width="200" border="0" cellpadding="0" cellspacing="0">
	              <tr onClick="new Element.toggle('submenu1')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>修改密码</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu1">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/admin/userinfo/userPw.jsp" target="mainFrame">修改密码</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 1111 -->
              
              
              
              
              
              
              
              <!-- 222 -->
              <tr>
	            <td>
	            <table width="200" border="0" cellpadding="0" cellspacing="0">
	              <tr onClick="new Element.toggle('submenu2')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>用户管理</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu2">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/userMana.action" target="mainFrame">用户管理</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 222 -->
              
              
              
              
              
              <!-- 222 -->
              <tr>
	            <td>
	            <table width="200" border="0" cellpadding="0" cellspacing="0">
	              <tr onClick="new Element.toggle('submenu3')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>商品
类别</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu3">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/catelogMana.action" target="mainFrame">类别管理</a>
						      </td>
						    </tr>
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/admin/catelog/catelogAdd.jsp" target="mainFrame">添加类别</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 222 -->
              
              
              
              
              
              <!-- 222 -->
              <tr>
	            <td>
	            <table width="200" border="0" cellpadding="0" cellspacing="0">
	              <tr onClick="new Element.toggle('submenu4')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>商品
管理</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu4">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/goodsMana.action" target="mainFrame">商品
管理</a>
						      </td>
						    </tr>
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/admin/goods/goodsAdd.jsp" target="mainFrame">添加商品
</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 222 -->
              
              
              
              
              
              <!-- 222 -->
              <tr>
	            <td>
	            <table width="200" border="0" cellpadding="0" cellspacing="0">
	              <tr onClick="new Element.toggle('submenu5')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>订单管理</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu5">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/orderMana.action" target="mainFrame">订单管理</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 222 -->
              
              
              
              
              
              <!-- 222 -->
              <tr>
	            <td>
	            <table width="200" border="0" cellpadding="0" cellspacing="0">
	              <tr onClick="new Element.toggle('submenu6')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>留言管理</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu6">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/liuyanMana.action" target="mainFrame">留言管理</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 222 -->
              
              
              <!-- 222 -->
              <tr>
	            <td>
	            <table width="200" border="0" cellpadding="0" cellspacing="0">
	              <tr onClick="new Element.toggle('submenu7')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>销量排行榜管理</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu7">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/goodRankList.action" target="mainFrame">销量排行榜管理</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 222 -->
              
              
              
              
              <%-- <!-- 222 -->
              <tr>
	            <td>
	            <table width="200" border="0" cellpadding="0" cellspacing="0">
	              <tr onClick="new Element.toggle('submenu8')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>1111111</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu8">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/userMana.action" target="mainFrame">11111111</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 222 --> --%>
              
              
            </table>
	    </td>
	</tr>
</table>
</body>
</c:if> 


















<c:if test="${sessionScope.userType==1 }"><!-- 厨师 -->
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="200" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td background="<%=path %>/images/left_02_01_02.gif">
			<table width="200"  border="0" cellpadding="0" cellspacing="0" background="<%=path %>/images/left_02_01_02.gif">
	          <!-- 1111 -->
	          <tr>
	            <td>
	            <table width="200" border="0" cellpadding="0" cellspacing="0">
	              <tr onClick="new Element.toggle('submenu1')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>用户订单信息</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu1">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/order_chushi.action" target="mainFrame">用户订单信息</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 1111 -->
              
              
              
            </table>
	    </td>
	</tr>
</table>
</body>
</c:if> 


















<c:if test="${sessionScope.userType==2 }"><!-- 外卖人员 -->
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="200" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td background="<%=path %>/images/left_02_01_02.gif">
			<table width="200"  border="0" cellpadding="0" cellspacing="0" background="<%=path %>/images/left_02_01_02.gif">
	          <!-- 1111 -->
	          <tr>
	            <td>
	            <table width="200" border="0" cellpadding="0" cellspacing="0">
	              <tr onClick="new Element.toggle('submenu1')" style="cursor:hand;">
	                <td width="200" height="33" background="<%=path %>/images/left_02_01_01.gif">
		                <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
		                  <tr>
		                    <td width="70%" height="26" align="center" valign="bottom">
		                        <span class="SystemLeft STYLE2"><strong>用户订单信息</strong></span>
		                    </td>
		                    <td width="30%">&nbsp;</td>
		                  </tr>
		                </table>
	                </td>
	              </tr>
	              <tr>
	                <td width="200"  style="display:none"  id="submenu1">
						<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
						      <td width="36" height="22" align="center">
						         <img src="<%=path %>/images/left_02_01.gif">
						      </td>
						      <td>
						         <a href="<%=path %>/order_waimai.action" target="mainFrame">用户订单信息</a>
						      </td>
						    </tr>
						</table>				
				    </td>
	              </tr>
	            </table>
                </td>
              </tr>
              <!-- 1111 -->
              
              
              
            </table>
	    </td>
	</tr>
</table>
</body>
</c:if> 
</html>
