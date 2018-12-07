<?php namespace OFFLINE\SnipcartShop\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateOfflineSnipcartshopProducts2 extends Migration
{
    public function up()
    {
        Schema::table('offline_snipcartshop_products', function($table)
        {
            $table->string('thuonghieu', 250)->nullable();
            $table->string('video', 250)->nullable();
            $table->string('xuatxu', 250)->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('offline_snipcartshop_products', function($table)
        {
            $table->dropColumn('thuonghieu');
            $table->dropColumn('video');
            $table->dropColumn('xuatxu');
        });
    }
}
