<?php

/* /var/www/nhakho.vn/themes/responsiv-flat/pages/san-pham.htm */
class __TwigTemplate_fa75761b736914d6ffe6cedb5715b783a5b49c6a4c187552cf35e71b4a33a7ac extends Twig_Template
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
<div class=\"section section-blog section-pad\">
\t<div class=\"container\">
\t\t<div class=\"content row\">
\t\t\t<div class=\"col-md-8 res-m-bttm\">
\t\t\t\t<h2>";
        // line 6
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "title", array()), "html", null, true);
        echo "</h2>
\t\t\t\t<i class=\"price\">";
        // line 7
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "price", array()), "html", null, true);
        echo "</i>
\t\t\t\t<i class=\"price\">";
        // line 8
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "xuatxu", array()), "html", null, true);
        echo "</i>
\t\t\t\t<div class=\"row\">
\t\t\t\t\t<!-- Gallery -->
\t\t\t\t\t<div class=\"gallery gallery-col4 gallery-filled gallery-lightbox hover-zoom\">
\t\t\t\t\t\t<ul class=\"gallery-list\">
\t\t\t\t\t\t\t";
        // line 13
        if (twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "video", array())) {
            // line 14
            echo "\t\t\t\t\t\t";
            $context["url"] = twig_replace_filter(twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "video", array()), array("youtu.be" => "youtube.com/embed"));
            // line 15
            echo "<li><iframe width=\"100%\"
src=\"";
            // line 16
            echo twig_escape_filter($this->env, ($context["url"] ?? null), "html", null, true);
            echo "\">
</iframe>
</li>
\t\t\t\t";
        }
        // line 20
        echo "

\t\t\t\t\t\t\t";
        // line 22
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "images", array()), "count", array())) {
            // line 23
            echo "\t\t\t\t\t\t\t";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["product"] ?? null), "images", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                // line 24
                echo "\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t<a href=\"";
                // line 25
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "path", array()), "html", null, true);
                echo "\">
\t\t\t\t\t\t\t\t\t<div class=\"gallery-item\"><img src=\"";
                // line 26
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "path", array()), "html", null, true);
                echo "\" alt=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "filename", array()), "html", null, true);
                echo "\"></div>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 30
            echo "\t\t\t\t\t\t\t";
        } else {
            // line 31
            echo "\t\t\t\t\t\t\t";
        }
        // line 32
        echo "\t\t\t\t\t\t</ul>
\t\t\t\t</div>
\t\t\t\t</div>
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
        // line 50
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
            // line 51
            echo "\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t\t<a href=\"san-pham/";
            // line 52
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "slug", array()), "html", null, true);
            echo "\">
\t\t\t\t\t\t\t\t\t\t";
            // line 53
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["product"], "images", array()), "count", array())) {
                // line 54
                echo "\t\t\t\t\t\t\t\t\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_slice($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "images", array()), 0, 1));
                foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                    // line 55
                    echo "\t\t\t\t\t\t\t\t\t\t<img data-src=\"";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "filename", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\t\tsrc=\"";
                    // line 56
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "path", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\t\ttitle=\"";
                    // line 57
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\t\talt=\"";
                    // line 58
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
                    echo "\"/>
\t\t\t\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 60
                echo "\t\t\t\t\t\t\t\t\t\t";
            } else {
                // line 61
                echo "\t\t\t\t\t\t\t\t\t\t<img src=\"";
                echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/logo.png");
                echo "\" title=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
                echo "\" alt=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
                echo "\"/>
\t\t\t\t\t\t\t\t\t\t";
            }
            // line 63
            echo "\t\t\t\t\t\t\t\t\t\t<h2 class=\"products-title-list\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["product"], "title", array()), "html", null, true);
            echo "</h2>
\t\t\t\t\t\t\t\t\t\t";
            // line 64
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
                // line 65
                echo "\t\t\t\t\t\t\t\t\t\t<a href=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "url", array()), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "title", array()), "html", null, true);
                echo "</a>
\t\t\t\t\t\t\t\t\t\t";
                // line 66
                if ( !twig_get_attribute($this->env, $this->source, $context["loop"], "last", array())) {
                    echo ",
\t\t\t\t\t\t\t\t\t\t";
                }
                // line 68
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
            // line 69
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
        // line 73
        echo "\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t\t
\t\t\t</div>
\t\t</div>
\t</div>
</div>";
    }

    public function getTemplateName()
    {
        return "/var/www/nhakho.vn/themes/responsiv-flat/pages/san-pham.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  228 => 73,  217 => 69,  203 => 68,  198 => 66,  191 => 65,  174 => 64,  169 => 63,  159 => 61,  156 => 60,  148 => 58,  144 => 57,  140 => 56,  135 => 55,  130 => 54,  128 => 53,  124 => 52,  121 => 51,  117 => 50,  97 => 32,  94 => 31,  91 => 30,  79 => 26,  75 => 25,  72 => 24,  67 => 23,  65 => 22,  61 => 20,  54 => 16,  51 => 15,  48 => 14,  46 => 13,  38 => 8,  34 => 7,  30 => 6,  23 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("<!-- Content -->
<div class=\"section section-blog section-pad\">
\t<div class=\"container\">
\t\t<div class=\"content row\">
\t\t\t<div class=\"col-md-8 res-m-bttm\">
\t\t\t\t<h2>{{product.title}}</h2>
\t\t\t\t<i class=\"price\">{{product.price}}</i>
\t\t\t\t<i class=\"price\">{{product.xuatxu}}</i>
\t\t\t\t<div class=\"row\">
\t\t\t\t\t<!-- Gallery -->
\t\t\t\t\t<div class=\"gallery gallery-col4 gallery-filled gallery-lightbox hover-zoom\">
\t\t\t\t\t\t<ul class=\"gallery-list\">
\t\t\t\t\t\t\t{%if product.video%}
\t\t\t\t\t\t{%set url=product.video |replace({'youtu.be': 'youtube.com/embed'})%}
<li><iframe width=\"100%\"
src=\"{{url}}\">
</iframe>
</li>
\t\t\t\t{%endif%}


\t\t\t\t\t\t\t{% if product.images.count %}
\t\t\t\t\t\t\t{% for image in product.images %}
\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t<a href=\"{{ image.path }}\">
\t\t\t\t\t\t\t\t\t<div class=\"gallery-item\"><img src=\"{{ image.path }}\" alt=\"{{ image.filename }}\"></div>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t{% endfor %}
\t\t\t\t\t\t\t{% else %}
\t\t\t\t\t\t\t{% endif %}
\t\t\t\t\t\t</ul>
\t\t\t\t</div>
\t\t\t\t</div>
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
</div>", "/var/www/nhakho.vn/themes/responsiv-flat/pages/san-pham.htm", "");
    }
}
