<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 20 Nov 2017 18:38:00 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Scholarship
 * 
 * @property int $sid
 * @property string $sname
 * @property string $sex
 * @property float $age
 * @property float $year
 * @property float $semester
 * @property string $level
 * @property float $GWA
 * @property float $maxgrade
 * @property int $cid
 * 
 * @property \App\Models\Company $company
 * @property \Illuminate\Database\Eloquent\Collection $programs
 * @property \Illuminate\Database\Eloquent\Collection $universities
 *
 * @package App\Models
 */
class Scholarship extends Eloquent
{
	protected $table = 'scholarship';
	protected $primaryKey = 'sid';
	public $timestamps = false;

	protected $casts = [
		'age' => 'float',
		'year' => 'float',
		'semester' => 'float',
		'GWA' => 'float',
		'maxgrade' => 'float',
		'cid' => 'int'
	];

	protected $fillable = [
		'sname',
		'sex',
		'age',
		'year',
		'semester',
		'level',
		'GWA',
		'maxgrade',
		'cid'
	];

	public function company()
	{
		return $this->belongsTo(\App\Models\Company::class, 'cid');
	}

	public function programs()
	{
		return $this->belongsToMany(\App\Models\Program::class, 'scholarship_program', 'sid', 'pid')
					->withPivot('spid', 'field');
	}

	public function universities()
	{
		return $this->belongsToMany(\App\Models\University::class, 'scholarship_university', 'sid', 'uid');
	}
}
