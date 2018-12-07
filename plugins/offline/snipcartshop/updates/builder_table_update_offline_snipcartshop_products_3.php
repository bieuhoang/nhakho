<?php namespace OFFLINE\SnipcartShop\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateOfflineSnipcartshopProducts3 extends Migration
{
    public function up()
    {
        Schema::table('offline_snipcartshop_products', function($table)
        {
            $table->integer('gong')->nullable();
            $table->integer('bua')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('offline_snipcartshop_products', function($table)
        {
            $table->dropColumn('gong');
            $table->dropColumn('bua');
        });
    }
}
