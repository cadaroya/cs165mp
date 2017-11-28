<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 20 Nov 2017 18:38:00 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class ScholarshipProgram
 * 
 * @property int $spid
 * @property int $sid
 * @property int $pid
 * @property string $field
 * 
 * @property \App\Models\Scholarship $scholarship
 * @property \App\Models\Program $program
 *
 * @package App\Models
 */
class ScholarshipProgram extends Eloquent
{
	protected $table = 'scholarship_program';
	protected $primaryKey = 'spid';
	public $timestamps = false;

	protected $casts = [
		'sid' => 'int',
		'pid' => 'int'
	];

	protected $fillable = [
		'sid',
		'pid',
		'field'
	];

	public function scholarship()
	{
		return $this->belongsTo(\App\Models\Scholarship::class, 'sid');
	}

	public function program()
	{
		return $this->belongsTo(\App\Models\Program::class, 'pid');
	}
}
