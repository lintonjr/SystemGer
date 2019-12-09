<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class InsertModelsOnModels extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('models', function (Blueprint $table) {
            DB::table('models')->insert([
               ['name' => 'GS'],
               ['name' => 'K0M'],
               ['name' => 'K31'],
               ['name' => 'K36'],
               ['name' => 'K53'],
               ['name' => 'K62'],
               ['name' => 'K65'],
               ['name' => 'K68'],
               ['name' => 'K78'],
               ['name' => 'K80'],
               ['name' => 'K97'],
               ['name' => 'K99'],
               ['name' => 'KPE'],
               ['name' => 'KPS'],
               ['name' => 'KPT'],
               ['name' => 'KRE'],
               ['name' => 'KSS'],
               ['name' => 'KVS'],
               ['name' => 'KWG'],
               ['name' => 'KWT'],
               ['name' => 'MJE'],
               ['name' => 'MJP'],
               ['name' => 'MJW'],
               ['name' => 'MKA'],
               ['name' => 'MKJ'],
               ['name' => 'MKK'],
               ['name' => 'HR3'],
               ['name' => 'K0W'],
               ['name' => 'K1H'],
               ['name' => 'K1S'],
               ['name' => 'MKN'],
               ['name' => 'MKP'],
               ['name' => 'YBA'],
               ['name' => 'YBB'],
               ['name' => 'YBC'],
               ['name' => 'Z1T'],
               ['name' => 'ZCW'],      
           ]);
       });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
