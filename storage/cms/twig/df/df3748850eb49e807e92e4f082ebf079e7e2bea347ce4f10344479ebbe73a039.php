<?php

/* /var/www/nhakho.vn/themes/responsiv-flat/pages/nhakho.htm */
class __TwigTemplate_3d42b1fd364befafb83e42422408a63aac8878b75b99bac1291c70ce03db1f81 extends Twig_Template
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
        echo "<script>
\tvar thisPage = \"\";
\tvar imagesArray = new Array();
\tvar idList = new Array();
</script>
<div class=\"banner banner-static banner-medium has-bg lighter-filter\">
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
        // line 21
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
        // line 34
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
            // line 35
            echo "\t\t\t\t\t\t\t<script type=\"text/javascript\">
\t\t\t\t\t\t\t\tvar thisImages = new Array();
\t\t\t\t\t\t\t\tidList.push(";
            // line 37
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "id", array()), "html", null, true);
            echo ");
\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t<li class=\"products-list-home\">
\t\t\t\t\t\t\t\t<h2 style=\"display: initial;\">
\t\t\t\t\t\t\t\t";
            // line 41
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_slice($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "categories", array()), 0, 1));
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
                // line 42
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "url", array()), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "title", array()), "html", null, true);
                echo "</a>
\t\t\t\t\t\t\t\t\t";
                // line 43
                if ( !twig_get_attribute($this->env, $this->source, $context["loop"], "last", array())) {
                    echo ",
\t\t\t\t\t\t\t\t\t";
                }
                // line 45
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
            echo " =>
\t\t\t\t\t\t\t\t";
            // line 46
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
            echo "
\t\t\t\t\t\t\t\t</h2><br>
\t\t\t\t\t\t\t\t<div style=\"float: right;\">Ngày đăng: ";
            // line 48
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "created_at", array()), "html", null, true);
            echo "</div>
\t\t\t\t\t\t\t\t<div>Giá bán:<i class=\"price\"><b>";
            // line 49
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "price", array()), "html", null, true);
            echo "</b> (Đồng)</i>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"product-details\">";
            // line 51
            echo twig_get_attribute($this->env, $this->source, $context["product"], "description", array());
            echo "</div>
\t\t\t\t\t\t\t\t<div id=\"gallery";
            // line 52
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "id", array()), "html", null, true);
            echo "\"></div>
\t\t\t\t\t\t\t\t\t";
            // line 53
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["product"], "images", array()), "count", array())) {
                // line 54
                echo "\t\t\t\t\t\t\t\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["product"], "images", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                    // line 55
                    echo "\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\tthisImages.push(\"";
                    // line 56
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "path", array()), "html", null, true);
                    echo "\");
        \t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 59
                echo "\t\t\t\t\t\t\t\t\t";
            }
            // line 60
            echo "\t\t\t\t\t\t\t\t\t<a class=\"btn-link link-arrow-sm\" href=\"san-pham/";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "slug", array()), "html", null, true);
            echo "\">Chi tiết</a>
\t\t\t\t\t\t\t\t\t";
            // line 61
            if (twig_get_attribute($this->env, $this->source, $context["product"], "video", array())) {
                // line 62
                echo "\t\t\t\t\t\t\t\t\t\t<iframe width=\"100%\" height=\"315\" src=\"";
                echo call_user_func_array($this->env->getFunction('str_replace_first')->getCallable(), array("replace_first", "youtu.be", "www.youtube.com/embed", twig_get_attribute($this->env, $this->source, $context["product"], "video", array())));
                echo "\">
\t\t\t\t\t\t\t\t\t\t</iframe>
\t\t\t\t\t\t\t\t ";
            }
            // line 65
            echo "\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\timagesArray[";
            // line 67
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "id", array()), "html", null, true);
            echo "] = thisImages
\t\t\t\t\t\t\t\t</script>\t\t\t 
\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 70
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
        // line 91
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["code"] => $context["post"]) {
            // line 92
            echo "\t\t\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t\t\t\t<a href=\"";
            // line 93
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "slug", array()), "html", null, true);
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t<img alt=\"\" src=\"";
            // line 94
            echo $this->extensions['System\Twig\Extension']->mediaFilter(twig_get_attribute($this->env, $this->source, $context["post"], "image", array()));
            echo "\">
\t\t\t\t\t\t\t\t\t\t\t\t<p>";
            // line 95
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
        // line 99
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
\t<!-- End Content -->

\t<script>
            \$(function() {
            \t\$.each(idList, function(pnum, pid){
  \t\t\t\t\t\$('#gallery'+pid).imagesGrid({
                    \timages: imagesArray[pid],align: true
                \t});
\t\t\t\t});
                
            });
    </script>";
    }

    public function getTemplateName()
    {
        return "/var/www/nhakho.vn/themes/responsiv-flat/pages/nhakho.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  243 => 99,  231 => 95,  227 => 94,  223 => 93,  220 => 92,  216 => 91,  193 => 70,  184 => 67,  180 => 65,  173 => 62,  171 => 61,  166 => 60,  163 => 59,  154 => 56,  151 => 55,  146 => 54,  144 => 53,  140 => 52,  136 => 51,  131 => 49,  127 => 48,  122 => 46,  106 => 45,  101 => 43,  95 => 42,  76 => 41,  69 => 37,  65 => 35,  61 => 34,  45 => 21,  23 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("<script>
\tvar thisPage = \"\";
\tvar imagesArray = new Array();
\tvar idList = new Array();
</script>
<div class=\"banner banner-static banner-medium has-bg lighter-filter\">
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
\t\t\t\t\t\t\t<script type=\"text/javascript\">
\t\t\t\t\t\t\t\tvar thisImages = new Array();
\t\t\t\t\t\t\t\tidList.push({{product.id}});
\t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t<li class=\"products-list-home\">
\t\t\t\t\t\t\t\t<h2 style=\"display: initial;\">
\t\t\t\t\t\t\t\t{% for category in product.categories|slice(0, 1) %}\t\t\t
\t\t\t\t\t\t\t\t\t<a href=\"{{ category.url }}\">{{ category.title }}</a>
\t\t\t\t\t\t\t\t\t{% if not loop.last %},
\t\t\t\t\t\t\t\t\t{% endif %}
\t\t\t\t\t\t\t\t{% endfor %} =>
\t\t\t\t\t\t\t\t{{product.title}}
\t\t\t\t\t\t\t\t</h2><br>
\t\t\t\t\t\t\t\t<div style=\"float: right;\">Ngày đăng: {{product.created_at}}</div>
\t\t\t\t\t\t\t\t<div>Giá bán:<i class=\"price\"><b>{{product.price}}</b> (Đồng)</i>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"product-details\">{{ product.description|raw}}</div>
\t\t\t\t\t\t\t\t<div id=\"gallery{{product.id}}\"></div>
\t\t\t\t\t\t\t\t\t{% if product.images.count %}
\t\t\t\t\t\t\t\t\t{% for image in product.images %}
\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\tthisImages.push(\"{{image.path}}\");
        \t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t{% endfor %}
\t\t\t\t\t\t\t\t\t{% endif %}
\t\t\t\t\t\t\t\t\t<a class=\"btn-link link-arrow-sm\" href=\"san-pham/{{product.slug}}\">Chi tiết</a>
\t\t\t\t\t\t\t\t\t{% if product.video %}
\t\t\t\t\t\t\t\t\t\t<iframe width=\"100%\" height=\"315\" src=\"{{str_replace_first('youtu.be', 'www.youtube.com/embed', product.video)}}\">
\t\t\t\t\t\t\t\t\t\t</iframe>
\t\t\t\t\t\t\t\t {% endif %}
\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\timagesArray[{{product.id}}] = thisImages
\t\t\t\t\t\t\t\t</script>\t\t\t 
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
\t<!-- End Content -->

\t<script>
            \$(function() {
            \t\$.each(idList, function(pnum, pid){
  \t\t\t\t\t\$('#gallery'+pid).imagesGrid({
                    \timages: imagesArray[pid],align: true
                \t});
\t\t\t\t});
                
            });
    </script>", "/var/www/nhakho.vn/themes/responsiv-flat/pages/nhakho.htm", "");
    }
}
