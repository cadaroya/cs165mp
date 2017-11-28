<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToProgramTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('program', function(Blueprint $table)
		{
			$table->foreign('uid', 'program_ibfk_1')->references('uid')->on('university')->onUpdate('CASCADE')->onDelete('CASCADE');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('program', function(Blueprint $table)
		{
			$table->dropForeign('program_ibfk_1');
		});
	}

}
