<?php

/* /Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/404.htm */
class __TwigTemplate_5b82d83b532fa8518df31638546b4707febe08b1698bed359052972ffd016da3 extends Twig_Template
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
        echo "<div class=\"jumbotron\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-xs-2 text-center\">
                <br />
                <img src=\"";
        // line 6
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/nhakho/image/icon.png");
        echo "\" alt=\"\">
            </div>
            <div class=\"col-xs-10\">
                <h1>Nội dung chưa hoàn thiện...</h1>
                <p>Đội ngũ Nhà kho đang cập nhật nội dung trang này</p>
                <p>Thành thật xin lỗi Quý khách về sự bất tiện.</p>
                <p><small><em>Vui lòng liên hệ Nhà kho 0888001500, Hoặc<a href=\"";
        // line 12
        echo url("");
        echo "\"> bấm vào đây</a> để trở về trang chủ</em></small>
            </div>
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
        return array (  39 => 12,  30 => 6,  23 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"jumbotron\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-xs-2 text-center\">
                <br />
                <img src=\"{{ 'assets/nhakho/image/icon.png'|theme }}\" alt=\"\">
            </div>
            <div class=\"col-xs-10\">
                <h1>Nội dung chưa hoàn thiện...</h1>
                <p>Đội ngũ Nhà kho đang cập nhật nội dung trang này</p>
                <p>Thành thật xin lỗi Quý khách về sự bất tiện.</p>
                <p><small><em>Vui lòng liên hệ Nhà kho 0888001500, Hoặc<a href=\"{{ url('') }}\"> bấm vào đây</a> để trở về trang chủ</em></small>
            </div>
        </div>
    </div>
</div>", "/Users/nhakho/www/nhakho.vn/themes/responsiv-flat/pages/404.htm", "");
    }
}
