<?php namespace Xeor\OctoCart\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateXeorOctocartProducts4 extends Migration
{
    public function up()
    {
        Schema::table('xeor_octocart_products', function($table)
        {
            $table->string('ma', 200)->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('xeor_octocart_products', function($table)
        {
            $table->dropColumn('ma');
        });
    }
}
