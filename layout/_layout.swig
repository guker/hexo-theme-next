<!doctype html>
<html class="theme-next {% if theme.use_motion %}use-motion{% endif %} {% if theme.scheme %}theme-next-{{ theme.scheme | lower }}{% endif %}">
<head>
  {% include '_partials/head.swig' %}
  <title>{% block title %}{% endblock %}</title>
</head>

<body>
<!--[if lte IE 8]> <div style=' clear: both; height: 59px; padding:0 0 0 15px; position: relative;margin:0 auto;'> <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode"><img src="http://static.ixirong.com/picouterie.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today or use other browser ,like chrome firefox safari." style='margin-left:auto;margin-right:auto;display: block;'/></a></div> <![endif]-->
  <div class="container one-column {% block page_class %}{% endblock %}">
    <div class="headband"></div>

    <div id="header" class="header">

    <script type="text/javascript" src="{{ url_for(theme.vendors) }}/jquery/index.js?v=2.1.3"></script>
    {% include '_scripts/helpers.swig' %}

      <div class="header-inner">
        {% include '_partials/header.swig' %}
      </div>
    </div>

    <div id="main" class="main">
      <div class="main-inner">
        <div id="content" class="content">
          {% block content %}{% endblock %}

          {% if is_post() and theme.duoshuo_hotartical and page.title  %}
          <!-- 多说热评文章-->
          <p>热评文章</p>
          <div class="ds-top-threads c-duoshuo-hot-artical" data-range="weekly" data-num-items="4"></div>
          {% endif %}

          {% if is_post() and theme.wumi_suggest and page.title  %}
          <div class="c-duoshuo-hot-artical">
            <script type="text/javascript" id="wumiiRelatedItems"></script>

            <script type="text/javascript">
            var wumiiPermaLink = ""; //请用代码生成文章永久的链接
            var wumiiTitle = ""; //请用代码生成文章标题
            var wumiiTags = ""; //请用代码生成文章标签，以英文逗号分隔，如："标签1,标签2"
            var wumiiCategories = []; //请用代码生成文章分类，分类名放在 JSONArray 中，如: ["分类1", "分类2"]
            var wumiiSitePrefix = "http://www.ixirong.com/";
            var wumiiParams = "&num=5&mode=1&pf=JAVASCRIPT";
            </script>

            <script type="text/javascript" src="http://widget.wumii.cn/ext/relatedItemsWidget"></script>
              <a href="http://www.wumii.com/widget/relatedItems" style="border:0;">
                <img src="http://static.wumii.cn/images/pixel.png" alt="无觅关联推荐，快速提升流量" style="border:0;padding:0;margin:0;" />
              </a>
            </div>
          {% endif %}
        </div>
      </div>


      {% block sidebar %}{% endblock %}
    </div>

    <div id="footer" class="footer">
      <div class="footer-inner">
        {% include '_partials/footer.swig' %}
      </div>
    </div>

    <div class="back-to-top"></div>
  </div>

  <!-- <script type="text/javascript" src="{{ url_for(theme.vendors) }}/jquery/index.js?v=2.1.3"></script> -->

  {# This block is used to set options before any other scripts run #}
  {% block script_extra_before %}{% endblock %}

  {% include '_scripts/fancy-box.swig' %}
  <!-- {% include '_scripts/helpers.swig' %} -->
  {% include '_scripts/motion.swig' %}

  {% block script_extra %}{% endblock %}

   <script type="text/javascript">
    var HEXO_SIDEBAR_CONFIGURATION = '{{ theme.sidebar }}';
    $(document).ready(function () {
      if (HEXO_SIDEBAR_CONFIGURATION === 'always') {
        displaySidebar();
      }
    });
  </script>

  {% include '_scripts/mathjax.swig' %}
  {% block comment_system %}{% endblock %}

  {% include '_scripts/baidushare.swig' %}
  {% include '_scripts/analytics/baidu-analytics.swig' %}
  {% include '_scripts/analytics/google-analytics.swig' %}
</body>
</html>
