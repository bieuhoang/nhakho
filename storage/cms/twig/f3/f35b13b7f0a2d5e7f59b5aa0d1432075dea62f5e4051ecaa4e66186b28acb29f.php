<?php

/* /var/www/nhakho.vn/themes/responsiv-flat/partials/nhakho/header.htm */
class __TwigTemplate_56914ed72580307a5dd5ab6151bbc8271f779a9d67107cd3d2f986a9c09f32cc extends Twig_Template
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
        echo "<!-- Navbar -->
<div class=\"navbar navbar-primary\">
\t<div class=\"container\">
\t\t<!-- Logo -->
\t\t<!-- Logo -->
\t\t<a class=\"navbar-brand\" href=\"";
        // line 6
        echo url("/");
        echo "\">
\t\t\t<img class=\"logo logo-dark\" alt=\"\" src=\"";
        // line 7
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/logo.png");
        echo "\" srcset=\"";
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/logo2x.png");
        echo " 2x\">
\t\t\t<img class=\"logo logo-light\" alt=\"\" src=\"";
        // line 8
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/logo-white.png");
        echo "\" srcset=\"";
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/logo2x.png");
        echo " 2x\">
\t\t</a>
\t\t<!-- #end Logo -->
\t\t<!-- HeaderTop -->
\t\t<div class=\"header-top\">
\t\t\t<ul class=\"top-contact\">
\t\t\t\t<li class=\"t-phone t-phone1 t-phone-s2\">
\t\t\t\t\t<span><em class=\"color-secondary\">Số 1 ngách 65 ngõ 217 đường Trần Phú,Q. Hà Đông, Hà Nội</em></span>
\t\t\t\t</li>
\t\t\t\t<li class=\"t-phone t-phone1 t-phone-s2\">
\t\t\t\t\t<span><small>Điện thoại</small> <em class=\"fa fa-phone\" aria-hidden=\"true\"></em> <a href=\"news.html#\">0888.001.500 </a></span>
\t\t\t\t</li>
\t\t\t\t<li class=\"quote-btn\">

\t\t\t\t\t<a href=\"https://www.facebook.com/donghocotreotuong/\" class=\"btn\" target=\"_blank\">
\t\t\t\t\t\t<i class=\"fa fab fa-facebook-square\" style=\"background: white;
\t\t\t\t\t\tcolor: #4366b2;\"></i>
\t\t\t\t\tChuyển sang trang Facebook</a></li>
\t\t\t\t</ul>
\t\t\t</div>
\t\t\t<!-- #end HeaderTop -->
\t\t\t<!-- NavBar Trigger -->
\t\t\t<div class=\"navbar-header\">
\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#mainnav\"
\t\t\t\taria-expanded=\"false\">
\t\t\t\t<span class=\"sr-only\">Menu</span>
\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t</button>
\t\t\t<!-- Q-Button for Mobile -->\t\t
\t\t\t<div class=\"quote-btn\"><a class=\"btn\"><span>Chuyển đến Facebook</span></a></div>
\t\t</div>
\t\t<!-- #end Trigger -->
\t\t<!-- MainNav -->
\t\t<nav class=\"navbar-collapse collapse\" id=\"mainnav\">
\t\t\t<ul class=\"nav navbar-nav\">
\t\t\t\t<li><a href=\"";
        // line 45
        echo url("/");
        echo "\">Trang chủ</a></li>
\t\t\t\t<li><a href=\"";
        // line 46
        echo url("gioi-thieu-dong-ho-nha-kho");
        echo "\">Giới thiệu và Dịch vụ Nhà kho</a></li>
\t\t\t\t<li>
\t\t\t\t\t<a href=\"mua-ban-dong-ho-co\">Góc mua bán trao đổi</a>
\t\t\t\t\t<ul>
\t\t\t\t\t\t";
        // line 50
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
            // line 51
            echo "\t\t\t\t\t\t<li><a href=\"about.html\">Đồng hồ treo tường</a></li>
\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 53
        echo "\t\t\t\t\t</ul>
\t\t\t\t</li>
\t\t\t\t<li><a href=\"sua-chua-dong-ho-co\">Cẩm nang, kinh nghiệm</a></li>
\t\t\t\t<li><a href=\"lien-he\">Liên hệ</a></li>
\t\t\t</ul>
\t\t</nav>
\t\t<!-- #end Navbar -->
\t</div>\t
</div>
";
        // line 62
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
            // line 63
            echo "Hoang van bieu
    ";
            // line 64
            $context["productCount"] = twig_get_attribute($this->env, $this->source, $context["category"], "product_count", array());
            // line 65
            echo "    <li ";
            if ((twig_get_attribute($this->env, $this->source, $context["category"], "slug", array()) == ($context["currentCategorySlug"] ?? null))) {
                echo "class=\"active\"";
            }
            echo ">
        <a href=\"";
            // line 66
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "url", array()), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "title", array()), "html", null, true);
            echo "</a>
        ";
            // line 67
            if (($context["productCount"] ?? null)) {
                // line 68
                echo "            <span class=\"badge\">";
                echo twig_escape_filter($this->env, ($context["productCount"] ?? null), "html", null, true);
                echo "</span>
        ";
            }
            // line 70
            echo "
        ";
            // line 71
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["category"], "children", array()), "count", array())) {
                // line 72
                echo "            <ul>
                ";
                // line 73
                $context['__cms_partial_params'] = [];
                $context['__cms_partial_params']['categories'] = twig_get_attribute($this->env, $this->source,                 // line 74
$context["category"], "children", array())                ;
                $context['__cms_partial_params']['currentCategorySlug'] =                 // line 75
($context["currentCategorySlug"] ?? null)                ;
                echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction((                // line 73
($context["__SELF__"] ?? null) . "::items")                , $context['__cms_partial_params']                , true                );
                unset($context['__cms_partial_params']);
                // line 77
                echo "            </ul>
        ";
            }
            // line 79
            echo "    </li>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
    }

    public function getTemplateName()
    {
        return "/var/www/nhakho.vn/themes/responsiv-flat/partials/nhakho/header.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  166 => 79,  162 => 77,  159 => 73,  157 => 75,  155 => 74,  153 => 73,  150 => 72,  148 => 71,  145 => 70,  139 => 68,  137 => 67,  131 => 66,  124 => 65,  122 => 64,  119 => 63,  115 => 62,  104 => 53,  97 => 51,  93 => 50,  86 => 46,  82 => 45,  40 => 8,  34 => 7,  30 => 6,  23 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("<!-- Navbar -->
<div class=\"navbar navbar-primary\">
\t<div class=\"container\">
\t\t<!-- Logo -->
\t\t<!-- Logo -->
\t\t<a class=\"navbar-brand\" href=\"{{ url('/') }}\">
\t\t\t<img class=\"logo logo-dark\" alt=\"\" src=\"{{ 'assets/nhakho/image/logo.png'|theme }}\" srcset=\"{{ 'assets/nhakho/image/logo2x.png'|theme }} 2x\">
\t\t\t<img class=\"logo logo-light\" alt=\"\" src=\"{{ 'assets/nhakho/image/logo-white.png'|theme }}\" srcset=\"{{ 'assets/nhakho/image/logo2x.png'|theme }} 2x\">
\t\t</a>
\t\t<!-- #end Logo -->
\t\t<!-- HeaderTop -->
\t\t<div class=\"header-top\">
\t\t\t<ul class=\"top-contact\">
\t\t\t\t<li class=\"t-phone t-phone1 t-phone-s2\">
\t\t\t\t\t<span><em class=\"color-secondary\">Số 1 ngách 65 ngõ 217 đường Trần Phú,Q. Hà Đông, Hà Nội</em></span>
\t\t\t\t</li>
\t\t\t\t<li class=\"t-phone t-phone1 t-phone-s2\">
\t\t\t\t\t<span><small>Điện thoại</small> <em class=\"fa fa-phone\" aria-hidden=\"true\"></em> <a href=\"news.html#\">0888.001.500 </a></span>
\t\t\t\t</li>
\t\t\t\t<li class=\"quote-btn\">

\t\t\t\t\t<a href=\"https://www.facebook.com/donghocotreotuong/\" class=\"btn\" target=\"_blank\">
\t\t\t\t\t\t<i class=\"fa fab fa-facebook-square\" style=\"background: white;
\t\t\t\t\t\tcolor: #4366b2;\"></i>
\t\t\t\t\tChuyển sang trang Facebook</a></li>
\t\t\t\t</ul>
\t\t\t</div>
\t\t\t<!-- #end HeaderTop -->
\t\t\t<!-- NavBar Trigger -->
\t\t\t<div class=\"navbar-header\">
\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#mainnav\"
\t\t\t\taria-expanded=\"false\">
\t\t\t\t<span class=\"sr-only\">Menu</span>
\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t</button>
\t\t\t<!-- Q-Button for Mobile -->\t\t
\t\t\t<div class=\"quote-btn\"><a class=\"btn\"><span>Chuyển đến Facebook</span></a></div>
\t\t</div>
\t\t<!-- #end Trigger -->
\t\t<!-- MainNav -->
\t\t<nav class=\"navbar-collapse collapse\" id=\"mainnav\">
\t\t\t<ul class=\"nav navbar-nav\">
\t\t\t\t<li><a href=\"{{ url('/') }}\">Trang chủ</a></li>
\t\t\t\t<li><a href=\"{{ url('gioi-thieu-dong-ho-nha-kho') }}\">Giới thiệu và Dịch vụ Nhà kho</a></li>
\t\t\t\t<li>
\t\t\t\t\t<a href=\"mua-ban-dong-ho-co\">Góc mua bán trao đổi</a>
\t\t\t\t\t<ul>
\t\t\t\t\t\t{%for category in categories%}
\t\t\t\t\t\t<li><a href=\"about.html\">Đồng hồ treo tường</a></li>
\t\t\t\t\t\t{%endfor%}
\t\t\t\t\t</ul>
\t\t\t\t</li>
\t\t\t\t<li><a href=\"sua-chua-dong-ho-co\">Cẩm nang, kinh nghiệm</a></li>
\t\t\t\t<li><a href=\"lien-he\">Liên hệ</a></li>
\t\t\t</ul>
\t\t</nav>
\t\t<!-- #end Navbar -->
\t</div>\t
</div>
{% for category in categories %}
Hoang van bieu
    {% set productCount = category.product_count %}
    <li {% if category.slug == currentCategorySlug %}class=\"active\"{% endif %}>
        <a href=\"{{ category.url }}\">{{ category.title }}</a>
        {% if productCount %}
            <span class=\"badge\">{{ productCount }}</span>
        {% endif %}

        {% if category.children.count %}
            <ul>
                {% partial __SELF__ ~ \"::items\"
                    categories=category.children
                    currentCategorySlug=currentCategorySlug
                %}
            </ul>
        {% endif %}
    </li>
{% endfor %}", "/var/www/nhakho.vn/themes/responsiv-flat/partials/nhakho/header.htm", "");
    }
}
