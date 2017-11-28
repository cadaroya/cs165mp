<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 20 Nov 2017 18:38:00 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Program
 * 
 * @property int $pid
 * @property int $uid
 * @property string $pname
 * @property string $field
 * 
 * @property \App\Models\University $university
 * @property \Illuminate\Database\Eloquent\Collection $scholarships
 *
 * @package App\Models
 */
class Program extends Eloquent
{
	protected $table = 'program';
	public $timestamps = false;

	protected $casts = [
		'uid' => 'int'
	];

	protected $fillable = [
		'pname',
		'field'
	];

	public function university()
	{
		return $this->belongsTo(\App\Models\University::class, 'uid');
	}

	public function scholarships()
	{
		return $this->belongsToMany(\App\Models\Scholarship::class, 'scholarship_program', 'pid', 'sid')
					->withPivot('spid', 'field');
	}
}
