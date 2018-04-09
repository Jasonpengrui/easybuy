<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"  isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="${app}/staticfile/css/style.css">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<script src="staticfile/js/jquery.js"></script>
<script src="staticfile/js/jquery.mCustomScrollbar.concat.min.js"></script>
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
	
	/* 打开一个新页面：调用时不加第二个参数 add by tony */
	function formSubmit (url,sTarget){
	    document.forms[0].target = sTarget
	    document.forms[0].action = url;
	    document.forms[0].submit();
	    return true;
	}
</script>
</head>
<body>
<!--header-->
<header>
 <h1><img src="${app}/staticfile/images/admin_logo.png"/></h1>
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


<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
    <form  method="POST" 
        enctype="multipart/form-data">
      <div class="page_title">
       <h2 class="fl">商品详情示例</h2>
       <a class="fr top_rt_btn" onclick="window.history.back()" >返回产品列表</a>
      </div>
     <section>
      <ul class="ulColumn2">
       <li>
        <span class="item_name" style="width:120px;">商品名称：</span>
        <input type="text" class="textbox textbox_295" name="name" placeholder="商品名称..."/>
        <span class="errorTips">错误提示信息...</span>
       </li>
        <li>
        <span class="item_name" style="width:120px;">商品价钱：</span>
        <input type="text" class="textbox textbox_295" name="price" style="width:60px" placeholder="商品价钱..."/>
        <span class="errorTips">错误提示信息...</span>
       </li>
         <li>
        <span class="item_name" style="width:120px;">商品数量：</span>
        <input type="text" class="textbox textbox_295" style="width:60px" name="pnum" placeholder="商品数量..."/>
        <span class="errorTips">错误提示信息...</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">分类：</span>
        <select class="select" name="category">
         <option>选择产品分类</option>
         <c:forEach items="${descList}" var="d" >
         <option>${d}</option>
         </c:forEach>
         
        </select>
        <span class="errorTips">错误提示信息...</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">商品状态：</span>
        <label class="single_selection"><input type="radio" name="station"  value=1 checked="checked" />启用</label>
        <label class="single_selection"><input type="radio" name="station" value=0 />关闭</label>
        </li>
       <li>
        <span class="item_name" style="width:120px;">上传图片：</span>
        <label class="uploadImg">
         <input type=file name="myfiles" id="doc"
                    onchange="showImage();">
         <input type="file" name="myfiles" id="doc1">
         <input type="file" name="myfiles" id="doc1">
         <span>上传图片</span>

        </label>
          <img id="preview" width=-1 height=-1 style="diplay:none" />
       </li>
       <li>
        <span class="item_name" style="width:120px;">产品详情：</span>
	<tr>
	
		<td>
		<textarea rows="8" cols="30" name="description"  ></textarea>
		</td>
	</tr>
	    <li>
        <span class="item_name" style="width:120px;"></span>
    	<a href="#"  class="link_btn" onclick="formSubmit('tosave','_self');">保存</a>
       </li>
       </ul>
       </section>
</form>
       
 </div>
 
</section>
<script type="text/javascript">
    function showImage() {
        var docObj = document.getElementById("doc");
        var imgObjPreview = document.getElementById("preview");
        if (docObj.files && docObj.files[0]) {
            //火狐下，直接设img属性  
            imgObjPreview.style.display = 'block';
            imgObjPreview.style.width = '300px';
            imgObjPreview.style.height = '120px';
            //imgObjPreview.src = docObj.files[0].getAsDataURL();  
            //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式  
            imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
        } else {
            //IE下，使用滤镜  
            docObj.select();
            var imgSrc = document.selection.createRange().text;
            var localImagId = document.getElementById("localImag");
            //必须设置初始大小  
            localImagId.style.width = "250px";
            localImagId.style.height = "200px";
            //图片异常的捕捉，防止用户修改后缀来伪造图片 
            try {
                localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                localImagId.filters
                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
            } catch (e) {
                alert("您上传的图片格式不正确，请重新选择!");
                return false;
            }
            imgObjPreview.style.display = 'none';
            document.selection.empty();
        }
        return true;
    }
</script>
</body>
</html>
