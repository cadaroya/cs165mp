<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 20 Nov 2017 18:38:00 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class ScholarshipUniversity
 * 
 * @property int $sid
 * @property int $uid
 * 
 * @property \App\Models\Scholarship $scholarship
 * @property \App\Models\University $university
 *
 * @package App\Models
 */
class ScholarshipUniversity extends Eloquent
{
	protected $table = 'scholarship_university';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'sid' => 'int',
		'uid' => 'int'
	];

	public function scholarship()
	{
		return $this->belongsTo(\App\Models\Scholarship::class, 'sid');
	}

	public function university()
	{
		return $this->belongsTo(\App\Models\University::class, 'uid');
	}
}
