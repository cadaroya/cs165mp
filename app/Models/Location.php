<?php

/**
 * Created by Reliese Model.
 * Date: Mon, 20 Nov 2017 18:38:00 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Location
 * 
 * @property int $location_id
 * @property string $country
 * @property string $region
 * @property string $province
 * @property string $city
 * 
 * @property \Illuminate\Database\Eloquent\Collection $universities
 *
 * @package App\Models
 */
class Location extends Eloquent
{
	protected $table = 'location';
	protected $primaryKey = 'location_id';
	public $timestamps = false;

	protected $fillable = [
		'country',
		'region',
		'province',
		'city'
	];

	public function universities()
	{
		return $this->hasMany(\App\Models\University::class);
	}
}
