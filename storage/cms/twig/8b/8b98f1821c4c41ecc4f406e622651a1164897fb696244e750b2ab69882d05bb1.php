<?php

/* /Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/nhakho.htm */
class __TwigTemplate_99f088db9f2bff1e390f03eb36cc09bcadaab6f3a3843d7f103a75df50194a9e extends Twig_Template
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
\t\t\t\t\t\t<ul class=\"blog-posts post-col2\">
        
\t\t\t\t\t\t\t";
        // line 29
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
            // line 30
            echo "\t\t\t\t\t\t\t<li class=\"products-list-home\">
\t\t\t\t\t\t\t\t<h3 style=\"display: initial;\">
\t\t\t\t\t\t\t\t";
            // line 32
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "name", array()), "html", null, true);
            echo "
\t\t\t\t\t\t\t\t</h3>
\t\t\t\t\t\t\t\t<div class=\"clear\"></div>
\t\t\t\t\t\t\t\t<div class=\"col-md-2\">
\t\t\t\t\t\t\t\t\t<img src=\"";
            // line 36
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["product"], "main_image", array()), "path", array()), "html", null, true);
            echo "\">
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-calendar-alt\"></i>Ngày đăng: ";
            // line 39
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "created_at", array()), "d/m/Y"), "html", null, true);
            echo "
\t\t\t\t\t\t\t\t</div>\t\t
\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-money-bill-wave\"></i>Giá bán:";
            // line 42
            echo twig_escape_filter($this->env, twig_number_format_filter($this->env, twig_get_attribute($this->env, $this->source, (($__internal_7cd7461123377b8c9c1b6a01f46c7bbd94bd12e59266005df5e93029ddbc0ec5 = twig_get_attribute($this->env, $this->source, $context["product"], "price", array())) && is_array($__internal_7cd7461123377b8c9c1b6a01f46c7bbd94bd12e59266005df5e93029ddbc0ec5) || $__internal_7cd7461123377b8c9c1b6a01f46c7bbd94bd12e59266005df5e93029ddbc0ec5 instanceof ArrayAccess ? ($__internal_7cd7461123377b8c9c1b6a01f46c7bbd94bd12e59266005df5e93029ddbc0ec5[0] ?? null) : null), "price", array()), 0, ",", "."), "html", null, true);
            echo "</b> (";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (($__internal_3e28b7f596c58d7729642bcf2acc6efc894803703bf5fa7e74cd8d2aa1f8c68a = twig_get_attribute($this->env, $this->source, $context["product"], "price", array())) && is_array($__internal_3e28b7f596c58d7729642bcf2acc6efc894803703bf5fa7e74cd8d2aa1f8c68a) || $__internal_3e28b7f596c58d7729642bcf2acc6efc894803703bf5fa7e74cd8d2aa1f8c68a instanceof ArrayAccess ? ($__internal_3e28b7f596c58d7729642bcf2acc6efc894803703bf5fa7e74cd8d2aa1f8c68a[0] ?? null) : null), "currency", array()), "html", null, true);
            echo ")</i>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
            // line 44
            if (twig_get_attribute($this->env, $this->source, $context["product"], "user_defined_id", array())) {
                // line 45
                echo "\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-barcode\"></i>Mã sản phẩm: ";
                // line 46
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "user_defined_id", array()), "html", null, true);
                echo "
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
            }
            // line 49
            echo "                                 ";
            if (twig_get_attribute($this->env, $this->source, $context["product"], "xuatxu", array())) {
                // line 50
                echo "\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-globe-americas\"></i>Xuất xứ: ";
                // line 51
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "xuatxu", array()), "html", null, true);
                echo "
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
            }
            // line 54
            echo "\t\t\t\t\t\t\t\t";
            if (twig_get_attribute($this->env, $this->source, $context["product"], "thuonghieu", array())) {
                // line 55
                echo "\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-hourglass-start\"></i>Thương hiệu: ";
                // line 56
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "thuonghieu", array()), "html", null, true);
                echo "
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
            }
            // line 59
            echo "\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t";
            // line 60
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["product"], "categories", array()), "count", array())) {
                // line 61
                echo "\t\t\t\t\t\t\t\t<div class=\"col-md-5\"><i class=\"fas fa-sitemap\"></i>Thể loại:
\t\t\t\t\t\t\t\t";
                // line 62
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
                    echo "\t\t\t
\t\t\t\t\t\t\t\t\t<a href=\"";
                    // line 63
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "url", array()), "html", null, true);
                    echo "\">";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "name", array()), "html", null, true);
                    echo "</a>
\t\t\t\t\t\t\t\t\t";
                    // line 64
                    if ( !twig_get_attribute($this->env, $this->source, $context["loop"], "last", array())) {
                        echo ",
\t\t\t\t\t\t\t\t\t";
                    }
                    // line 66
                    echo "\t\t\t\t\t\t\t\t";
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
                // line 67
                echo "\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
            }
            // line 69
            echo "\t\t\t\t\t\t\t\t<div class=\"product-details\">";
            echo twig_escape_filter($this->env, (twig_slice($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "description", array()), 0, 50) . "..."), "html", null, true);
            echo "</div>
\t\t\t\t\t\t\t\t <div class=\"clear\"></div>
\t\t\t\t\t\t\t\t <a class=\"btn-link link-arrow-sm\" href=\"san-pham/";
            // line 71
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "slug", array()), "html", null, true);
            echo "\">Chi tiết</a>
\t\t\t\t\t\t\t\t</li>\t\t 
\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 74
        echo "\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t
\t\t\t\t\t\t<div class=\"clear\"></div>
\t\t\t\t\t\t<!-- End Blog Post -->
\t\t\t\t\t</div>
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
        // line 95
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["code"] => $context["post"]) {
            // line 96
            echo "\t\t\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
            // line 97
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "slug", array()), "html", null, true);
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t<img alt=\"\" src=\"";
            // line 98
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post"], "image", array()));
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t<p>";
            // line 99
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
        // line 103
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
\t\t\t\t\t\t\t\t\t\t<H5>Chính sách bảo hành</H5>
\t\t\t\t\t\t\t\t\t\t<p>- Toàn bộ sản phẩm do Nhà kho bán ra cam kết đúng hình ảnh, chủng loại như đã mô tả với khách hàng.</p>
\t\t\t\t\t\t\t\t\t\t<p>Trong trường hợp có sai sót, Nhà kho xin hoàn lại 100% giá trị sản phẩm.</p>
\t\t\t\t\t\t\t\t\t\t<p>- Đồng hồ bản ra bảo hành 1 năm. Miễn phí bảo trì, bảo dưỡng trong 2 năm đầu sử dụng.</p>
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
\t</div>
</div>
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
        return array (  246 => 103,  234 => 99,  230 => 98,  226 => 97,  223 => 96,  219 => 95,  196 => 74,  187 => 71,  181 => 69,  177 => 67,  163 => 66,  158 => 64,  152 => 63,  133 => 62,  130 => 61,  128 => 60,  125 => 59,  119 => 56,  116 => 55,  113 => 54,  107 => 51,  104 => 50,  101 => 49,  95 => 46,  92 => 45,  90 => 44,  83 => 42,  77 => 39,  71 => 36,  64 => 32,  60 => 30,  56 => 29,  40 => 16,  23 => 1,);
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
\t\t\t\t\t\t<ul class=\"blog-posts post-col2\">
        
\t\t\t\t\t\t\t{% for product in products %}
\t\t\t\t\t\t\t<li class=\"products-list-home\">
\t\t\t\t\t\t\t\t<h3 style=\"display: initial;\">
\t\t\t\t\t\t\t\t{{product.name}}
\t\t\t\t\t\t\t\t</h3>
\t\t\t\t\t\t\t\t<div class=\"clear\"></div>
\t\t\t\t\t\t\t\t<div class=\"col-md-2\">
\t\t\t\t\t\t\t\t\t<img src=\"{{product.main_image.path}}\">
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-calendar-alt\"></i>Ngày đăng: {{ product.created_at|date('d/m/Y') }}
\t\t\t\t\t\t\t\t</div>\t\t
\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-money-bill-wave\"></i>Giá bán:{{ product.price[0].price|number_format(0, ',', '.') }}</b> ({{product.price[0].currency}})</i>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t{% if product.user_defined_id %}
\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-barcode\"></i>Mã sản phẩm: {{product.user_defined_id}}
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t{% endif %}
                                 {% if product.xuatxu %}
\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-globe-americas\"></i>Xuất xứ: {{product.xuatxu}}
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t{% endif %}
\t\t\t\t\t\t\t\t{% if product.thuonghieu %}
\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-hourglass-start\"></i>Thương hiệu: {{product.thuonghieu}}
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t{% endif %}
\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t{% if product.categories.count %}
\t\t\t\t\t\t\t\t<div class=\"col-md-5\"><i class=\"fas fa-sitemap\"></i>Thể loại:
\t\t\t\t\t\t\t\t{% for category in product.categories%}\t\t\t
\t\t\t\t\t\t\t\t\t<a href=\"{{ category.url }}\">{{ category.name }}</a>
\t\t\t\t\t\t\t\t\t{% if not loop.last %},
\t\t\t\t\t\t\t\t\t{% endif %}
\t\t\t\t\t\t\t\t{% endfor %}
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t{% endif %}
\t\t\t\t\t\t\t\t<div class=\"product-details\">{{ product.description|slice(0, 50) ~ '...' }}</div>
\t\t\t\t\t\t\t\t <div class=\"clear\"></div>
\t\t\t\t\t\t\t\t <a class=\"btn-link link-arrow-sm\" href=\"san-pham/{{product.slug}}\">Chi tiết</a>
\t\t\t\t\t\t\t\t</li>\t\t 
\t\t\t\t\t\t\t\t{% endfor %}
\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t\t
\t\t\t\t\t\t<div class=\"clear\"></div>
\t\t\t\t\t\t<!-- End Blog Post -->
\t\t\t\t\t</div>
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
\t\t\t\t\t\t\t\t\t\t<H5>Chính sách bảo hành</H5>
\t\t\t\t\t\t\t\t\t\t<p>- Toàn bộ sản phẩm do Nhà kho bán ra cam kết đúng hình ảnh, chủng loại như đã mô tả với khách hàng.</p>
\t\t\t\t\t\t\t\t\t\t<p>Trong trường hợp có sai sót, Nhà kho xin hoàn lại 100% giá trị sản phẩm.</p>
\t\t\t\t\t\t\t\t\t\t<p>- Đồng hồ bản ra bảo hành 1 năm. Miễn phí bảo trì, bảo dưỡng trong 2 năm đầu sử dụng.</p>
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
\t</div>
</div>
\t<!-- End Content -->", "/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/nhakho.htm", "");
    }
}
