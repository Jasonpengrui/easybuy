/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2017-11-30 00:52:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.pages.back.tongji;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sales_005fvolume_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\"/>\r\n");
      out.write("<title>后台管理系统</title>\r\n");
      out.write("<meta name=\"author\" content=\"DeathGhost\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/css/style.css\">\r\n");
      out.write("<!--[if lt IE 9]>\r\n");
      out.write("<script src=\"js/html5.js\"></script>\r\n");
      out.write("<![endif]-->\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/js/jquery.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/js/jquery.mCustomScrollbar.concat.min.js\"></script>\r\n");
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
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<!--header-->\r\n");
      out.write("<header>\r\n");
      out.write(" <h1><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/images/admin_logo.png\"/></h1>\r\n");
      out.write(" <ul class=\"rt_nav\">\r\n");
      out.write("   <li><a href=\"/back/logout.action\" class=\"quit_icon\">安全退出</a></li>\r\n");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<section class=\"rt_wrap content mCustomScrollbar\">\r\n");
      out.write(" <div class=\"rt_content\">\r\n");
      out.write("      <div class=\"page_title\">\r\n");
      out.write("       <h2 class=\"fl\">数据信息统计</h2>\r\n");
      out.write("      </div>\r\n");
      out.write("    <div class=\"dataStatistic\">\r\n");
      out.write("        <div id=\"cylindrical\">\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write(" </div>\r\n");
      out.write("</section>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/js/amcharts.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/js/serial.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${app}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/staticfile/js/pie.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    $(document).ready(function (e) {\r\n");
      out.write("        GetSerialChart();\r\n");
      out.write("        MakeChart(json);\r\n");
      out.write("    });\r\n");
      out.write("    var json = ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${json}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\r\n");
      out.write("    //柱状图  \r\n");
      out.write("    function GetSerialChart() {\r\n");
      out.write("\r\n");
      out.write("        chart = new AmCharts.AmSerialChart();\r\n");
      out.write("        chart.dataProvider = json;\r\n");
      out.write("        //json数据的key  \r\n");
      out.write("        chart.categoryField = \"name\";\r\n");
      out.write("        //不选择      \r\n");
      out.write("        chart.rotate = false;\r\n");
      out.write("        //值越大柱状图面积越大  \r\n");
      out.write("        chart.depth3D = 20;\r\n");
      out.write("        //柱子旋转角度角度\r\n");
      out.write("        chart.angle = 30;\r\n");
      out.write("        var mCtCategoryAxis = chart.categoryAxis;\r\n");
      out.write("        mCtCategoryAxis.axisColor = \"#efefef\";\r\n");
      out.write("        //背景颜色透明度\r\n");
      out.write("        mCtCategoryAxis.fillAlpha = 0.5;\r\n");
      out.write("        //背景边框线透明度\r\n");
      out.write("        mCtCategoryAxis.gridAlpha = 0;\r\n");
      out.write("        mCtCategoryAxis.fillColor = \"#efefef\";\r\n");
      out.write("        var valueAxis = new AmCharts.ValueAxis();\r\n");
      out.write("        //左边刻度线颜色  \r\n");
      out.write("        valueAxis.axisColor = \"#ccc\";\r\n");
      out.write("        //标题\r\n");
      out.write("        valueAxis.title = \"3D柱状图Demo\";\r\n");
      out.write("        //刻度线透明度\r\n");
      out.write("        valueAxis.gridAlpha = 0.2;\r\n");
      out.write("        chart.addValueAxis(valueAxis);\r\n");
      out.write("        var graph = new AmCharts.AmGraph();\r\n");
      out.write("        graph.title = \"value\";\r\n");
      out.write("        graph.valueField = \"value\";\r\n");
      out.write("        graph.type = \"column\";\r\n");
      out.write("        //鼠标移入提示信息\r\n");
      out.write("        graph.balloonText = \"测试数据[[category]] [[value]]\";\r\n");
      out.write("        //边框透明度\r\n");
      out.write("        graph.lineAlpha = 0.3;\r\n");
      out.write("        //填充颜色 \r\n");
      out.write("        graph.fillColors = \"#b9121b\";\r\n");
      out.write("        graph.fillAlphas = 1;\r\n");
      out.write("\r\n");
      out.write("        chart.addGraph(graph);\r\n");
      out.write("\r\n");
      out.write("        // CURSOR\r\n");
      out.write("        var chartCursor = new AmCharts.ChartCursor();\r\n");
      out.write("        chartCursor.cursorAlpha = 0;\r\n");
      out.write("        chartCursor.zoomable = false;\r\n");
      out.write("        chartCursor.categoryBalloonEnabled = false;\r\n");
      out.write("        chart.addChartCursor(chartCursor);\r\n");
      out.write("\r\n");
      out.write("        chart.creditsPosition = \"top-right\";\r\n");
      out.write("\r\n");
      out.write("        //显示在Main div中\r\n");
      out.write("        chart.write(\"cylindrical\");\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
    // /WEB-INF/pages/back/tongji/sales_volume.jsp(55,2) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
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
    // /WEB-INF/pages/back/tongji/sales_volume.jsp(67,3) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
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
    // /WEB-INF/pages/back/tongji/sales_volume.jsp(77,4) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
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
    // /WEB-INF/pages/back/tongji/sales_volume.jsp(87,2) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
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
    // /WEB-INF/pages/back/tongji/sales_volume.jsp(97,2) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
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
    // /WEB-INF/pages/back/tongji/sales_volume.jsp(107,2) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_shiro_005fhasPermission_005f4.setName("在线统计");
    int _jspx_eval_shiro_005fhasPermission_005f4 = _jspx_th_shiro_005fhasPermission_005f4.doStartTag();
    if (_jspx_eval_shiro_005fhasPermission_005f4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("  <li>\r\n");
        out.write("   <dl>\r\n");
        out.write("    <dt>在线统计</dt>\r\n");
        out.write("    <dd><a href=\"/back/tongji\">类别统计</a></dd>\r\n");
        out.write("    <dd><a href=\"/back/tongji1\">收藏统计</a></dd>\r\n");
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
