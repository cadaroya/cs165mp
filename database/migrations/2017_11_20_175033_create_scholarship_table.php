<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateScholarshipTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('scholarship', function(Blueprint $table)
		{
			$table->integer('sid', true);
			$table->string('sname', 100)->nullable();
			$table->string('sex', 10)->nullable();
			$table->decimal('age', 2, 0)->nullable();
			$table->decimal('year', 4, 0)->nullable();
			$table->decimal('semester', 1, 0)->nullable();
			$table->string('level', 20)->nullable();
			$table->decimal('GWA', 3)->nullable();
			$table->decimal('maxgrade', 3)->nullable();
			$table->integer('cid')->nullable()->index('cid');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('scholarship');
	}

}
