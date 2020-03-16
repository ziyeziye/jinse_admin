<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Follow
 * 
 * @property int $id
 * @property int $user_id
 * @property int $r_id
 * @property Carbon $create_time
 * @property Carbon $update_time
 * @property bool $type
 *
 * @package App\Models
 */
class Follow extends Model
{
	protected $table = 'follows';
	public $timestamps = false;

	protected $casts = [
		'user_id' => 'int',
		'r_id' => 'int',
		'type' => 'bool'
	];

	protected $dates = [
		'create_time',
		'update_time'
	];

	protected $fillable = [
		'user_id',
		'r_id',
		'create_time',
		'update_time',
		'type'
	];
}
