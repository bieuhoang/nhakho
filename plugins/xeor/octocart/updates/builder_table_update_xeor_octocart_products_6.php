<?php namespace Xeor\OctoCart\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateXeorOctocartProducts6 extends Migration
{
    public function up()
    {
        Schema::table('xeor_octocart_products', function($table)
        {
            $table->integer('price')->nullable()->unsigned(false)->default(0)->change();
        });
    }
    
    public function down()
    {
        Schema::table('xeor_octocart_products', function($table)
        {
            $table->decimal('price', 7, 2)->nullable(false)->unsigned(false)->default(0.00)->change();
        });
    }
}
