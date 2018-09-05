<?php

/* /Users/nhakho/www/nhakho.vn/themes/responsiv-flat/partials/nhakho/header.htm */
class __TwigTemplate_1f349fd6be910fe76a7f1cf23ed7b638849b0354e326adcdb598c60f8507a636 extends Twig_Template
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
\t\t<div class=\"navbar navbar-primary\">
\t\t\t<div class=\"container\">
\t\t\t\t<!-- Logo -->
\t\t\t\t<!-- Logo -->
\t\t\t\t<a class=\"navbar-brand\" href=\"";
        // line 6
        echo url("/");
        echo "\">
\t\t\t\t\t<img class=\"logo logo-dark\" alt=\"\" src=\"";
        // line 7
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/logo.png");
        echo "\" srcset=\"";
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/logo2x.png");
        echo " 2x\">
\t\t\t\t\t<img class=\"logo logo-light\" alt=\"\" src=\"";
        // line 8
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/logo-white.png");
        echo "\" srcset=\"";
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/logo2x.png");
        echo " 2x\">
\t\t\t\t</a>
\t\t\t\t<!-- #end Logo -->
\t\t\t\t<!-- HeaderTop -->
\t\t\t\t<div class=\"header-top\">
\t\t\t\t\t<ul class=\"top-contact\">
\t\t\t\t\t\t<li class=\"t-phone t-phone1 t-phone-s2\">
\t\t\t\t\t\t\t<span><small><em class=\"color-secondary\">24/7</em> HOTLINE tư vấn</small> <em class=\"fa fa-phone\" aria-hidden=\"true\"></em> <a href=\"news.html#\">0888-001-500</a></span>
\t\t\t\t\t\t</li>
\t\t\t\t\t\t<li class=\"t-phone t-phone1 t-phone-s2\">
\t\t\t\t\t\t\t<span><small>Hỗ trợ kỹ thuật</small> <em class=\"fa fa-phone\" aria-hidden=\"true\"></em> <a href=\"news.html#\">0886-509-500</a></span>
\t\t\t\t\t\t</li>
\t\t\t\t\t\t<li class=\"quote-btn\">

\t\t\t\t\t\t\t<a href=\"https://www.facebook.com/donghocotreotuong/\" class=\"btn\" target=\"_blank\">
\t\t\t\t\t\t\t\t<i class=\"fa fab fa-facebook-square\" style=\"background: white;
\t\t\t\t\t\t\t\tcolor: #4366b2;\"></i>
\t\t\t\t\t\t\tChuyển sang trang Facebook</a></li>
\t\t\t\t\t\t</ul>
\t\t\t\t\t</div>
\t\t\t\t\t<!-- #end HeaderTop -->
\t\t\t\t\t<!-- NavBar Trigger -->
\t\t\t\t\t<div class=\"navbar-header\">
\t\t\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#mainnav\"
\t\t\t\t\t\taria-expanded=\"false\">
\t\t\t\t\t\t<span class=\"sr-only\">Menu</span>
\t\t\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t\t\t</button>
\t\t\t\t\t<!-- Q-Button for Mobile -->
\t\t\t\t\t<div class=\"quote-btn\"><a class=\"btn\" href=\"request-service.html\"><span>Request Service</span></a></div>
\t\t\t\t</div>
\t\t\t\t<!-- #end Trigger -->
\t\t\t\t<!-- MainNav -->
\t\t\t\t<nav class=\"navbar-collapse collapse\" id=\"mainnav\">
\t\t\t\t\t<ul class=\"nav navbar-nav\">
\t\t\t\t\t\t<li><a href=\"";
        // line 45
        echo url("/");
        echo "\">Trang chủ</a></li>
\t\t\t\t\t\t<li><a href=\"";
        // line 46
        echo url("gioi-thieu-dong-ho-nha-kho");
        echo "\">Giới thiệu và Dịch vụ Nhà kho</a></li>
\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"about.html\">Góc mua bán trao đổi</a>
\t\t\t\t\t\t\t<ul>
\t\t\t\t\t\t\t\t<li><a href=\"about.html\">Đồng hồ treo tường</a></li>
\t\t\t\t\t\t\t\t<li><a href=\"about-modern.html\">Đồng hồ để bàn</a></li>
\t\t\t\t\t\t\t\t<li><a href=\"teams.html\">Vai bò, tạ lê</a></li>
\t\t\t\t\t\t\t\t<li><a href=\"testimonial.html\">Đồng hồ tủ đứng</a></li>
\t\t\t\t\t\t\t\t<li><a href=\"testimonial.html\">Các loại khác</a></li>
\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</li>
\t\t\t\t\t\t<li><a href=\"service-alter.html\">Cẩm nang, kinh nghiệm</a></li>
\t\t\t\t\t\t<li><a href=\"contact.html\">Liên hệ</a></li>
\t\t\t\t\t</ul>
\t\t\t\t</nav>
\t\t\t\t<!-- #end Navbar -->";
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
        return array (  86 => 46,  82 => 45,  40 => 8,  34 => 7,  30 => 6,  23 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("<!-- Navbar -->
\t\t<div class=\"navbar navbar-primary\">
\t\t\t<div class=\"container\">
\t\t\t\t<!-- Logo -->
\t\t\t\t<!-- Logo -->
\t\t\t\t<a class=\"navbar-brand\" href=\"{{ url('/') }}\">
\t\t\t\t\t<img class=\"logo logo-dark\" alt=\"\" src=\"{{ 'assets/nhakho/image/logo.png'|theme }}\" srcset=\"{{ 'assets/nhakho/image/logo2x.png'|theme }} 2x\">
\t\t\t\t\t<img class=\"logo logo-light\" alt=\"\" src=\"{{ 'assets/nhakho/image/logo-white.png'|theme }}\" srcset=\"{{ 'assets/nhakho/image/logo2x.png'|theme }} 2x\">
\t\t\t\t</a>
\t\t\t\t<!-- #end Logo -->
\t\t\t\t<!-- HeaderTop -->
\t\t\t\t<div class=\"header-top\">
\t\t\t\t\t<ul class=\"top-contact\">
\t\t\t\t\t\t<li class=\"t-phone t-phone1 t-phone-s2\">
\t\t\t\t\t\t\t<span><small><em class=\"color-secondary\">24/7</em> HOTLINE tư vấn</small> <em class=\"fa fa-phone\" aria-hidden=\"true\"></em> <a href=\"news.html#\">0888-001-500</a></span>
\t\t\t\t\t\t</li>
\t\t\t\t\t\t<li class=\"t-phone t-phone1 t-phone-s2\">
\t\t\t\t\t\t\t<span><small>Hỗ trợ kỹ thuật</small> <em class=\"fa fa-phone\" aria-hidden=\"true\"></em> <a href=\"news.html#\">0886-509-500</a></span>
\t\t\t\t\t\t</li>
\t\t\t\t\t\t<li class=\"quote-btn\">

\t\t\t\t\t\t\t<a href=\"https://www.facebook.com/donghocotreotuong/\" class=\"btn\" target=\"_blank\">
\t\t\t\t\t\t\t\t<i class=\"fa fab fa-facebook-square\" style=\"background: white;
\t\t\t\t\t\t\t\tcolor: #4366b2;\"></i>
\t\t\t\t\t\t\tChuyển sang trang Facebook</a></li>
\t\t\t\t\t\t</ul>
\t\t\t\t\t</div>
\t\t\t\t\t<!-- #end HeaderTop -->
\t\t\t\t\t<!-- NavBar Trigger -->
\t\t\t\t\t<div class=\"navbar-header\">
\t\t\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#mainnav\"
\t\t\t\t\t\taria-expanded=\"false\">
\t\t\t\t\t\t<span class=\"sr-only\">Menu</span>
\t\t\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t\t\t\t<span class=\"icon-bar\"></span>
\t\t\t\t\t</button>
\t\t\t\t\t<!-- Q-Button for Mobile -->
\t\t\t\t\t<div class=\"quote-btn\"><a class=\"btn\" href=\"request-service.html\"><span>Request Service</span></a></div>
\t\t\t\t</div>
\t\t\t\t<!-- #end Trigger -->
\t\t\t\t<!-- MainNav -->
\t\t\t\t<nav class=\"navbar-collapse collapse\" id=\"mainnav\">
\t\t\t\t\t<ul class=\"nav navbar-nav\">
\t\t\t\t\t\t<li><a href=\"{{ url('/') }}\">Trang chủ</a></li>
\t\t\t\t\t\t<li><a href=\"{{ url('gioi-thieu-dong-ho-nha-kho') }}\">Giới thiệu và Dịch vụ Nhà kho</a></li>
\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"about.html\">Góc mua bán trao đổi</a>
\t\t\t\t\t\t\t<ul>
\t\t\t\t\t\t\t\t<li><a href=\"about.html\">Đồng hồ treo tường</a></li>
\t\t\t\t\t\t\t\t<li><a href=\"about-modern.html\">Đồng hồ để bàn</a></li>
\t\t\t\t\t\t\t\t<li><a href=\"teams.html\">Vai bò, tạ lê</a></li>
\t\t\t\t\t\t\t\t<li><a href=\"testimonial.html\">Đồng hồ tủ đứng</a></li>
\t\t\t\t\t\t\t\t<li><a href=\"testimonial.html\">Các loại khác</a></li>
\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</li>
\t\t\t\t\t\t<li><a href=\"service-alter.html\">Cẩm nang, kinh nghiệm</a></li>
\t\t\t\t\t\t<li><a href=\"contact.html\">Liên hệ</a></li>
\t\t\t\t\t</ul>
\t\t\t\t</nav>
\t\t\t\t<!-- #end Navbar -->", "/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/partials/nhakho/header.htm", "");
    }
}
