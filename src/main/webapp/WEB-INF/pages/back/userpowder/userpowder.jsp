<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html><html>
<head>
<meta charset="utf-8"/>
<title>管理员权限分配</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="${app }/staticfile/css/style.css">
<link rel="stylesheet" href="${app }/staticfile/components/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
<link rel="stylesheet" rev="stylesheet" type="text/css" href="${app }/staticfile/css/extreme/extremecomponents.css" />
<link rel="stylesheet" rev="stylesheet" type="text/css" href="${app }/staticfile/css/extreme/extremesite.css" />
<script type="text/javascript" src="${app }/staticfile/components/zTree/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="${app }/staticfile/components/zTree/js/jquery.ztree.core-3.5.min.js"></script>
<script type="text/javascript" src="${app }/staticfile/components/zTree/js/jquery.ztree.excheck-3.5.min.js"></script>
<%-- <script language="javascript" src="${app }/staticfile/js/common.js"></script> --%>
<%-- <script language="javascript" src="${app }/staticfile/js/jquery-1.6.2.js"></script> --%>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<%-- <script src="${app }/staticfile/js/jquery.js"></script>
<script src="${app }/staticfile/js/jquery.mCustomScrollbar.concat.min.js"></script> --%>
<script>

	(function($){
		$(window).load(function(){
			
			$("a[rel='load-content']").click(function(e){
				e.preventDefault();
				var url=$(this).attr("href");
				$.get(url,function(data){
					$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
					//scroll-to appended content 
					$(".content").mCustomScrollbar("scrollTo","h2:last");
				});
			});
			
			$(".content").delegate("a[href='top']","click",function(e){
				e.preventDefault();
				$(".content").mCustomScrollbar("scrollTo",$(this).attr("href"));
			});
			
		});
	})(jQuery);
	
	
	function formSubmit (url,sTarget){
		document.forms[0].target = sTarget
		document.forms[0].action = url;
		document.forms[0].submit();
		return true;
	}
	
	var setting = {
			check: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true
				}
			}
		};
		
		//这里相当于在拿后来传来的数据，后台在传数据的时候，属性名要对应上
		var zNodes =${zTreeJson}
		
		$(document).ready(function(){
			$.fn.zTree.init($("#htZtree"), setting, zNodes);

			var zTreeObj = $.fn.zTree.getZTreeObj("htZtree");
			zTreeObj.expandAll(true);		//展开所有树节点
		});
		
		
		//获取到所以用户选中的节点id值
		//获取所有选择的节点，提交时调用下面函数
		function submitCheckedNodes(treeNode) {
			var nodes = new Array();
			var zTreeObj = $.fn.zTree.getZTreeObj("htZtree");
			nodes = zTreeObj.getCheckedNodes(true);		//取得选中的结点
			var str = "";
			for (i = 0; i < nodes.length; i++) {
				if (str != "") {
					str += ",";
				}
				str += nodes[i].id;
			}
			
			$('#powderIds').val(str);		//将拼接完成的字符串放入隐藏域，这样就可以通过post提交
		}
	
</script>

</head>
<body>
<!--header-->
<header>
 <h1><img src="${app }/staticfile/images/admin_logo.png"/></h1>
 <ul class="rt_nav">
  <li><a href="/back/logout.action" class="quit_icon">安全退出</a></li>
 </ul>
</header>
<!--aside nav-->
<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
 <h2><a href="/back/home.action">起始页</a></h2>
 <ul>
 	
 	<shiro:hasRole name="2">
 	  <li>
   <dl>
    <dt>基础信息</dt>
    <dd><a href="/back/userinfo/userInfo">管理员基本信息</a></dd>
   <dd><a href="/back/userinfo/toupdate">管理员信息修改</a></dd>
   </dl>
  </li>
 </shiro:hasRole>
 
   <!-- shiro -->
   
   <shiro:hasPermission name="商品管理">
  <li>
   <dl>
    <dt>商品管理</dt>
    <!--当前链接则添加class:active-->
    <dd><a href="/back/product/prodList" class="active">商品列表</a></dd>
   </dl>
  </li>
  </shiro:hasPermission>
    <!-- shiro -->
    <shiro:hasPermission name="订单管理">
  <li>
   <dl>
    <dt>订单信息管理</dt>
    <dd><a href="/back/order/oroderList">订单列表查询</a></dd>

   </dl>
  </li>
  </shiro:hasPermission>
  
  <shiro:hasPermission name="用户管理">
  <li>
   <dl>
    <dt>用户管理</dt>
    <dd><a href="/back/user/userList">用户列表</a></dd>
	
   </dl>
  </li>
  </shiro:hasPermission>
  
  <shiro:hasPermission name="管理员管理">
  <li>
   <dl>
    <dt>管理员管理</dt>
    <dd><a href="/back/userpowder/adminInsert">新建管理员</a></dd>
    <dd><a href="/back/userpowder/powderSet">管理员权限设置</a></dd>
   </dl>
  </li>
  </shiro:hasPermission>
  
  <shiro:hasPermission name="在线统计">
  <li>
   <dl>
    <dt>在线统计</dt>
    <dd><a href="/back/tongji">类别统计</a></dd>
    <dd><a href="/back/tongji1">收藏统计</a></dd>
   </dl>
  </li>
  </shiro:hasPermission>

 </ul>
</aside>
<style>
.dataStatistic{width:400px;height:200px;border:1px solid #ccc;margin:0 auto;margin:10px;overflow:hidden}
#cylindrical{width:400px;height:200px;margin-top:-15px}
#line{width:400px;height:200px;margin-top:-15px}
#pie{width:400px;height:200px;margin-top:-15px}
</style>
<section class="rt_wrap content mCustomScrollbar">

 <div class="rt_content">
 
 <!-- 填入内容 -->
 <div class="page_title">
      <form name="icform" method="post">
       <h2 class="fl">管理员列表</h2>
       
      </div>
		<div>
			<div class="eXtremeTable" >
				<table id="ec_table" class="tableRegion" width="98%" >
					<!--隐藏域用来传递数据  -->
					<input type="hidden" id="userId" name="userId" value="${userId}"/>
					<input type="hidden" id="powderIds" name="powderIds"/>
					<ul id="htZtree" class="ztree"></ul>
				</table>
			</div>
		</div>
		 
			<div id="menubar">
			<div id="middleMenubar">
			<div id="innerMenubar">
		 	<div id="navMenubar">
			<tr>
			<td>

				<a href="#" onclick="submitCheckedNodes();formSubmit('saveUserPowders','_self');this.blur();" class="link_btn" id="loading" >保存</a>
				<a href="#" onclick="window.history.go(-1);this.blur();" class="link_btn" id="back" >返回</a>
			</td>
			</tr>
		    </div>
		    </div>
		    </div>
			</div>
		 
		</form>
 
</section>
<script src="${app }/staticfile/js/amcharts.js" type="text/javascript"></script>
<script src="${app }/staticfile/js/serial.js" type="text/javascript"></script>
<script src="${app }/staticfile/js/pie.js" type="text/javascript"></script>
</body>
</html>
 