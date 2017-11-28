<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 20 Nov 2017 18:38:00 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Company
 * 
 * @property int $cid
 * @property string $name
 * @property string $address
 * 
 * @property \Illuminate\Database\Eloquent\Collection $scholarships
 *
 * @package App\Models
 */
class Company extends Eloquent
{
	protected $table = 'company';
	protected $primaryKey = 'cid';
	public $timestamps = false;

	protected $fillable = [
		'name',
		'address'
	];

	public function scholarships()
	{
		return $this->hasMany(\App\Models\Scholarship::class, 'cid');
	}
}
