<?php

/* /Users/nhakho/www/nhakho.vn/themes/responsiv-flat/layouts/nhakholayout.htm */
class __TwigTemplate_10942d2458c7b566884cd9348f4b0332310cb5724d926c7814ed21422c7f3633 extends Twig_Template
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
        echo "\t<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>
\t<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.5.0/css/all.css\" integrity=\"sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU\" crossorigin=\"anonymous\">
\t<link href=\"";
        // line 15
        echo $this->extensions['Cms\Twig\Extension']->themeFilter(array(0 => "assets/nhakho/css/vendor.bundle.css"));
        // line 17
        echo "\" rel=\"stylesheet\">
\t<link href=\"";
        // line 18
        echo $this->extensions['Cms\Twig\Extension']->themeFilter(array(0 => "assets/nhakho/css/style.css"));
        // line 20
        echo "\" rel=\"stylesheet\">
    <link rel=\"stylesheet\" href=\"";
        // line 21
        echo $this->extensions['Cms\Twig\Extension']->themeFilter(array(0 => "assets/nhakho/images-grid.css"));
        // line 23
        echo "\">
</head>
<body class=\"site-body style-v1\">
\t<!-- Header -->
\t<header class=\"site-header header-s1 is-sticky\">
\t\t";
        // line 28
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("nhakho/header"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 29
        echo "\t</header>
\t<!-- Content -->
\t<div id=\"layout-content\">
\t\t";
        // line 32
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFunction();
        // line 33
        echo "\t</div>
\t<!-- Footer -->
\t";
        // line 35
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("nhakho/footer"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 36
        echo "\t<!-- End footer -->




\t<!-- JavaScript Bundle -->
\t<script src=\"";
        // line 42
        echo $this->extensions['Cms\Twig\Extension']->themeFilter(array(0 => "assets/nhakho/js/jquery.bundle.js", 1 => "assets/nhakho/js/script.js", 2 => "assets/nhakho/js/nhakho.js", 3 => "assets/nhakho/images-grid.js"));
        // line 47
        echo "\"></script>
\t<!-- End script -->
<script>

            var images = [
                'https://unsplash.it/1300/800?image=875',
                'https://unsplash.it/1300/800?image=874',
                'https://unsplash.it/1300/800?image=872',
                'https://unsplash.it/1300/800?image=868',
                'https://unsplash.it/1300/800?image=839',
                'https://unsplash.it/1300/800?image=838'
            ];

            \$(function() {
                \$('#gallery1').imagesGrid({
                    images: images
                });
            });

        </script>
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
        return array (  103 => 47,  101 => 42,  93 => 36,  89 => 35,  85 => 33,  83 => 32,  78 => 29,  74 => 28,  67 => 23,  65 => 21,  62 => 20,  60 => 18,  57 => 17,  55 => 15,  51 => 13,  48 => 12,  44 => 11,  37 => 7,  33 => 6,  29 => 5,  23 => 1,);
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
\t<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>
\t<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.5.0/css/all.css\" integrity=\"sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU\" crossorigin=\"anonymous\">
\t<link href=\"{{ [
\t'assets/nhakho/css/vendor.bundle.css'
\t]|theme }}\" rel=\"stylesheet\">
\t<link href=\"{{ [
\t'assets/nhakho/css/style.css'
\t]|theme }}\" rel=\"stylesheet\">
    <link rel=\"stylesheet\" href=\"{{ [
\t'assets/nhakho/images-grid.css'
\t]|theme }}\">
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
\t'assets/nhakho/js/script.js',
\t'assets/nhakho/js/nhakho.js',
\t'assets/nhakho/images-grid.js'
\t]|theme }}\"></script>
\t<!-- End script -->
<script>

            var images = [
                'https://unsplash.it/1300/800?image=875',
                'https://unsplash.it/1300/800?image=874',
                'https://unsplash.it/1300/800?image=872',
                'https://unsplash.it/1300/800?image=868',
                'https://unsplash.it/1300/800?image=839',
                'https://unsplash.it/1300/800?image=838'
            ];

            \$(function() {
                \$('#gallery1').imagesGrid({
                    images: images
                });
            });

        </script>
</body>
</html>", "/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/layouts/nhakholayout.htm", "");
    }
}
