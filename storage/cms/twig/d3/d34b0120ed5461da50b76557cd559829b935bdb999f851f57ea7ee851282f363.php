<?php

/* /Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/san-pham.htm */
class __TwigTemplate_fadbf62194cf8be613bd1b27f44635f0a93f025739a29b9de68b312befc8f4da extends Twig_Template
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
        echo "<!-- Content -->
<script>
\tvar thisPage = \"\";
\tvar imagesArray = new Array();
</script>
<div class=\"section section-blog section-pad\">
\t<div class=\"container\">
\t\t<div class=\"content row\">
\t\t\t<div class=\"col-md-8 res-m-bttm\">
\t\t\t\t<h3 style=\"display: initial;\">
\t\t\t\t\t\t\t\t";
        // line 11
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "name", array()), "html", null, true);
        echo "
\t\t\t\t\t\t\t\t</h3>
\t\t\t\t\t\t\t\t<div class=\"clear\"></div>
\t\t\t\t\t\t\t\t<div class=\"col-md-2\">
\t\t\t\t\t\t\t\t\t<img src=\"";
        // line 15
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "main_image", array()), "path", array()), "html", null, true);
        echo "\">
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-calendar-alt\"></i>Ngày đăng: ";
        // line 18
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "created_at", array()), "d/m/Y"), "html", null, true);
        echo "
\t\t\t\t\t\t\t\t</div>\t\t
\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-money-bill-wave\"></i>Giá bán:";
        // line 21
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, twig_get_attribute($this->env, $this->source, (($__internal_7cd7461123377b8c9c1b6a01f46c7bbd94bd12e59266005df5e93029ddbc0ec5 = twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "price", array())) && is_array($__internal_7cd7461123377b8c9c1b6a01f46c7bbd94bd12e59266005df5e93029ddbc0ec5) || $__internal_7cd7461123377b8c9c1b6a01f46c7bbd94bd12e59266005df5e93029ddbc0ec5 instanceof ArrayAccess ? ($__internal_7cd7461123377b8c9c1b6a01f46c7bbd94bd12e59266005df5e93029ddbc0ec5[0] ?? null) : null), "price", array()), 0, ",", "."), "html", null, true);
        echo "</b> (";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (($__internal_3e28b7f596c58d7729642bcf2acc6efc894803703bf5fa7e74cd8d2aa1f8c68a = twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "price", array())) && is_array($__internal_3e28b7f596c58d7729642bcf2acc6efc894803703bf5fa7e74cd8d2aa1f8c68a) || $__internal_3e28b7f596c58d7729642bcf2acc6efc894803703bf5fa7e74cd8d2aa1f8c68a instanceof ArrayAccess ? ($__internal_3e28b7f596c58d7729642bcf2acc6efc894803703bf5fa7e74cd8d2aa1f8c68a[0] ?? null) : null), "currency", array()), "html", null, true);
        echo ")</i>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
        // line 23
        if (twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "user_defined_id", array())) {
            // line 24
            echo "\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-barcode\"></i>Mã sản phẩm: ";
            // line 25
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "user_defined_id", array()), "html", null, true);
            echo "
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
        }
        // line 28
        echo "                                 ";
        if (twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "xuatxu", array())) {
            // line 29
            echo "\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-globe-americas\"></i>Xuất xứ: ";
            // line 30
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "xuatxu", array()), "html", null, true);
            echo "
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
        }
        // line 33
        echo "\t\t\t\t\t\t\t\t";
        if (twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "thuonghieu", array())) {
            // line 34
            echo "\t\t\t\t\t\t\t\t<div class=\"col-md-5\">
\t\t\t\t\t\t\t\t<i class=\"fas fa-hourglass-start\"></i>Thương hiệu: ";
            // line 35
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "thuonghieu", array()), "html", null, true);
            echo "
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
        }
        // line 38
        echo "\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t";
        // line 39
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "categories", array()), "count", array())) {
            // line 40
            echo "\t\t\t\t\t\t\t\t<div class=\"col-md-5\"><i class=\"fas fa-sitemap\"></i>Thể loại:
\t\t\t\t\t\t\t\t";
            // line 41
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "categories", array()));
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
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "name", array()), "html", null, true);
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
            // line 46
            echo "\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
        }
        // line 48
        echo "\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t<div class=\"product-details\">";
        // line 49
        echo twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "description", array());
        echo "</div>
\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t\t";
        // line 51
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "images", array()), "count", array())) {
            // line 52
            echo "\t\t\t\t\t\t\t\t\t";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "images", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                // line 53
                echo "\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\timagesArray.push(\"";
                // line 54
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "path", array()), "html", null, true);
                echo "\");
        \t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 57
            echo "\t\t\t\t\t\t\t\t\t";
        }
        // line 58
        echo "\t\t\t\t\t\t\t\t\t<div id=\"gallery";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "id", array()), "html", null, true);
        echo "\"></div>
\t\t\t\t\t\t\t\t\t";
        // line 59
        if (twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "video", array())) {
            // line 60
            echo "\t\t\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t\t\t<iframe width=\"100%\" height=\"360\" src=\"";
            // line 61
            echo call_user_func_array($this->env->getFunction('str_replace_first')->getCallable(), array("replace_first", "youtu.be", "www.youtube.com/embed", twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "video", array())));
            echo "?rel=0&amp;autoplay=1\" frameborder=\"0\" allowfullscreen></iframe>

\t\t\t\t\t\t\t\t ";
        }
        // line 63
        echo "\t\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t <div class=\"clear\"></div>
\t\t\t\t\t\t\t\t 
\t\t\t</div>
\t\t\t<div class=\"col-md-4\">
\t\t\t\t<div class=\"sidebar-right\">
\t\t\t\t\t<div class=\"wgs-box wgs-search\">
\t\t\t\t\t\t<div class=\"wgs-content\">
\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" placeholder=\"Search...\">
\t\t\t\t\t\t\t\t<button class=\"search-btn\"><i class=\"fa fa-search\" aria-hidden=\"true\"></i></button>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"wgs-box wgs-recents\">
\t\t\t\t\t\t<h3 class=\"wgs-heading\">Recent Posts</h3>
\t\t\t\t\t\t<div class=\"wgs-content\">
\t\t\t\t\t\t\t<ul class=\"blog-recent\">
\t\t\t\t\t\t\t\t";
        // line 81
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
            // line 82
            echo "\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t\t<a href=\"san-pham/";
            // line 83
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "slug", array()), "html", null, true);
            echo "\">
\t\t\t\t\t\t\t\t\t\t";
            // line 84
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["product"], "images", array()), "count", array())) {
                // line 85
                echo "\t\t\t\t\t\t\t\t\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_slice($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "images", array()), 0, 1));
                foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                    // line 86
                    echo "\t\t\t\t\t\t\t\t\t\t<img data-src=\"";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "filename", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\t\tsrc=\"";
                    // line 87
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "path", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\t\ttitle=\"";
                    // line 88
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\t\talt=\"";
                    // line 89
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
                    echo "\"/>
\t\t\t\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 91
                echo "\t\t\t\t\t\t\t\t\t\t";
            } else {
                // line 92
                echo "\t\t\t\t\t\t\t\t\t\t<img src=\"";
                echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/logo.png");
                echo "\" title=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
                echo "\" alt=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
                echo "\"/>
\t\t\t\t\t\t\t\t\t\t";
            }
            // line 94
            echo "\t\t\t\t\t\t\t\t\t\t<h2 class=\"products-title-list\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
            echo "</h2>
\t\t\t\t\t\t\t\t\t\t";
            // line 95
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
                // line 96
                echo "\t\t\t\t\t\t\t\t\t\t<a href=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "url", array()), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "title", array()), "html", null, true);
                echo "</a>
\t\t\t\t\t\t\t\t\t\t";
                // line 97
                if ( !twig_get_attribute($this->env, $this->source, $context["loop"], "last", array())) {
                    echo ",
\t\t\t\t\t\t\t\t\t\t";
                }
                // line 99
                echo "\t\t\t\t\t\t\t\t\t\t";
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
            // line 100
            echo "\t\t\t\t\t\t\t\t\t\t<p>";
            echo twig_escape_filter($this->env, (twig_slice($this->env, strip_tags(twig_get_attribute($this->env, $this->source, $context["product"], "excerpt", array())), 0, 100) . "..."), "html", null, true);
            echo "</p>
\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 104
        echo "\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t\t
\t\t\t</div>
\t\t</div>
\t</div>
</div>
<script>
            \$(function() {
  \t\t\t\t\t\$('#gallery";
        // line 115
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "id", array()), "html", null, true);
        echo "').imagesGrid({
                    \timages: imagesArray,align: true
                \t});
                
            });
    </script>";
    }

    public function getTemplateName()
    {
        return "/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/san-pham.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  342 => 115,  329 => 104,  318 => 100,  304 => 99,  299 => 97,  292 => 96,  275 => 95,  270 => 94,  260 => 92,  257 => 91,  249 => 89,  245 => 88,  241 => 87,  236 => 86,  231 => 85,  229 => 84,  225 => 83,  222 => 82,  218 => 81,  198 => 63,  192 => 61,  189 => 60,  187 => 59,  182 => 58,  179 => 57,  170 => 54,  167 => 53,  162 => 52,  160 => 51,  155 => 49,  152 => 48,  148 => 46,  134 => 45,  129 => 43,  123 => 42,  104 => 41,  101 => 40,  99 => 39,  96 => 38,  90 => 35,  87 => 34,  84 => 33,  78 => 30,  75 => 29,  72 => 28,  66 => 25,  63 => 24,  61 => 23,  54 => 21,  48 => 18,  42 => 15,  35 => 11,  23 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("<!-- Content -->
<script>
\tvar thisPage = \"\";
\tvar imagesArray = new Array();
</script>
<div class=\"section section-blog section-pad\">
\t<div class=\"container\">
\t\t<div class=\"content row\">
\t\t\t<div class=\"col-md-8 res-m-bttm\">
\t\t\t\t<h3 style=\"display: initial;\">
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
\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t<div class=\"product-details\">{{ product.description|raw}}</div>
\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t\t{% if product.images.count %}
\t\t\t\t\t\t\t\t\t{% for image in product.images %}
\t\t\t\t\t\t\t\t\t<script>
\t\t\t\t\t\t\t\t\t\timagesArray.push(\"{{image.path}}\");
        \t\t\t\t\t\t\t</script>
\t\t\t\t\t\t\t\t\t{% endfor %}
\t\t\t\t\t\t\t\t\t{% endif %}
\t\t\t\t\t\t\t\t\t<div id=\"gallery{{product.id}}\"></div>
\t\t\t\t\t\t\t\t\t{% if product.video %}
\t\t\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t\t\t<iframe width=\"100%\" height=\"360\" src=\"{{str_replace_first('youtu.be', 'www.youtube.com/embed', product.video)}}?rel=0&amp;autoplay=1\" frameborder=\"0\" allowfullscreen></iframe>

\t\t\t\t\t\t\t\t {% endif %}\t\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t <div class=\"clear\"></div>
\t\t\t\t\t\t\t\t 
\t\t\t</div>
\t\t\t<div class=\"col-md-4\">
\t\t\t\t<div class=\"sidebar-right\">
\t\t\t\t\t<div class=\"wgs-box wgs-search\">
\t\t\t\t\t\t<div class=\"wgs-content\">
\t\t\t\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" placeholder=\"Search...\">
\t\t\t\t\t\t\t\t<button class=\"search-btn\"><i class=\"fa fa-search\" aria-hidden=\"true\"></i></button>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"wgs-box wgs-recents\">
\t\t\t\t\t\t<h3 class=\"wgs-heading\">Recent Posts</h3>
\t\t\t\t\t\t<div class=\"wgs-content\">
\t\t\t\t\t\t\t<ul class=\"blog-recent\">
\t\t\t\t\t\t\t\t{% for product in products %}
\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t\t<a href=\"san-pham/{{product.slug}}\">
\t\t\t\t\t\t\t\t\t\t{% if product.images.count %}
\t\t\t\t\t\t\t\t\t\t{% for image in product.images|slice(0, 1) %}
\t\t\t\t\t\t\t\t\t\t<img data-src=\"{{ image.filename }}\"
\t\t\t\t\t\t\t\t\t\tsrc=\"{{ image.path }}\"
\t\t\t\t\t\t\t\t\t\ttitle=\"{{ product.title }}\"
\t\t\t\t\t\t\t\t\t\talt=\"{{ product.title }}\"/>
\t\t\t\t\t\t\t\t\t\t{% endfor %}
\t\t\t\t\t\t\t\t\t\t{% else %}
\t\t\t\t\t\t\t\t\t\t<img src=\"{{ 'assets/nhakho/image/logo.png'|theme }}\" title=\"{{ product.title }}\" alt=\"{{ product.title }}\"/>
\t\t\t\t\t\t\t\t\t\t{% endif %}
\t\t\t\t\t\t\t\t\t\t<h2 class=\"products-title-list\">{{product.title}}</h2>
\t\t\t\t\t\t\t\t\t\t{% for category in product.categories %}
\t\t\t\t\t\t\t\t\t\t<a href=\"{{ category.url }}\">{{ category.title }}</a>
\t\t\t\t\t\t\t\t\t\t{% if not loop.last %},
\t\t\t\t\t\t\t\t\t\t{% endif %}
\t\t\t\t\t\t\t\t\t\t{% endfor %}
\t\t\t\t\t\t\t\t\t\t<p>{{ product.excerpt|striptags[:100] ~ '...' }}</p>
\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t{% endfor %}
\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t\t
\t\t\t</div>
\t\t</div>
\t</div>
</div>
<script>
            \$(function() {
  \t\t\t\t\t\$('#gallery{{product.id}}').imagesGrid({
                    \timages: imagesArray,align: true
                \t});
                
            });
    </script>", "/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/san-pham.htm", "");
    }
}
