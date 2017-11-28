<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToScholarshipTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('scholarship', function(Blueprint $table)
		{
			$table->foreign('cid', 'scholarship_ibfk_1')->references('cid')->on('company')->onUpdate('CASCADE')->onDelete('CASCADE');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('scholarship', function(Blueprint $table)
		{
			$table->dropForeign('scholarship_ibfk_1');
		});
	}

}
