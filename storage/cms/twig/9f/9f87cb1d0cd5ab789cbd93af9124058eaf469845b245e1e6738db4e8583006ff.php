<?php

/* /var/www/nhakho.vn/themes/responsiv-flat/pages/sua-chua-djong-ho-co.htm */
class __TwigTemplate_733162a317607922f28e24874bfa3ee8172c509f2b8f31fdbb6ba21691215efc extends Twig_Template
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
        echo "<div class=\"section section-services section-pad\">
\t    <div class=\"container\">
\t        <div class=\"content row\">
\t\t\t\t
\t        \t<!-- Feature Row  -->
\t\t\t\t<div class=\"row row-feature row-column mt-x5\">

\t\t\t\t\t";
        // line 8
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["blogPost"]) {
            // line 9
            echo "
\t\t\t
\t\t\t\t\t<div class=\"col-md-4 col-sm-6\" style=\"height: 650px;overflow: auto;\">
\t\t\t\t\t\t<!-- feature box -->
\t\t\t\t\t\t<div class=\"feature boxed feature-s6\">
\t\t\t\t\t\t\t<a href=\"san-pham/";
            // line 14
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["blogPost"], "slug", array()), "html", null, true);
            echo "\">
\t\t\t\t\t\t\t\t<div class=\"fbox-photo\">
\t\t\t\t\t\t\t\t\t";
            // line 16
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["blogPost"], "images", array()), "count", array())) {
                // line 17
                echo "\t\t\t\t\t\t\t\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_slice($this->env, twig_get_attribute($this->env, $this->source, $context["blogPost"], "images", array()), 0, 1));
                foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                    // line 18
                    echo "\t\t\t\t\t\t\t\t\t<img data-src=\"";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "filename", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\tsrc=\"";
                    // line 19
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "path", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\ttitle=\"";
                    // line 20
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["blogPost"], "title", array()), "html", null, true);
                    echo "\"
\t\t\t\t\t\t\t\t\talt=\"";
                    // line 21
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["blogPost"], "title", array()), "html", null, true);
                    echo "\"/>
\t\t\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 23
                echo "\t\t\t\t\t\t\t\t\t";
            } else {
                // line 24
                echo "
\t\t\t\t\t\t\t\t\t<img src=\"";
                // line 25
                echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/logo.png");
                echo "\" title=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["blogPost"], "title", array()), "html", null, true);
                echo "\" alt=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["blogPost"], "title", array()), "html", null, true);
                echo "\"/>
\t\t\t\t\t\t\t\t\t";
            }
            // line 27
            echo "\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t
\t\t\t\t\t\t\t<div class=\"fbox-content\">
\t\t\t\t\t\t\t\t<h3>";
            // line 30
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["blogPost"], "title", array()), "html", null, true);
            echo "</h3>
\t\t\t\t\t\t\t\t<i class=\"price\">";
            // line 31
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["blogPost"], "price", array()), "html", null, true);
            echo "</i>
\t\t\t\t\t\t\t\t";
            // line 32
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["blogPost"], "categories", array()));
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
                // line 33
                echo "\t\t\t\t\t\t\t\t\t\t<a href=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "url", array()), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "title", array()), "html", null, true);
                echo "</a>
\t\t\t\t\t\t\t\t\t\t";
                // line 34
                if ( !twig_get_attribute($this->env, $this->source, $context["loop"], "last", array())) {
                    echo ",
\t\t\t\t\t\t\t\t\t\t";
                }
                // line 36
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
            // line 37
            echo "\t\t\t\t\t\t\t\t<p>";
            echo twig_escape_filter($this->env, (twig_slice($this->env, strip_tags(twig_get_attribute($this->env, $this->source, $context["blogPost"], "excerpt", array())), 0, 100) . "..."), "html", null, true);
            echo "</p>
\t\t\t\t\t\t\t\t<p><a href=\"san-pham/";
            // line 38
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["blogPost"], "slug", array()), "html", null, true);
            echo "\" class=\"btn-link link-arrow-sm\">Xem thêm</a></p>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<!-- End Feature box -->
\t\t\t\t\t</div>



\t\t

\t\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['blogPost'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 50
        echo "


\t\t\t\t\t
\t\t\t\t</div>
\t\t\t\t<!-- Feture Row  #end -->
\t        \t<div class=\"gaps size-lg\"></div>
\t        \t<div class=\"wide-md center\">
\t        \t\t<p class=\"lead\">We Provide <strong>24/7 Emergency</strong> Service, please call us at 800-123-4567.<br>We're here for you any plumbing / installation / replacement.</p>
\t        \t</div>

\t        </div>
\t    </div>
\t</div>";
    }

    public function getTemplateName()
    {
        return "/var/www/nhakho.vn/themes/responsiv-flat/pages/sua-chua-djong-ho-co.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  170 => 50,  152 => 38,  147 => 37,  133 => 36,  128 => 34,  121 => 33,  104 => 32,  100 => 31,  96 => 30,  91 => 27,  82 => 25,  79 => 24,  76 => 23,  68 => 21,  64 => 20,  60 => 19,  55 => 18,  50 => 17,  48 => 16,  43 => 14,  36 => 9,  32 => 8,  23 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"section section-services section-pad\">
\t    <div class=\"container\">
\t        <div class=\"content row\">
\t\t\t\t
\t        \t<!-- Feature Row  -->
\t\t\t\t<div class=\"row row-feature row-column mt-x5\">

\t\t\t\t\t{% for blogPost in posts %}

\t\t\t
\t\t\t\t\t<div class=\"col-md-4 col-sm-6\" style=\"height: 650px;overflow: auto;\">
\t\t\t\t\t\t<!-- feature box -->
\t\t\t\t\t\t<div class=\"feature boxed feature-s6\">
\t\t\t\t\t\t\t<a href=\"san-pham/{{blogPost.slug}}\">
\t\t\t\t\t\t\t\t<div class=\"fbox-photo\">
\t\t\t\t\t\t\t\t\t{% if blogPost.images.count %}
\t\t\t\t\t\t\t\t\t{% for image in blogPost.images|slice(0, 1) %}
\t\t\t\t\t\t\t\t\t<img data-src=\"{{ image.filename }}\"
\t\t\t\t\t\t\t\t\tsrc=\"{{ image.path }}\"
\t\t\t\t\t\t\t\t\ttitle=\"{{ blogPost.title }}\"
\t\t\t\t\t\t\t\t\talt=\"{{ blogPost.title }}\"/>
\t\t\t\t\t\t\t\t\t{% endfor %}
\t\t\t\t\t\t\t\t\t{% else %}

\t\t\t\t\t\t\t\t\t<img src=\"{{ 'assets/nhakho/image/logo.png'|theme }}\" title=\"{{ blogPost.title }}\" alt=\"{{ blogPost.title }}\"/>
\t\t\t\t\t\t\t\t\t{% endif %}
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t
\t\t\t\t\t\t\t<div class=\"fbox-content\">
\t\t\t\t\t\t\t\t<h3>{{blogPost.title}}</h3>
\t\t\t\t\t\t\t\t<i class=\"price\">{{blogPost.price}}</i>
\t\t\t\t\t\t\t\t{% for category in blogPost.categories %}
\t\t\t\t\t\t\t\t\t\t<a href=\"{{ category.url }}\">{{ category.title }}</a>
\t\t\t\t\t\t\t\t\t\t{% if not loop.last %},
\t\t\t\t\t\t\t\t\t\t{% endif %}
\t\t\t\t\t\t\t\t\t\t{% endfor %}
\t\t\t\t\t\t\t\t<p>{{ blogPost.excerpt|striptags[:100] ~ '...' }}</p>
\t\t\t\t\t\t\t\t<p><a href=\"san-pham/{{blogPost.slug}}\" class=\"btn-link link-arrow-sm\">Xem thêm</a></p>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<!-- End Feature box -->
\t\t\t\t\t</div>



\t\t

\t\t\t\t\t\t\t\t{% endfor %}



\t\t\t\t\t
\t\t\t\t</div>
\t\t\t\t<!-- Feture Row  #end -->
\t        \t<div class=\"gaps size-lg\"></div>
\t        \t<div class=\"wide-md center\">
\t        \t\t<p class=\"lead\">We Provide <strong>24/7 Emergency</strong> Service, please call us at 800-123-4567.<br>We're here for you any plumbing / installation / replacement.</p>
\t        \t</div>

\t        </div>
\t    </div>
\t</div>", "/var/www/nhakho.vn/themes/responsiv-flat/pages/sua-chua-djong-ho-co.htm", "");
    }
}
