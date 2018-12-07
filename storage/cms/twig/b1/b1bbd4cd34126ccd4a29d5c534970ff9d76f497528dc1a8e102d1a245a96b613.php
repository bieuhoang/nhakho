<?php

/* /Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/404.htm */
class __TwigTemplate_42cb8cea25e6312fff5093744540b23efec8cc9d5605a2c5c561a4f770cff64b extends Twig_Template
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
        echo "<div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-2 text-center\">
                <br />
                <img src=\"";
        // line 5
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/icon.png");
        echo "\" alt=\"\">
            </div>
            <div class=\"col-md-10\" style=\"font-size: 24px;\">
                <h1>Nội dung chưa hoàn thiện...</h1>
                <p>Đội ngũ Nhà kho đang cập nhật nội dung trang này</p>
                <p>Thành thật xin lỗi Quý khách về sự bất tiện.</p>
                <p><small><em>Vui lòng liên hệ Nhà kho 0888001500, Hoặc<a href=\"";
        // line 11
        echo url("");
        echo "\"> bấm vào đây</a> để trở về trang chủ</em></small>
            </div>
        </div>
    </div>";
    }

    public function getTemplateName()
    {
        return "/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/404.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  38 => 11,  29 => 5,  23 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-2 text-center\">
                <br />
                <img src=\"{{ 'assets/nhakho/image/icon.png'|theme }}\" alt=\"\">
            </div>
            <div class=\"col-md-10\" style=\"font-size: 24px;\">
                <h1>Nội dung chưa hoàn thiện...</h1>
                <p>Đội ngũ Nhà kho đang cập nhật nội dung trang này</p>
                <p>Thành thật xin lỗi Quý khách về sự bất tiện.</p>
                <p><small><em>Vui lòng liên hệ Nhà kho 0888001500, Hoặc<a href=\"{{ url('') }}\"> bấm vào đây</a> để trở về trang chủ</em></small>
            </div>
        </div>
    </div>", "/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/404.htm", "");
    }
}
