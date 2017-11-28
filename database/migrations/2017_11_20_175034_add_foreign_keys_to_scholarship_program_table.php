<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToScholarshipProgramTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('scholarship_program', function(Blueprint $table)
		{
			$table->foreign('sid', 'scholarship_program_ibfk_1')->references('sid')->on('scholarship')->onUpdate('CASCADE')->onDelete('CASCADE');
			$table->foreign('pid', 'scholarship_program_ibfk_2')->references('pid')->on('program')->onUpdate('CASCADE')->onDelete('CASCADE');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('scholarship_program', function(Blueprint $table)
		{
			$table->dropForeign('scholarship_program_ibfk_1');
			$table->dropForeign('scholarship_program_ibfk_2');
		});
	}

}
