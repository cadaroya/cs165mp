<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateScholarshipProgramTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('scholarship_program', function(Blueprint $table)
		{
			$table->integer('spid', true);
			$table->integer('sid')->nullable()->index('sid');
			$table->integer('pid')->nullable()->index('pid');
			$table->string('field', 50)->nullable();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('scholarship_program');
	}

}
