/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2017-11-28 05:38:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.pages.back.userpowder;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userpowder_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fshiro_005fhasRole_0026_005fname;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fshiro_005fhasRole_0026_005fname = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fshiro_005fhasRole_0026_005fname.release();
    _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html><html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\"/>\r\n");
      out.write("<title>管理员权限分配</title>\r\n");
      out.write("<meta name=\"author\" content=\"DeathGhost\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/css/style.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/components/zTree/css/zTreeStyle/zTreeStyle.css\" type=\"text/css\">\r\n");
      out.write("<link rel=\"stylesheet\" rev=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/css/extreme/extremecomponents.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" rev=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/css/extreme/extremesite.css\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/components/zTree/js/jquery-1.4.4.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/components/zTree/js/jquery.ztree.core-3.5.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/components/zTree/js/jquery.ztree.excheck-3.5.min.js\"></script>\r\n");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<!--[if lt IE 9]>\r\n");
      out.write("<script src=\"js/html5.js\"></script>\r\n");
      out.write("<![endif]-->\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("\t(function($){\r\n");
      out.write("\t\t$(window).load(function(){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$(\"a[rel='load-content']\").click(function(e){\r\n");
      out.write("\t\t\t\te.preventDefault();\r\n");
      out.write("\t\t\t\tvar url=$(this).attr(\"href\");\r\n");
      out.write("\t\t\t\t$.get(url,function(data){\r\n");
      out.write("\t\t\t\t\t$(\".content .mCSB_container\").append(data); //load new content inside .mCSB_container\r\n");
      out.write("\t\t\t\t\t//scroll-to appended content \r\n");
      out.write("\t\t\t\t\t$(\".content\").mCustomScrollbar(\"scrollTo\",\"h2:last\");\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$(\".content\").delegate(\"a[href='top']\",\"click\",function(e){\r\n");
      out.write("\t\t\t\te.preventDefault();\r\n");
      out.write("\t\t\t\t$(\".content\").mCustomScrollbar(\"scrollTo\",$(this).attr(\"href\"));\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t})(jQuery);\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\tfunction formSubmit (url,sTarget){\r\n");
      out.write("\t\tdocument.forms[0].target = sTarget\r\n");
      out.write("\t\tdocument.forms[0].action = url;\r\n");
      out.write("\t\tdocument.forms[0].submit();\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tvar setting = {\r\n");
      out.write("\t\t\tcheck: {\r\n");
      out.write("\t\t\t\tenable: true\r\n");
      out.write("\t\t\t},\r\n");
      out.write("\t\t\tdata: {\r\n");
      out.write("\t\t\t\tsimpleData: {\r\n");
      out.write("\t\t\t\t\tenable: true\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t};\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t//这里相当于在拿后来传来的数据，后台在传数据的时候，属性名要对应上\r\n");
      out.write("\t\tvar zNodes =");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${zTreeJson}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(document).ready(function(){\r\n");
      out.write("\t\t\t$.fn.zTree.init($(\"#htZtree\"), setting, zNodes);\r\n");
      out.write("\r\n");
      out.write("\t\t\tvar zTreeObj = $.fn.zTree.getZTreeObj(\"htZtree\");\r\n");
      out.write("\t\t\tzTreeObj.expandAll(true);\t\t//展开所有树节点\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t//获取到所以用户选中的节点id值\r\n");
      out.write("\t\t//获取所有选择的节点，提交时调用下面函数\r\n");
      out.write("\t\tfunction submitCheckedNodes(treeNode) {\r\n");
      out.write("\t\t\tvar nodes = new Array();\r\n");
      out.write("\t\t\tvar zTreeObj = $.fn.zTree.getZTreeObj(\"htZtree\");\r\n");
      out.write("\t\t\tnodes = zTreeObj.getCheckedNodes(true);\t\t//取得选中的结点\r\n");
      out.write("\t\t\tvar str = \"\";\r\n");
      out.write("\t\t\tfor (i = 0; i < nodes.length; i++) {\r\n");
      out.write("\t\t\t\tif (str != \"\") {\r\n");
      out.write("\t\t\t\t\tstr += \",\";\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\tstr += nodes[i].id;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$('#powderIds').val(str);\t\t//将拼接完成的字符串放入隐藏域，这样就可以通过post提交\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<!--header-->\r\n");
      out.write("<header>\r\n");
      out.write(" <h1><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/images/admin_logo.png\"/></h1>\r\n");
      out.write(" <ul class=\"rt_nav\">\r\n");
      out.write("  <li><a href=\"/back/logout.action\" class=\"quit_icon\">安全退出</a></li>\r\n");
      out.write(" </ul>\r\n");
      out.write("</header>\r\n");
      out.write("<!--aside nav-->\r\n");
      out.write("<!--aside nav-->\r\n");
      out.write("<aside class=\"lt_aside_nav content mCustomScrollbar\">\r\n");
      out.write(" <h2><a href=\"/back/home.action\">起始页</a></h2>\r\n");
      out.write(" <ul>\r\n");
      out.write(" \t\r\n");
      out.write(" \t");
      if (_jspx_meth_shiro_005fhasRole_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write(" \r\n");
      out.write("   <!-- shiro -->\r\n");
      out.write("   \r\n");
      out.write("   ");
      if (_jspx_meth_shiro_005fhasPermission_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("    <!-- shiro -->\r\n");
      out.write("    ");
      if (_jspx_meth_shiro_005fhasPermission_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("  \r\n");
      out.write("  ");
      if (_jspx_meth_shiro_005fhasPermission_005f2(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("  \r\n");
      out.write("  ");
      if (_jspx_meth_shiro_005fhasPermission_005f3(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("  \r\n");
      out.write("  ");
      if (_jspx_meth_shiro_005fhasPermission_005f4(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write(" </ul>\r\n");
      out.write("</aside>\r\n");
      out.write("<style>\r\n");
      out.write(".dataStatistic{width:400px;height:200px;border:1px solid #ccc;margin:0 auto;margin:10px;overflow:hidden}\r\n");
      out.write("#cylindrical{width:400px;height:200px;margin-top:-15px}\r\n");
      out.write("#line{width:400px;height:200px;margin-top:-15px}\r\n");
      out.write("#pie{width:400px;height:200px;margin-top:-15px}\r\n");
      out.write("</style>\r\n");
      out.write("<section class=\"rt_wrap content mCustomScrollbar\">\r\n");
      out.write("\r\n");
      out.write(" <div class=\"rt_content\">\r\n");
      out.write(" \r\n");
      out.write(" <!-- 填入内容 -->\r\n");
      out.write(" <div class=\"page_title\">\r\n");
      out.write("      <form name=\"icform\" method=\"post\">\r\n");
      out.write("       <h2 class=\"fl\">管理员列表</h2>\r\n");
      out.write("       \r\n");
      out.write("      </div>\r\n");
      out.write("\t\t<div>\r\n");
      out.write("\t\t\t<div class=\"eXtremeTable\" >\r\n");
      out.write("\t\t\t\t<table id=\"ec_table\" class=\"tableRegion\" width=\"98%\" >\r\n");
      out.write("\t\t\t\t\t<!--隐藏域用来传递数据  -->\r\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" id=\"userId\" name=\"userId\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\"/>\r\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" id=\"powderIds\" name=\"powderIds\"/>\r\n");
      out.write("\t\t\t\t\t<ul id=\"htZtree\" class=\"ztree\"></ul>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t \r\n");
      out.write("\t\t\t<div id=\"menubar\">\r\n");
      out.write("\t\t\t<div id=\"middleMenubar\">\r\n");
      out.write("\t\t\t<div id=\"innerMenubar\">\r\n");
      out.write("\t\t \t<div id=\"navMenubar\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t<td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<a href=\"#\" onclick=\"submitCheckedNodes();formSubmit('saveUserPowders','_self');this.blur();\" class=\"link_btn\" id=\"loading\" >保存</a>\r\n");
      out.write("\t\t\t\t<a href=\"#\" onclick=\"window.history.go(-1);this.blur();\" class=\"link_btn\" id=\"back\" >返回</a>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t    </div>\r\n");
      out.write("\t\t    </div>\r\n");
      out.write("\t\t    </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t \r\n");
      out.write("\t\t</form>\r\n");
      out.write(" \r\n");
      out.write("</section>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/js/amcharts.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/js/serial.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/js/pie.js\" type=\"text/javascript\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write(" ");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_shiro_005fhasRole_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  shiro:hasRole
    org.apache.shiro.web.tags.HasRoleTag _jspx_th_shiro_005fhasRole_005f0 = (org.apache.shiro.web.tags.HasRoleTag) _005fjspx_005ftagPool_005fshiro_005fhasRole_0026_005fname.get(org.apache.shiro.web.tags.HasRoleTag.class);
    _jspx_th_shiro_005fhasRole_005f0.setPageContext(_jspx_page_context);
    _jspx_th_shiro_005fhasRole_005f0.setParent(null);
    // /WEB-INF/pages/back/userpowder/userpowder.jsp(113,2) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_shiro_005fhasRole_005f0.setName("2");
    int _jspx_eval_shiro_005fhasRole_005f0 = _jspx_th_shiro_005fhasRole_005f0.doStartTag();
    if (_jspx_eval_shiro_005fhasRole_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write(" \t  <li>\r\n");
        out.write("   <dl>\r\n");
        out.write("    <dt>基础信息</dt>\r\n");
        out.write("    <dd><a href=\"/back/userinfo/userInfo\">管理员基本信息</a></dd>\r\n");
        out.write("   <dd><a href=\"/back/userinfo/toupdate\">管理员信息修改</a></dd>\r\n");
        out.write("   </dl>\r\n");
        out.write("  </li>\r\n");
        out.write(" ");
        int evalDoAfterBody = _jspx_th_shiro_005fhasRole_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_shiro_005fhasRole_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fshiro_005fhasRole_0026_005fname.reuse(_jspx_th_shiro_005fhasRole_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fshiro_005fhasRole_0026_005fname.reuse(_jspx_th_shiro_005fhasRole_005f0);
    return false;
  }

  private boolean _jspx_meth_shiro_005fhasPermission_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  shiro:hasPermission
    org.apache.shiro.web.tags.HasPermissionTag _jspx_th_shiro_005fhasPermission_005f0 = (org.apache.shiro.web.tags.HasPermissionTag) _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.get(org.apache.shiro.web.tags.HasPermissionTag.class);
    _jspx_th_shiro_005fhasPermission_005f0.setPageContext(_jspx_page_context);
    _jspx_th_shiro_005fhasPermission_005f0.setParent(null);
    // /WEB-INF/pages/back/userpowder/userpowder.jsp(125,3) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_shiro_005fhasPermission_005f0.setName("商品管理");
    int _jspx_eval_shiro_005fhasPermission_005f0 = _jspx_th_shiro_005fhasPermission_005f0.doStartTag();
    if (_jspx_eval_shiro_005fhasPermission_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("  <li>\r\n");
        out.write("   <dl>\r\n");
        out.write("    <dt>商品管理</dt>\r\n");
        out.write("    <!--当前链接则添加class:active-->\r\n");
        out.write("    <dd><a href=\"/back/product/prodList\" class=\"active\">商品列表</a></dd>\r\n");
        out.write("   </dl>\r\n");
        out.write("  </li>\r\n");
        out.write("  ");
        int evalDoAfterBody = _jspx_th_shiro_005fhasPermission_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_shiro_005fhasPermission_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.reuse(_jspx_th_shiro_005fhasPermission_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.reuse(_jspx_th_shiro_005fhasPermission_005f0);
    return false;
  }

  private boolean _jspx_meth_shiro_005fhasPermission_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  shiro:hasPermission
    org.apache.shiro.web.tags.HasPermissionTag _jspx_th_shiro_005fhasPermission_005f1 = (org.apache.shiro.web.tags.HasPermissionTag) _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.get(org.apache.shiro.web.tags.HasPermissionTag.class);
    _jspx_th_shiro_005fhasPermission_005f1.setPageContext(_jspx_page_context);
    _jspx_th_shiro_005fhasPermission_005f1.setParent(null);
    // /WEB-INF/pages/back/userpowder/userpowder.jsp(135,4) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_shiro_005fhasPermission_005f1.setName("订单管理");
    int _jspx_eval_shiro_005fhasPermission_005f1 = _jspx_th_shiro_005fhasPermission_005f1.doStartTag();
    if (_jspx_eval_shiro_005fhasPermission_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("  <li>\r\n");
        out.write("   <dl>\r\n");
        out.write("    <dt>订单信息管理</dt>\r\n");
        out.write("    <dd><a href=\"/back/order/oroderList\">订单列表查询</a></dd>\r\n");
        out.write("\r\n");
        out.write("   </dl>\r\n");
        out.write("  </li>\r\n");
        out.write("  ");
        int evalDoAfterBody = _jspx_th_shiro_005fhasPermission_005f1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_shiro_005fhasPermission_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.reuse(_jspx_th_shiro_005fhasPermission_005f1);
      return true;
    }
    _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.reuse(_jspx_th_shiro_005fhasPermission_005f1);
    return false;
  }

  private boolean _jspx_meth_shiro_005fhasPermission_005f2(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  shiro:hasPermission
    org.apache.shiro.web.tags.HasPermissionTag _jspx_th_shiro_005fhasPermission_005f2 = (org.apache.shiro.web.tags.HasPermissionTag) _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.get(org.apache.shiro.web.tags.HasPermissionTag.class);
    _jspx_th_shiro_005fhasPermission_005f2.setPageContext(_jspx_page_context);
    _jspx_th_shiro_005fhasPermission_005f2.setParent(null);
    // /WEB-INF/pages/back/userpowder/userpowder.jsp(145,2) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_shiro_005fhasPermission_005f2.setName("用户管理");
    int _jspx_eval_shiro_005fhasPermission_005f2 = _jspx_th_shiro_005fhasPermission_005f2.doStartTag();
    if (_jspx_eval_shiro_005fhasPermission_005f2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("  <li>\r\n");
        out.write("   <dl>\r\n");
        out.write("    <dt>用户管理</dt>\r\n");
        out.write("    <dd><a href=\"/back/user/userList\">用户列表</a></dd>\r\n");
        out.write("\t\r\n");
        out.write("   </dl>\r\n");
        out.write("  </li>\r\n");
        out.write("  ");
        int evalDoAfterBody = _jspx_th_shiro_005fhasPermission_005f2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_shiro_005fhasPermission_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.reuse(_jspx_th_shiro_005fhasPermission_005f2);
      return true;
    }
    _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.reuse(_jspx_th_shiro_005fhasPermission_005f2);
    return false;
  }

  private boolean _jspx_meth_shiro_005fhasPermission_005f3(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  shiro:hasPermission
    org.apache.shiro.web.tags.HasPermissionTag _jspx_th_shiro_005fhasPermission_005f3 = (org.apache.shiro.web.tags.HasPermissionTag) _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.get(org.apache.shiro.web.tags.HasPermissionTag.class);
    _jspx_th_shiro_005fhasPermission_005f3.setPageContext(_jspx_page_context);
    _jspx_th_shiro_005fhasPermission_005f3.setParent(null);
    // /WEB-INF/pages/back/userpowder/userpowder.jsp(155,2) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_shiro_005fhasPermission_005f3.setName("管理员管理");
    int _jspx_eval_shiro_005fhasPermission_005f3 = _jspx_th_shiro_005fhasPermission_005f3.doStartTag();
    if (_jspx_eval_shiro_005fhasPermission_005f3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("  <li>\r\n");
        out.write("   <dl>\r\n");
        out.write("    <dt>管理员管理</dt>\r\n");
        out.write("    <dd><a href=\"/back/userpowder/adminInsert\">新建管理员</a></dd>\r\n");
        out.write("    <dd><a href=\"/back/userpowder/powderSet\">管理员权限设置</a></dd>\r\n");
        out.write("   </dl>\r\n");
        out.write("  </li>\r\n");
        out.write("  ");
        int evalDoAfterBody = _jspx_th_shiro_005fhasPermission_005f3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_shiro_005fhasPermission_005f3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.reuse(_jspx_th_shiro_005fhasPermission_005f3);
      return true;
    }
    _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.reuse(_jspx_th_shiro_005fhasPermission_005f3);
    return false;
  }

  private boolean _jspx_meth_shiro_005fhasPermission_005f4(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  shiro:hasPermission
    org.apache.shiro.web.tags.HasPermissionTag _jspx_th_shiro_005fhasPermission_005f4 = (org.apache.shiro.web.tags.HasPermissionTag) _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.get(org.apache.shiro.web.tags.HasPermissionTag.class);
    _jspx_th_shiro_005fhasPermission_005f4.setPageContext(_jspx_page_context);
    _jspx_th_shiro_005fhasPermission_005f4.setParent(null);
    // /WEB-INF/pages/back/userpowder/userpowder.jsp(165,2) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_shiro_005fhasPermission_005f4.setName("在线统计");
    int _jspx_eval_shiro_005fhasPermission_005f4 = _jspx_th_shiro_005fhasPermission_005f4.doStartTag();
    if (_jspx_eval_shiro_005fhasPermission_005f4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("  <li>\r\n");
        out.write("   <dl>\r\n");
        out.write("    <dt>在线统计</dt>\r\n");
        out.write("    <dd><a href=\"/back/tongji\">流量统计</a></dd>\r\n");
        out.write("    <dd><a href=\"/back/tongji1\">销售额统计</a></dd>\r\n");
        out.write("   </dl>\r\n");
        out.write("  </li>\r\n");
        out.write("  ");
        int evalDoAfterBody = _jspx_th_shiro_005fhasPermission_005f4.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_shiro_005fhasPermission_005f4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.reuse(_jspx_th_shiro_005fhasPermission_005f4);
      return true;
    }
    _005fjspx_005ftagPool_005fshiro_005fhasPermission_0026_005fname.reuse(_jspx_th_shiro_005fhasPermission_005f4);
    return false;
  }
}
