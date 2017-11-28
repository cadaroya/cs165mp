<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 20 Nov 2017 18:38:00 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class University
 * 
 * @property int $uid
 * @property string $uname
 * @property int $location_id
 * 
 * @property \App\Models\Location $location
 * @property \Illuminate\Database\Eloquent\Collection $programs
 * @property \Illuminate\Database\Eloquent\Collection $scholarships
 *
 * @package App\Models
 */
class University extends Eloquent
{
	protected $table = 'university';
	protected $primaryKey = 'uid';
	public $timestamps = false;

	protected $casts = [
		'location_id' => 'int'
	];

	protected $fillable = [
		'uname',
		'location_id'
	];

	public function location()
	{
		return $this->belongsTo(\App\Models\Location::class);
	}

	public function programs()
	{
		return $this->hasMany(\App\Models\Program::class, 'uid');
	}

	public function scholarships()
	{
		return $this->belongsToMany(\App\Models\Scholarship::class, 'scholarship_university', 'uid', 'sid');
	}
}
