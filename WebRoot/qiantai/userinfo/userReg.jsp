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
            function closeOpen()
		    {
		       window.returnValue=false;
		       window.close();
		    }
		    function check1()
		    {
		        if(document.form1.userName.value=="")
		        {
		            alert("请输入账号");
		            return false;
		        }
		        if(document.form1.userPw.value=="")
		        {
		            alert("请输入密码");
		            return false;
		        }
		        if(document.form1.userRealname.value=="")
		        {
		            alert("请输入姓名");
		            return false;
		        }
		        document.form1.submit();
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
						<form action="<%=path %>/userReg.action" name="form1" method="post">
						<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1">
							<tr>
								<td width="20%" height="30" align="right"  style="font-size: 11px;">
									账号：
								</td>
								<td width="80%" bgcolor="#FFFFFF">
									&nbsp;
									<input type="text" name="userName" id="userName"/>
								</td>
							</tr>
							<tr>
								<td height="30" align="right" style="font-size: 11px;">
									密码：
								</td>
								<td bgcolor="#FFFFFF">
									&nbsp;
									<input type="password" name="userPw"/>
								</td>
							</tr>
							<tr>
								<td height="30" align="right" style="font-size: 11px;">
									姓名：
								</td>
								<td bgcolor="#FFFFFF">
									&nbsp;
									<input type="text" name="userRealname"/>
								</td>
							</tr>
							<tr>
								<td height="30" align="right" style="font-size: 11px;">
									性别：
								</td>
								<td bgcolor="#FFFFFF">
									&nbsp;
									<input type="radio" name="userSex" value="男" checked="checked" style="border: 0px;"/>男
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="userSex" value="女" style="border: 0px;"/>女
								</td>
							</tr>
							<tr>
								<td height="30" align="right" style="font-size: 11px;">
									年龄：
								</td>
								<td bgcolor="#FFFFFF">
									&nbsp;
									<input type="text" name="userAge" value="20" 
									onkeyup="value=value.replace(/[^\d]/g,'') " 
									onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
								</td>
							</tr>
							<tr>
								<td height="30" align="right" style="font-size: 11px;">
									住址：
								</td>
								<td bgcolor="#FFFFFF">
									&nbsp;
									<input type="text" name="userAddress"/>
								</td>
							</tr>
							<tr>
								<td height="30" align="right" style="font-size: 11px;">
									电话：
								</td>
								<td bgcolor="#FFFFFF">
									&nbsp;
									<input type="text" name="userTel"/>
								</td>
							</tr>
							<tr>
								<td height="30" align="right" style="font-size: 11px;">
									邮箱：
								</td>
								<td bgcolor="#FFFFFF">
									&nbsp;
									<input type="text" name="userEmail"/>
								</td>
							</tr>
							
							<tr>
								<td height="30" align="right" bgcolor="#F9F9F9">
									&nbsp;
								</td>
								<td bgcolor="#FFFFFF">
									&nbsp;
									<input type="button" value="确定" onclick="check1();"/>
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
