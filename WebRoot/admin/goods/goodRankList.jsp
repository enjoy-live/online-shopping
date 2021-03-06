<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        <script language="javascript">
           function goodsDetailHou(goodsId)
           {
                 var url="<%=path %>/goodsDetailHou.action?goodsId="+goodsId;
                 var n="";
                 var w="480px";
                 var h="500px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
           }
           
           function goodsDel(goodRankId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/goodRankDel.action?goodRankId="+goodRankId;
               }
           }
           
           function over(picPath)
	       {
			  if (picPath=="")picPath="/images/default.jpg";
			  x = event.clientX;
			  y = event.clientY;      
			  document.all.tip.style.display = "block";
			  document.all.tip.style.top = y;
			  document.all.tip.style.left = x+10;
			  document.all.photo.src = ".."+picPath; 
		   }
		   function out()
	       {
			  document.all.tip.style.display = "none";
		   }		
       </script>
	</head>

	<body leftmargin="8" topmargin="8" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="9" background="<%=path %>/images/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="10%">商品名称</td>
					<td width="10%">商品图片地址</td>
					<td width="10%">商品市场价格</td>
					<td width="10%">商品销售量</td>
					<td width="10%">创建时间</td>
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#session.adminGoodRankList" id="goods" status="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#goods.id"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#goods.goodName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#goods.goodImageUrl"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#goods.goodPrice"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					     <s:property value="#goods.saleAmount"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					     <s:property value="#goods.createDate"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <input type="button" value="删除" onclick="goodsDel(<s:property value="#goods.id"/>)"/>
					</td>
				</tr>
				</s:iterator>
			</table>
			<br/>
		    
		    <div id="tip" style="position:absolute;display:none;border:0px;width:80px; height:80px;">
			<TABLE id="tipTable" border="0" bgcolor="#ffffee">
				<TR align="center">
					<TD><img id="photo" src="" height="80" width="80"></TD>
				</TR>
			</TABLE>
		    </div>
	</body>
</html>
