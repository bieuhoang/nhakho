<?php

/* /Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/nhakho.htm */
class __TwigTemplate_3f7ca2fa77a17d5eee6813900154223efc2fb6c4167b433c0147fb325e652904 extends Twig_Template
{
    private $source;

    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<div class=\"banner banner-static banner-medium has-bg lighter-filter\">
\t<div class=\"banner-cpn\">
\t\t<div class=\"container\">
\t\t\t<div class=\"content row\">
\t\t\t\t<div class=\"top-contact banner-text light style-modern \">
\t\t\t\t\t<h1 class=\"page-title\">MINH BẠCH - CHẤT LƯỢNG - UY TÍN</h1>
\t\t\t\t\t<p class=\"\"><i class=\"bgwhite fa fa-balance-scale\"></i>Mô tả trung thực.</p>
\t\t\t\t\t<p><i class=\"bgwhite fa fa-battery-full\"></i>Chỉ bán hàng Nguyên zin.</p>
\t\t\t\t\t<p><i class=\"bgwhite fa fa-ambulance\"></i>Hỗ trợ tối đa sửa chữa, bảo trì sau bán hàng.</p>
\t\t\t\t</div>

\t\t\t</div>
\t\t</div>
\t</div>
\t<div class=\"banner-bg imagebg\">
\t\t<img src=\"";
        // line 16
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/banner-inner.jpg");
        echo "\" alt=\"\">
\t</div>
</div>
<!-- Content -->
<div class=\"section section-blog section-pad\">
\t<div class=\"container\">
\t\t<div class=\"content row\">

\t\t\t<div class=\"row\">
\t\t\t\t<div class=\"col-md-8\">
\t\t\t\t\t<!-- Blog Post Loop -->
\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t<ul class=\"blog-posts post-col2\">
\t\t\t\t\t\t\t";
        // line 29
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
            // line 30
            echo "
\t\t\t\t\t\t\t<li class=\"products-list-home\">
\t\t\t\t\t\t\t\t<div class=\"col-md-4 image-list-products\">
\t\t\t\t\t\t\t\t\t";
            // line 33
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["product"], "images", array()), "count", array())) {
                // line 34
                echo "\t\t\t\t\t\t\t\t\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_slice($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "images", array()), 0, 1));
                foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                    // line 35
                    echo "\t\t\t\t\t\t\t\t\t\t<img data-src=\"";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "filename", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\t\tsrc=\"";
                    // line 36
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "path", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\t\ttitle=\"";
                    // line 37
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\t\talt=\"";
                    // line 38
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
                    echo "\"/>
\t\t\t\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 40
                echo "\t\t\t\t\t\t\t\t\t\t";
            } else {
                // line 41
                echo "
\t\t\t\t\t\t\t\t\t\t<img src=\"";
                // line 42
                echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/logo.png");
                echo "\" title=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
                echo "\" alt=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
                echo "\"/>
\t\t\t\t\t\t\t\t\t\t";
            }
            // line 44
            echo "\t\t\t\t\t\t\t\t\t</div>
<div class=\"col-md-8\">

\t\t\t\t\t\t\t\t\t<a href=\"san-pham/";
            // line 47
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "slug", array()), "html", null, true);
            echo "\">
\t\t\t\t\t\t\t\t\t\t<h2 class=\"products-title-list\">";
            // line 48
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
            echo "</h2>
\t\t\t\t\t\t\t\t\t\t<i class=\"price\">";
            // line 49
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "price", array()), "html", null, true);
            echo "</i>
\t\t\t\t\t\t\t\t\t\t";
            // line 50
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["product"], "categories", array()));
            $context['loop'] = array(
              'parent' => $context['_parent'],
              'index0' => 0,
              'index'  => 1,
              'first'  => true,
            );
            if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
                $length = count($context['_seq']);
                $context['loop']['revindex0'] = $length - 1;
                $context['loop']['revindex'] = $length;
                $context['loop']['length'] = $length;
                $context['loop']['last'] = 1 === $length;
            }
            foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                // line 51
                echo "\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "url", array()), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "title", array()), "html", null, true);
                echo "</a>
\t\t\t\t\t\t\t\t\t\t\t\t";
                // line 52
                if ( !twig_get_attribute($this->env, $this->source, $context["loop"], "last", array())) {
                    echo ",
\t\t\t\t\t\t\t\t\t\t\t\t";
                }
                // line 54
                echo "\t\t\t\t\t\t\t\t\t\t\t\t";
                ++$context['loop']['index0'];
                ++$context['loop']['index'];
                $context['loop']['first'] = false;
                if (isset($context['loop']['length'])) {
                    --$context['loop']['revindex0'];
                    --$context['loop']['revindex'];
                    $context['loop']['last'] = 0 === $context['loop']['revindex0'];
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 55
            echo "\t\t\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t\t</a></div>
\t\t\t\t\t\t\t\t\t\t<p>";
            // line 58
            echo twig_escape_filter($this->env, (twig_slice($this->env, strip_tags(twig_get_attribute($this->env, $this->source, $context["product"], "excerpt", array())), 0, 100) . "..."), "html", null, true);
            echo "</p>
\t\t\t\t\t\t\t\t\t\t<a class=\"btn-link link-arrow-sm\" href=\"san-pham/";
            // line 59
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "slug", array()), "html", null, true);
            echo "\">Chi tiết</a>
\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 63
        echo "\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<div class=\"clear\"></div>
\t\t\t\t\t\t<ul class=\"pagination\">
\t\t\t\t\t\t\t<li class=\"active\"><a href=\"news.html#\">1</a></li>
\t\t\t\t\t\t\t<li><a href=\"news.html#\">2</a></li>
\t\t\t\t\t\t\t<li><a href=\"news.html#\">3</a></li>
\t\t\t\t\t\t\t<li><a href=\"news.html#\">4</a></li>
\t\t\t\t\t\t\t<li><a href=\"news.html#\"><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>
\t\t\t\t\t\t\t</a></li>
\t\t\t\t\t\t</ul>
\t\t\t\t\t\t<!-- End Blog Post -->
\t\t\t\t\t</div>
\t\t\t\t\t
\t\t\t\t\t<!-- Sidebar -->
\t\t\t\t\t<div class=\"col-md-4\">
\t\t\t\t\t\t<div class=\"sidebar-right\">
\t\t\t\t\t\t\t<div class=\"wgs-box wgs-search\">
\t\t\t\t\t\t\t\t<div class=\"wgs-content\">
\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\"  placeholder=\"Nhập từ khoá tìm kiếm...\">
\t\t\t\t\t\t\t\t\t\t<button class=\"search-btn\"><i class=\"fa fa-search\" aria-hidden=\"true\"></i></button>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>

\t\t\t\t\t\t\t<div class=\"wgs-box wgs-recents\">
\t\t\t\t\t\t\t\t<h3 class=\"wgs-heading\">Bài viết mới nhất</h3>
\t\t\t\t\t\t\t\t<div class=\"wgs-content\">
\t\t\t\t\t\t\t\t\t<ul class=\"blog-recent\">
\t\t\t\t\t\t\t\t\t\t";
        // line 93
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["code"] => $context["post"]) {
            // line 94
            echo "\t\t\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
            // line 95
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "slug", array()), "html", null, true);
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t<img alt=\"\" src=\"";
            // line 96
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post"], "image", array()));
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t<p>";
            // line 97
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", array()), "html", null, true);
            echo "-";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["post"], "category", array()), "name", array()), "html", null, true);
            echo "</p>
\t\t\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t\t\t</li>       
\t\t\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['code'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 101
        echo "\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>

\t\t\t\t\t\t\t<div class=\"wgs-box wgs-tags\">
\t\t\t\t\t\t\t\t<h3 class=\"wgs-heading\">Tags</h3>
\t\t\t\t\t\t\t\t<div class=\"wgs-content\">
\t\t\t\t\t\t\t\t\t<ul class=\"tag-list clearfix\">
\t\t\t\t\t\t\t\t\t\t<li><a href=\"news.html#\">Commercial</a></li>
\t\t\t\t\t\t\t\t\t\t<li><a href=\"news.html#\">Install</a></li>
\t\t\t\t\t\t\t\t\t\t<li><a href=\"news.html#\">Repair</a></li>
\t\t\t\t\t\t\t\t\t\t<li><a href=\"news.html#\">Plumbing</a></li>
\t\t\t\t\t\t\t\t\t\t<li><a href=\"news.html#\">Service</a></li>
\t\t\t\t\t\t\t\t\t\t<li><a href=\"news.html#\">Drain</a></li>
\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t
\t\t\t\t\t\t\t<div class=\"wgs-box boxed boxed-flat\">
\t\t\t\t\t\t\t\t<div class=\"wgs-content\">
\t\t\t\t\t\t\t\t\t<h5>Thông tin liên hệ</h5>
\t\t\t\t\t\t\t\t\t<p><strong>Đồng hồ cổ Nhà kho</strong><br>
\t\t\t\t\t\t\t\t\t\tSố 1 ngách 65 ngõ 217 <br>Đường Trần Phú, quận Hà Đông, HN</p>
\t\t\t\t\t\t\t\t\t\t<p><strong>Điện thoại</strong> <br>
\t\t\t\t\t\t\t\t\t\t\tTư vấn: 0888-001-500<br>
\t\t\t\t\t\t\t\t\t\tKỹ thuật: 0886-509-500</p>
\t\t\t\t\t\t\t\t\t\t<p><strong>Thời gian làm việc</strong><br>
\t\t\t\t\t\t\t\t\t\t\tThứ hai đến thứ sáu<br>
\t\t\t\t\t\t\t\t\t\t8:00 đến 21:00</p>
\t\t\t\t\t\t\t\t\t\tThứ bảy, chủ nhật<br>
\t\t\t\t\t\t\t\t\t\t9:00 đến 19:00

\t\t\t\t\t\t\t\t\t\t<p></p>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"wgs-box boxed bg-secondary light boxed-flat\">
\t\t\t\t\t\t\t\t\t<div class=\"wgs-content\">
\t\t\t\t\t\t\t\t\t\t<h5>THÔNG ĐIỆP TỪ NHÀ KHO</h5>
\t\t\t\t\t\t\t\t\t\t<p>Bằng tất cả nhiệt huyết và đam mê của tuổi trẻ, đội ngũ Nhà kho mong muốn xây dựng môi trường giao lưu CỞI MỞ, TRUNG THỰC, LÀNH MẠNH.<br>
\t\t\t\t\t\t\t\t\t\t\tTrong khuôn khổ kiến thức và hiểu biết còn hạn chế không tránh khỏi thiếu sót.<br>Kính mong nhận được sự ủng hộ, chia sẻ, chung tay đóng góp ý kiến và baì viết từ các anh, chị, các bác trên mọi miền tổ quốc để chúng ta có sân chơi ĐỦ TÂM, ĐỦ TẦM, ĐỦ HIỂU BIẾT về đam mê mà mình đang từng ngày chinh phục.
\t\t\t\t\t\t\t\t\t\t\t<br>
\t\t\t\t\t\t\t\t\t\tTRÂN TRỌNG CẢM ƠN</p>
\t\t\t\t\t\t\t\t\t\t<a class=\"btn btn-outline\" href=\"request-service.html\">Liên hệ với Nhà kho</a>

\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>

\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<!-- Sidebar #end -->

\t\t\t\t\t</div>

\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t<!-- End Content -->";
    }

    public function getTemplateName()
    {
        return "/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/nhakho.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  246 => 101,  234 => 97,  230 => 96,  226 => 95,  223 => 94,  219 => 93,  187 => 63,  177 => 59,  173 => 58,  168 => 55,  154 => 54,  149 => 52,  142 => 51,  125 => 50,  121 => 49,  117 => 48,  113 => 47,  108 => 44,  99 => 42,  96 => 41,  93 => 40,  85 => 38,  81 => 37,  77 => 36,  72 => 35,  67 => 34,  65 => 33,  60 => 30,  56 => 29,  40 => 16,  23 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"banner banner-static banner-medium has-bg lighter-filter\">
\t<div class=\"banner-cpn\">
\t\t<div class=\"container\">
\t\t\t<div class=\"content row\">
\t\t\t\t<div class=\"top-contact banner-text light style-modern \">
\t\t\t\t\t<h1 class=\"page-title\">MINH BẠCH - CHẤT LƯỢNG - UY TÍN</h1>
\t\t\t\t\t<p class=\"\"><i class=\"bgwhite fa fa-balance-scale\"></i>Mô tả trung thực.</p>
\t\t\t\t\t<p><i class=\"bgwhite fa fa-battery-full\"></i>Chỉ bán hàng Nguyên zin.</p>
\t\t\t\t\t<p><i class=\"bgwhite fa fa-ambulance\"></i>Hỗ trợ tối đa sửa chữa, bảo trì sau bán hàng.</p>
\t\t\t\t</div>

\t\t\t</div>
\t\t</div>
\t</div>
\t<div class=\"banner-bg imagebg\">
\t\t<img src=\"{{ 'assets/nhakho/image/banner-inner.jpg'|theme }}\" alt=\"\">
\t</div>
</div>
<!-- Content -->
<div class=\"section section-blog section-pad\">
\t<div class=\"container\">
\t\t<div class=\"content row\">

\t\t\t<div class=\"row\">
\t\t\t\t<div class=\"col-md-8\">
\t\t\t\t\t<!-- Blog Post Loop -->
\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t<ul class=\"blog-posts post-col2\">
\t\t\t\t\t\t\t{% for product in products %}

\t\t\t\t\t\t\t<li class=\"products-list-home\">
\t\t\t\t\t\t\t\t<div class=\"col-md-4 image-list-products\">
\t\t\t\t\t\t\t\t\t{% if product.images.count %}
\t\t\t\t\t\t\t\t\t\t{% for image in product.images|slice(0, 1) %}
\t\t\t\t\t\t\t\t\t\t<img data-src=\"{{ image.filename }}\"
\t\t\t\t\t\t\t\t\t\tsrc=\"{{ image.path }}\"
\t\t\t\t\t\t\t\t\t\ttitle=\"{{ product.title }}\"
\t\t\t\t\t\t\t\t\t\talt=\"{{ product.title }}\"/>
\t\t\t\t\t\t\t\t\t\t{% endfor %}
\t\t\t\t\t\t\t\t\t\t{% else %}

\t\t\t\t\t\t\t\t\t\t<img src=\"{{ 'assets/nhakho/image/logo.png'|theme }}\" title=\"{{ product.title }}\" alt=\"{{ product.title }}\"/>
\t\t\t\t\t\t\t\t\t\t{% endif %}
\t\t\t\t\t\t\t\t\t</div>
<div class=\"col-md-8\">

\t\t\t\t\t\t\t\t\t<a href=\"san-pham/{{product.slug}}\">
\t\t\t\t\t\t\t\t\t\t<h2 class=\"products-title-list\">{{product.title}}</h2>
\t\t\t\t\t\t\t\t\t\t<i class=\"price\">{{product.price}}</i>
\t\t\t\t\t\t\t\t\t\t{% for category in product.categories %}
\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"{{ category.url }}\">{{ category.title }}</a>
\t\t\t\t\t\t\t\t\t\t\t\t{% if not loop.last %},
\t\t\t\t\t\t\t\t\t\t\t\t{% endif %}
\t\t\t\t\t\t\t\t\t\t\t\t{% endfor %}
\t\t\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t\t</a></div>
\t\t\t\t\t\t\t\t\t\t<p>{{ product.excerpt|striptags[:100] ~ '...' }}</p>
\t\t\t\t\t\t\t\t\t\t<a class=\"btn-link link-arrow-sm\" href=\"san-pham/{{product.slug}}\">Chi tiết</a>
\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t{% endfor %}
\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<div class=\"clear\"></div>
\t\t\t\t\t\t<ul class=\"pagination\">
\t\t\t\t\t\t\t<li class=\"active\"><a href=\"news.html#\">1</a></li>
\t\t\t\t\t\t\t<li><a href=\"news.html#\">2</a></li>
\t\t\t\t\t\t\t<li><a href=\"news.html#\">3</a></li>
\t\t\t\t\t\t\t<li><a href=\"news.html#\">4</a></li>
\t\t\t\t\t\t\t<li><a href=\"news.html#\"><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>
\t\t\t\t\t\t\t</a></li>
\t\t\t\t\t\t</ul>
\t\t\t\t\t\t<!-- End Blog Post -->
\t\t\t\t\t</div>
\t\t\t\t\t
\t\t\t\t\t<!-- Sidebar -->
\t\t\t\t\t<div class=\"col-md-4\">
\t\t\t\t\t\t<div class=\"sidebar-right\">
\t\t\t\t\t\t\t<div class=\"wgs-box wgs-search\">
\t\t\t\t\t\t\t\t<div class=\"wgs-content\">
\t\t\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\"  placeholder=\"Nhập từ khoá tìm kiếm...\">
\t\t\t\t\t\t\t\t\t\t<button class=\"search-btn\"><i class=\"fa fa-search\" aria-hidden=\"true\"></i></button>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>

\t\t\t\t\t\t\t<div class=\"wgs-box wgs-recents\">
\t\t\t\t\t\t\t\t<h3 class=\"wgs-heading\">Bài viết mới nhất</h3>
\t\t\t\t\t\t\t\t<div class=\"wgs-content\">
\t\t\t\t\t\t\t\t\t<ul class=\"blog-recent\">
\t\t\t\t\t\t\t\t\t\t{% for code, post in posts %}
\t\t\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t\t\t\t<a href=\"{{ post.slug }}\">
\t\t\t\t\t\t\t\t\t\t\t\t<img alt=\"\" src=\"{{ post.image|media }}\">
\t\t\t\t\t\t\t\t\t\t\t\t<p>{{ post.title }}-{{ post.category.name}}</p>
\t\t\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t\t\t</li>       
\t\t\t\t\t\t\t\t\t\t{% endfor %}
\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>

\t\t\t\t\t\t\t<div class=\"wgs-box wgs-tags\">
\t\t\t\t\t\t\t\t<h3 class=\"wgs-heading\">Tags</h3>
\t\t\t\t\t\t\t\t<div class=\"wgs-content\">
\t\t\t\t\t\t\t\t\t<ul class=\"tag-list clearfix\">
\t\t\t\t\t\t\t\t\t\t<li><a href=\"news.html#\">Commercial</a></li>
\t\t\t\t\t\t\t\t\t\t<li><a href=\"news.html#\">Install</a></li>
\t\t\t\t\t\t\t\t\t\t<li><a href=\"news.html#\">Repair</a></li>
\t\t\t\t\t\t\t\t\t\t<li><a href=\"news.html#\">Plumbing</a></li>
\t\t\t\t\t\t\t\t\t\t<li><a href=\"news.html#\">Service</a></li>
\t\t\t\t\t\t\t\t\t\t<li><a href=\"news.html#\">Drain</a></li>
\t\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t
\t\t\t\t\t\t\t<div class=\"wgs-box boxed boxed-flat\">
\t\t\t\t\t\t\t\t<div class=\"wgs-content\">
\t\t\t\t\t\t\t\t\t<h5>Thông tin liên hệ</h5>
\t\t\t\t\t\t\t\t\t<p><strong>Đồng hồ cổ Nhà kho</strong><br>
\t\t\t\t\t\t\t\t\t\tSố 1 ngách 65 ngõ 217 <br>Đường Trần Phú, quận Hà Đông, HN</p>
\t\t\t\t\t\t\t\t\t\t<p><strong>Điện thoại</strong> <br>
\t\t\t\t\t\t\t\t\t\t\tTư vấn: 0888-001-500<br>
\t\t\t\t\t\t\t\t\t\tKỹ thuật: 0886-509-500</p>
\t\t\t\t\t\t\t\t\t\t<p><strong>Thời gian làm việc</strong><br>
\t\t\t\t\t\t\t\t\t\t\tThứ hai đến thứ sáu<br>
\t\t\t\t\t\t\t\t\t\t8:00 đến 21:00</p>
\t\t\t\t\t\t\t\t\t\tThứ bảy, chủ nhật<br>
\t\t\t\t\t\t\t\t\t\t9:00 đến 19:00

\t\t\t\t\t\t\t\t\t\t<p></p>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"wgs-box boxed bg-secondary light boxed-flat\">
\t\t\t\t\t\t\t\t\t<div class=\"wgs-content\">
\t\t\t\t\t\t\t\t\t\t<h5>THÔNG ĐIỆP TỪ NHÀ KHO</h5>
\t\t\t\t\t\t\t\t\t\t<p>Bằng tất cả nhiệt huyết và đam mê của tuổi trẻ, đội ngũ Nhà kho mong muốn xây dựng môi trường giao lưu CỞI MỞ, TRUNG THỰC, LÀNH MẠNH.<br>
\t\t\t\t\t\t\t\t\t\t\tTrong khuôn khổ kiến thức và hiểu biết còn hạn chế không tránh khỏi thiếu sót.<br>Kính mong nhận được sự ủng hộ, chia sẻ, chung tay đóng góp ý kiến và baì viết từ các anh, chị, các bác trên mọi miền tổ quốc để chúng ta có sân chơi ĐỦ TÂM, ĐỦ TẦM, ĐỦ HIỂU BIẾT về đam mê mà mình đang từng ngày chinh phục.
\t\t\t\t\t\t\t\t\t\t\t<br>
\t\t\t\t\t\t\t\t\t\tTRÂN TRỌNG CẢM ƠN</p>
\t\t\t\t\t\t\t\t\t\t<a class=\"btn btn-outline\" href=\"request-service.html\">Liên hệ với Nhà kho</a>

\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>

\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<!-- Sidebar #end -->

\t\t\t\t\t</div>

\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t<!-- End Content -->", "/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/nhakho.htm", "");
    }
}
