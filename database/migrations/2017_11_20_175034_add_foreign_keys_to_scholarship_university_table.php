<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToScholarshipUniversityTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('scholarship_university', function(Blueprint $table)
		{
			$table->foreign('sid', 'scholarship_university_ibfk_1')->references('sid')->on('scholarship')->onUpdate('CASCADE')->onDelete('CASCADE');
			$table->foreign('uid', 'scholarship_university_ibfk_2')->references('uid')->on('university')->onUpdate('CASCADE')->onDelete('CASCADE');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('scholarship_university', function(Blueprint $table)
		{
			$table->dropForeign('scholarship_university_ibfk_1');
			$table->dropForeign('scholarship_university_ibfk_2');
		});
	}

}
