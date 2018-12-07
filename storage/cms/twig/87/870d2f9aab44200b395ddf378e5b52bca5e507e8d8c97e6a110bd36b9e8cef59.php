<?php

/* /Users/nhakho/www/nhakho.vn/themes/responsiv-flat/partials/nhakho/header.htm */
class __TwigTemplate_575d21baf6f4fb6b7a42a1593dacd749354139f65797c94f623d504e1211e8ad extends Twig_Template
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
\t\t\t\t\t<span><em class=\"color-secondary\"><i class=\"far fa-compass\"></i>Số 1 ngách 65 ngõ 217 đường Trần Phú,Q. Hà Đông, Hà Nội</em><span style=\"display:inline-block;\"><i class=\"fas fa-phone-volume\"></i>0888.001.500</span></span>
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
\t\t\t<div class=\"quote-btn\">
\t\t\t<a class=\"btn\" href=\"fb://myfacepage/page/1804960209744498\" target=\"_blank\" rel=\"alternate\">Chuyển sang Facebook</a></p>
\t\t</div>
\t\t<!-- #end Trigger -->
\t\t<!-- MainNav -->
\t\t<nav class=\"navbar-collapse collapse\" id=\"mainnav\">
\t\t\t<ul class=\"nav navbar-nav\" style=\"margin: 0;\">
\t\t\t\t<li><a href=\"";
        // line 43
        echo url("/");
        echo "\">Trang chủ</a></li>
\t\t\t\t<li><a href=\"";
        // line 44
        echo url("gioi-thieu-dong-ho-nha-kho");
        echo "\">Giới thiệu Nhà kho</a></li>
\t\t\t\t<li>
\t\t\t\t\t<a href=\"";
        // line 46
        echo url("mua-ban-dong-ho-co");
        echo "\">Góc mua bán trao đổi</a>
\t\t\t\t\t<ul>
\t\t\t\t\t\t";
        // line 48
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
            // line 49
            echo "\t\t\t\t\t\t<li><a href=\"about.html\">Đồng hồ treo tường</a></li>
\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 51
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
        // line 60
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
            // line 61
            echo "Hoang van bieu
    ";
            // line 62
            $context["productCount"] = twig_get_attribute($this->env, $this->source, $context["category"], "product_count", array());
            // line 63
            echo "    <li ";
            if ((twig_get_attribute($this->env, $this->source, $context["category"], "slug", array()) == ($context["currentCategorySlug"] ?? null))) {
                echo "class=\"active\"";
            }
            echo ">
        <a href=\"";
            // line 64
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "url", array()), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "title", array()), "html", null, true);
            echo "</a>
        ";
            // line 65
            if (($context["productCount"] ?? null)) {
                // line 66
                echo "            <span class=\"badge\">";
                echo twig_escape_filter($this->env, ($context["productCount"] ?? null), "html", null, true);
                echo "</span>
        ";
            }
            // line 68
            echo "
        ";
            // line 69
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["category"], "children", array()), "count", array())) {
                // line 70
                echo "            <ul>
                ";
                // line 71
                $context['__cms_partial_params'] = [];
                $context['__cms_partial_params']['categories'] = twig_get_attribute($this->env, $this->source,                 // line 72
$context["category"], "children", array())                ;
                $context['__cms_partial_params']['currentCategorySlug'] =                 // line 73
($context["currentCategorySlug"] ?? null)                ;
                echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction((                // line 71
($context["__SELF__"] ?? null) . "::items")                , $context['__cms_partial_params']                , true                );
                unset($context['__cms_partial_params']);
                // line 75
                echo "            </ul>
        ";
            }
            // line 77
            echo "    </li>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
    }

    public function getTemplateName()
    {
        return "/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/partials/nhakho/header.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  167 => 77,  163 => 75,  160 => 71,  158 => 73,  156 => 72,  154 => 71,  151 => 70,  149 => 69,  146 => 68,  140 => 66,  138 => 65,  132 => 64,  125 => 63,  123 => 62,  120 => 61,  116 => 60,  105 => 51,  98 => 49,  94 => 48,  89 => 46,  84 => 44,  80 => 43,  40 => 8,  34 => 7,  30 => 6,  23 => 1,);
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
\t\t\t\t\t<span><em class=\"color-secondary\"><i class=\"far fa-compass\"></i>Số 1 ngách 65 ngõ 217 đường Trần Phú,Q. Hà Đông, Hà Nội</em><span style=\"display:inline-block;\"><i class=\"fas fa-phone-volume\"></i>0888.001.500</span></span>
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
\t\t\t<div class=\"quote-btn\">
\t\t\t<a class=\"btn\" href=\"fb://myfacepage/page/1804960209744498\" target=\"_blank\" rel=\"alternate\">Chuyển sang Facebook</a></p>
\t\t</div>
\t\t<!-- #end Trigger -->
\t\t<!-- MainNav -->
\t\t<nav class=\"navbar-collapse collapse\" id=\"mainnav\">
\t\t\t<ul class=\"nav navbar-nav\" style=\"margin: 0;\">
\t\t\t\t<li><a href=\"{{ url('/') }}\">Trang chủ</a></li>
\t\t\t\t<li><a href=\"{{ url('gioi-thieu-dong-ho-nha-kho') }}\">Giới thiệu Nhà kho</a></li>
\t\t\t\t<li>
\t\t\t\t\t<a href=\"{{ url('mua-ban-dong-ho-co') }}\">Góc mua bán trao đổi</a>
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
{% endfor %}", "/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/partials/nhakho/header.htm", "");
    }
}
