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
<link rel="stylesheet" href="<%=path %>/css/qiantai.css" type="text/css" media="all" />
<title></title>
<style type="text/css">
.zg_more {
	height: 25.3em;
}

.zg_more_item {
	float: left;
	margin: 14px 16px;
}
</style>
<script type='text/javascript' src='<%=path%>/dwr/interface/loginService.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/util.js'></script>
<script>
	window.onload = function() {
		loginService.saleRank(1, 4, rankCallback);
	}
	function rankCallback(data) {
		console.log("数据加载完成");
	}
</script>
</head>
<body id="zg">
	<div class="zg_more">
		<div class="zg_more_allItems">
			<c:forEach items="${sessionScope.goodRankList}" var="goods"
				varStatus="status">
				<c:if test="${status.index < 4}">
					<div class="zg_more_item">
						<div data-p13n-asin-metadata="{&quot;ref&quot;:&quot;zg_bsnr_tab_pd_bs_1&quot;,&quot;asin&quot;:&quot;B00DA0E170&quot;}"
							class="a-section a-spacing-none p13n-asin">
							<a class="a-link-normal" target="_blank"
								href="<%=path %>/goodsDetailQian.action?goodsId=${goods.goodId }">
								<div class="a-section a-spacing-mini">
									<img alt="${goods.goodName }"
										src="<%=path %>/${goods.goodImageUrl }"
										height="90" width="68">
								</div>
								<div class="p13n-sc-truncated" aria-hidden="true" data-rows="1"
									data-truncate-by-character="1"
									title="${goods.goodName }">${goods.goodNameBrief }...
								</div>
							</a>
							<div class="a-row">
								<a class="a-link-normal a-text-normal" target="_blank"
									href="<%=path %>/goodsDetailQian.action?goodsId=${goods.goodId }">
								    <span class="a-size-base a-color-price">
									  <span class="p13n-sc-price">￥${goods.goodPrice }</span>
									</span>
								</a>
							</div>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</div>
		<div class="zg_clear"></div>
	</div>
</body>
</html>
