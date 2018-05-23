<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<html>
<head>
<link rel="stylesheet" href="<%=path%>/css/sales.css" type="text/css"
	media="all" />
<title></title>
<style type="text/css">
#z_more {
	font-size: 0.01px;
	color: #d3cfc7;
	line-height: 0;
	font-weight: normal;
	white-space: nowrap;
	font-family: arial;
}

#z_f {
	margin-left: 5.4em;
	font-size: 0.01px;
	color: #e49511;
	line-height: 0;
	font-weight: normal;
	white-space: nowrap;
	font-family: arial;
}

.zg_more {
	height: 25.3em;
}

.zg_more_item {
	float: left;
	margin: 9px 14px;
}
</style>
</head>
<body id="zg">
	<div class="zg_more">
		<div class="zg_more_allItems">
			<c:forEach items="${requestScope.goodsNoTejiaList}" var="goods"
				varStatus="status">
				<c:if test="${status.index < 4}">
					<div class="zg_more_item">
						<div
							data-p13n-asin-metadata="{&quot;ref&quot;:&quot;zg_bsnr_tab_pd_bs_1&quot;,&quot;asin&quot;:&quot;B00DA0E170&quot;}"
							class="a-section a-spacing-none p13n-asin">
							<a class="a-link-normal" target="_blank"
								href="/dp/B00DA0E170/ref=zg_bsnr_tab_pd_bs_1?_encoding=UTF8&amp;psc=1&amp;refRID=B6TAGBNPMWVB227NBGJF"><div
									class="a-section a-spacing-mini">
									<img alt="深入理解Java虚拟机：JVM高级特性与最佳实践（第2版） (原创精品系列)"
										src="https://images-cn.ssl-images-amazon.com/images/I/61IoyFzQiYL._SL500__BG0,0,0,0_FMpng_SR68,90_.jpg"
										height="90" width="68">
								</div>
								<div class="p13n-sc-truncated" aria-hidden="true" data-rows="1"
									data-truncate-by-character="1"
									title="深入理解Java虚拟机：JVM高级特性与最佳实践（第2版） (原创精品系列)">深入理…</div> </a>
							<div class="a-row a-size-small">
								<span class="a-size-small a-color-secondary">Kindle电子书</span>
							</div>
							<div class="a-row">
								<a class="a-link-normal a-text-normal" target="_blank"
									href="/dp/B00DA0E170/ref=zg_bsnr_tab_pd_bs_1?_encoding=UTF8&amp;psc=1&amp;refRID=B6TAGBNPMWVB227NBGJF"><span
									class="a-size-base a-color-price"><span
										class="p13n-sc-price">￥14.99</span></span></a>
							</div>
						</div>
					</div>
				</c:if>
				<td align="center"><a
					href="<%=path %>/goodsDetailQian.action?goodsId=${goods.goodsId }">
						<img width="200" height="170" src="<%=path %>/${goods.goodsPic }"
						style="border: 1px solid #ccc; padding: 3px;" />
				</a> <br /> ${goods.goodsName }(￥:${goods.goodsShichangjia }元)</td>
			</c:forEach>
			<div class="zg_more_item">
				<div
					data-p13n-asin-metadata="{&quot;ref&quot;:&quot;zg_bsnr_tab_pd_bs_1&quot;,&quot;asin&quot;:&quot;B00DA0E170&quot;}"
					class="a-section a-spacing-none p13n-asin">
					<a class="a-link-normal" target="_blank"
						href="/dp/B00DA0E170/ref=zg_bsnr_tab_pd_bs_1?_encoding=UTF8&amp;psc=1&amp;refRID=B6TAGBNPMWVB227NBGJF"><div
							class="a-section a-spacing-mini">
							<img alt="深入理解Java虚拟机：JVM高级特性与最佳实践（第2版） (原创精品系列)"
								src="https://images-cn.ssl-images-amazon.com/images/I/61IoyFzQiYL._SL500__BG0,0,0,0_FMpng_SR68,90_.jpg"
								height="90" width="68">
						</div>
						<div class="p13n-sc-truncated" aria-hidden="true" data-rows="1"
							data-truncate-by-character="1"
							title="深入理解Java虚拟机：JVM高级特性与最佳实践（第2版） (原创精品系列)">深入理…</div> </a>
					<div class="a-row a-size-small">
						<span class="a-size-small a-color-secondary">Kindle电子书</span>
					</div>
					<div class="a-row">
						<a class="a-link-normal a-text-normal" target="_blank"
							href="/dp/B00DA0E170/ref=zg_bsnr_tab_pd_bs_1?_encoding=UTF8&amp;psc=1&amp;refRID=B6TAGBNPMWVB227NBGJF"><span
							class="a-size-base a-color-price"><span
								class="p13n-sc-price">￥14.99</span></span></a>
					</div>
				</div>
			</div>
			<div class="zg_more_item">
				<div
					data-p13n-asin-metadata="{&quot;ref&quot;:&quot;zg_bsnr_tab_pd_bs_2&quot;,&quot;asin&quot;:&quot;B078TFDYVS&quot;}"
					class="a-section a-spacing-none p13n-asin">
					<a class="a-link-normal" target="_blank"
						href="/dp/B078TFDYVS/ref=zg_bsnr_tab_pd_bs_2?_encoding=UTF8&amp;psc=1&amp;refRID=B6TAGBNPMWVB227NBGJF"><div
							class="a-section a-spacing-mini">
							<img alt="Java编程的逻辑 (Java核心技术系列)"
								src="https://images-cn.ssl-images-amazon.com/images/I/81EBjUXnrBL._SL500__BG0,0,0,0_FMpng_SR70,90_.jpg"
								height="90" width="70">
						</div>
						<div class="p13n-sc-truncated" aria-hidden="true" data-rows="1"
							data-truncate-by-character="1" title="Java编程的逻辑 (Java核心技术系列)">Java编程的…</div>
					</a>
					<div class="a-row a-size-small">
						<span class="a-size-small a-color-secondary">Kindle电子书</span>
					</div>
					<div class="a-row">
						<a class="a-link-normal a-text-normal" target="_blank"
							href="/dp/B078TFDYVS/ref=zg_bsnr_tab_pd_bs_2?_encoding=UTF8&amp;psc=1&amp;refRID=B6TAGBNPMWVB227NBGJF"><span
							class="a-size-base a-color-price"><span
								class="p13n-sc-price">￥19.99</span></span></a>
					</div>
				</div>
			</div>
			<div class="zg_more_item">
				<div
					data-p13n-asin-metadata="{&quot;ref&quot;:&quot;zg_bsnr_tab_pd_bs_3&quot;,&quot;asin&quot;:&quot;B00BTCMPKG&quot;}"
					class="a-section a-spacing-none p13n-asin">
					<a class="a-link-normal" target="_blank"
						href="/dp/B00BTCMPKG/ref=zg_bsnr_tab_pd_bs_3?_encoding=UTF8&amp;psc=1&amp;refRID=B6TAGBNPMWVB227NBGJF"><div
							class="a-section a-spacing-mini">
							<img alt="深入理解Java虚拟机：JVM高级特性与最佳实践"
								src="https://images-cn.ssl-images-amazon.com/images/I/611qVjQBrHL._SL500_UX300_PJku-sticker-v7,TopRight,0,-50_OU28__BG0,0,0,0_FMpng_SR68,90_.jpg"
								height="90" width="68">
						</div>
						<div class="p13n-sc-truncated" aria-hidden="true" data-rows="1"
							data-truncate-by-character="1" title="深入理解Java虚拟机：JVM高级特性与最佳实践">深入理…</div>
					</a>
					<div class="a-row a-size-small">
						<span class="a-size-small a-color-secondary">Kindle电子书</span>
					</div>
					<div class="a-row">
						<a class="a-link-normal a-text-normal" target="_blank"
							href="/dp/B00BTCMPKG/ref=zg_bsnr_tab_pd_bs_3?_encoding=UTF8&amp;psc=1&amp;refRID=B6TAGBNPMWVB227NBGJF"><span
							class="a-size-base a-color-price"><span
								class="p13n-sc-price">￥25.00</span></span></a>
					</div>
				</div>
			</div>
		</div>
		<div class="zg_clear"></div>
	</div>
</body>
</html>
