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
            function back1()
	        {
	           window.history.go(-1);
	        }
	        
	        function dd()
	        {
	            var odderFukuangfangshi=document.f.odderFukuangfangshi.value;
	            //alert(odderFukuangfangshi);
	            if(odderFukuangfangshi=="银行付款")
	            {
	                 document.getElementById("qufukuan").style.display="block";
	            }
	            if(odderFukuangfangshi=="货到付款")
	            {
	                 document.getElementById("qufukuan").style.display="none";
	            }
	        }
	        
	        function kahao()
	        {
	            var strUrl = "<%=path %>/qiantai/order/kahao.jsp";
				var ret = window.showModalDialog(strUrl,"","dialogWidth:700px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
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
						<form action="<%=path %>/orderSubmit.action" name="f" method="post">
		                        <table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td width="20%" align="left">收货人帐号：</td>
					                  <td width="80%" align="left">
					                      <input type="text" readonly="readonly" value="<s:property value="#session.user.userName"/>"/>
					                  </td>
					              </tr>
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td width="20%" align="left">收货人姓名：</td>
					                  <td width="80%" align="left">
					                      <input type="text" readonly="readonly" value="<s:property value="#session.user.userRealname"/>"/>
					                  </td>
					              </tr>
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td width="20%" align="left">收货人联系电话：</td>
					                  <td width="80%" align="left">
					                      <input type="text" readonly="readonly" value="<s:property value="#session.user.userTel"/>"/>
					                  </td>
					              </tr>
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td width="20%" align="left">收货人地址：</td>
					                  <td width="80%" align="left">
					                      <input type="text" readonly="readonly" value="<s:property value="#session.user.userAddress"/>"/>
					                  </td>
					              </tr>
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td width="20%" align="left">送货地址：</td>
					                  <td width="80%" align="left"><input type="text" name="odderSonghuodizhi"/></td>
					              </tr>
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td width="20%" align="left">付款方式：</td>
					                  <td width="80%" align="left">
		   		                          <select name="odderFukuangfangshi" style="width:155px;" onchange="dd()">
		   		                               <option value="货到付款">货到付款</option>
		   		                               <option value="银行付款">银行付款</option>
		   		                          </select>
		   		                          <!-- <input type="button" onclick="kahao()" id="qufukuan" style="display: none" value="查看卡号"/> -->
		                              </td>
					              </tr>
		        				</table>
		        				<table>
		        				   <tr height="7"><td></td></tr>
				                   <tr>
				                       <td><input type="button" value="返回修改" onclick="back1()"/></td>
				                       <td><input type="button" value="提交订单" onclick="javascript:document.f.submit();"/></td>
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
