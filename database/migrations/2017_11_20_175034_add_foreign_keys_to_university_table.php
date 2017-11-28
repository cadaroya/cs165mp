<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToUniversityTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('university', function(Blueprint $table)
		{
			$table->foreign('location_id', 'university_ibfk_1')->references('location_id')->on('location')->onUpdate('CASCADE')->onDelete('CASCADE');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('university', function(Blueprint $table)
		{
			$table->dropForeign('university_ibfk_1');
		});
	}

}
