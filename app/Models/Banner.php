<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Banner
 * 
 * @property int $id
 * @property string $name
 * @property string $cover
 * @property string $href
 * @property int $r_id
 * @property bool $type
 *
 * @package App\Models
 */
class Banner extends Model
{
	protected $table = 'banners';
	public $timestamps = false;

	protected $casts = [
		'r_id' => 'int',
		'type' => 'bool'
	];

	protected $fillable = [
		'name',
		'cover',
		'href',
		'r_id',
		'type'
	];
}
