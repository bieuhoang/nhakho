<?php namespace Xeor\OctoCart\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateXeorOctocartProducts2 extends Migration
{
    public function up()
    {
        Schema::table('xeor_octocart_products', function($table)
        {
            $table->string('thuonghieu', 100)->nullable();
            $table->string('namsx', 100)->nullable();
            $table->text('mota')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('xeor_octocart_products', function($table)
        {
            $table->dropColumn('thuonghieu');
            $table->dropColumn('namsx');
            $table->dropColumn('mota');
        });
    }
}
