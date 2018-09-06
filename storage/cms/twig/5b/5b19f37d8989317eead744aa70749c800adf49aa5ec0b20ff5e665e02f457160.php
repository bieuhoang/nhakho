<?php

/* /Users/nhakho/www/nhakho.vn/themes/responsiv-flat/layouts/nhakholayout.htm */
class __TwigTemplate_cf4453e26f0e760e8be96ba8e460c7fea4c38eeb5016b8e48b49ac0a11447f7f extends Twig_Template
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
        echo "<!DOCTYPE html>
<html lang=\"zxx\">
<head>
\t<meta charset=\"UTF-8\">
\t<title>Đồng hồ cổ Nhà kho - ";
        // line 5
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", array()), "title", array()), "html", null, true);
        echo "</title>
\t<meta name=\"title\" content=\"";
        // line 6
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", array()), "meta_title", array()), "html", null, true);
        echo "\">
\t<meta name=\"description\" content=\"";
        // line 7
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", array()), "meta_description", array()), "html", null, true);
        echo "\">
\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
\t<meta name=\"author\" content=\"OctoberCMS\">
\t<meta name=\"generator\" content=\"OctoberCMS\">
\t<link rel=\"icon\" type=\"image/png\" href=\"";
        // line 11
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/logo.png");
        echo "\">
\t";
        // line 12
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('css');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('styles');
        // line 13
        echo "\t<link href=\"";
        echo $this->extensions['Cms\Twig\Extension']->themeFilter(array(0 => "assets/nhakho/css/vendor.bundle.css"));
        // line 15
        echo "\" rel=\"stylesheet\">
\t<link href=\"";
        // line 16
        echo $this->extensions['Cms\Twig\Extension']->themeFilter(array(0 => "assets/nhakho/css/style.css"));
        // line 18
        echo "\" rel=\"stylesheet\">




\t<style type=\"text/css\">
\t/* Only Demo Purpose */
\t.colorPanel {margin: 0;padding: 5px;position: fixed;z-index: 100;min-width: 20px; border-radius: 3px 0 0 3px; background-color: #EDC63C;right:0;top: 35%;} .colorPanel ul {margin:0px;padding:0px;list-style: none;display:none;} .colorPanel ul li {display: block;margin-top: 10px;} .colorPanel ul a {display: block;width: 20px;height: 20px;border: #fff 1px solid;} .colorPanel a.cart {border-bottom: 1px solid rgba(255,255,255,.3); margin-bottom: 6px; padding-bottom: 8px;display: block;} #cpToggle{display:block;height:30px; width:20px; line-height:30px; background-size:cover;}.cp-custom{padding: 12px;}.cp-custom #cpToggle{background: none;}.cp-custom i{font-size: 15px;color:#3C4DFF;}
</style>
<script>
\t(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
\t\t(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
\t\tm=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
\t})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

\tga('create', 'UA-107043957-2', 'auto');
\tga('send', 'pageview');
</script>
</head>
<body class=\"site-body style-v1\">
\t<!-- Header -->
\t<header class=\"site-header header-s1 is-sticky\">
\t\t";
        // line 40
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("nhakho/header"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 41
        echo "\t</header>
\t<!-- Content -->
\t<div id=\"layout-content\">
\t\t";
        // line 44
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFunction();
        // line 45
        echo "\t</div>
\t<!-- Footer -->
\t";
        // line 47
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("nhakho/footer"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 48
        echo "\t<!-- End footer -->




\t<!-- JavaScript Bundle -->
\t<script src=\"";
        // line 54
        echo $this->extensions['Cms\Twig\Extension']->themeFilter(array(0 => "assets/nhakho/js/jquery.bundle.js", 1 => "assets/nhakho/js/script.js"));
        // line 57
        echo "\"></script>
\t<!-- End script -->

</body>
</html>";
    }

    public function getTemplateName()
    {
        return "/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/layouts/nhakholayout.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  112 => 57,  110 => 54,  102 => 48,  98 => 47,  94 => 45,  92 => 44,  87 => 41,  83 => 40,  59 => 18,  57 => 16,  54 => 15,  51 => 13,  48 => 12,  44 => 11,  37 => 7,  33 => 6,  29 => 5,  23 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("<!DOCTYPE html>
<html lang=\"zxx\">
<head>
\t<meta charset=\"UTF-8\">
\t<title>Đồng hồ cổ Nhà kho - {{ this.page.title }}</title>
\t<meta name=\"title\" content=\"{{ this.page.meta_title }}\">
\t<meta name=\"description\" content=\"{{ this.page.meta_description }}\">
\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
\t<meta name=\"author\" content=\"OctoberCMS\">
\t<meta name=\"generator\" content=\"OctoberCMS\">
\t<link rel=\"icon\" type=\"image/png\" href=\"{{ 'assets/nhakho/image/logo.png'|theme }}\">
\t{% styles %}
\t<link href=\"{{ [
\t'assets/nhakho/css/vendor.bundle.css'
\t]|theme }}\" rel=\"stylesheet\">
\t<link href=\"{{ [
\t'assets/nhakho/css/style.css'
\t]|theme }}\" rel=\"stylesheet\">




\t<style type=\"text/css\">
\t/* Only Demo Purpose */
\t.colorPanel {margin: 0;padding: 5px;position: fixed;z-index: 100;min-width: 20px; border-radius: 3px 0 0 3px; background-color: #EDC63C;right:0;top: 35%;} .colorPanel ul {margin:0px;padding:0px;list-style: none;display:none;} .colorPanel ul li {display: block;margin-top: 10px;} .colorPanel ul a {display: block;width: 20px;height: 20px;border: #fff 1px solid;} .colorPanel a.cart {border-bottom: 1px solid rgba(255,255,255,.3); margin-bottom: 6px; padding-bottom: 8px;display: block;} #cpToggle{display:block;height:30px; width:20px; line-height:30px; background-size:cover;}.cp-custom{padding: 12px;}.cp-custom #cpToggle{background: none;}.cp-custom i{font-size: 15px;color:#3C4DFF;}
</style>
<script>
\t(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
\t\t(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
\t\tm=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
\t})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

\tga('create', 'UA-107043957-2', 'auto');
\tga('send', 'pageview');
</script>
</head>
<body class=\"site-body style-v1\">
\t<!-- Header -->
\t<header class=\"site-header header-s1 is-sticky\">
\t\t{% partial \"nhakho/header\" %}
\t</header>
\t<!-- Content -->
\t<div id=\"layout-content\">
\t\t{% page %}
\t</div>
\t<!-- Footer -->
\t{% partial 'nhakho/footer' %}
\t<!-- End footer -->




\t<!-- JavaScript Bundle -->
\t<script src=\"{{ [
\t'assets/nhakho/js/jquery.bundle.js',
\t'assets/nhakho/js/script.js'
\t]|theme }}\"></script>
\t<!-- End script -->

</body>
</html>", "/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/layouts/nhakholayout.htm", "");
    }
}
