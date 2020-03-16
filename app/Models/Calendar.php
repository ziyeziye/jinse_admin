<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Calendar
 * 
 * @property int $id
 * @property int $r_id
 * @property bool $rate
 * @property int $good
 * @property int $bad
 * @property int $coin_id
 * @property Carbon $create_time
 * @property Carbon $update_time
 * @property int $type
 *
 * @package App\Models
 */
class Calendar extends Model
{
	protected $table = 'calendars';
	public $timestamps = false;

	protected $casts = [
		'r_id' => 'int',
		'rate' => 'bool',
		'good' => 'int',
		'bad' => 'int',
		'coin_id' => 'int',
		'type' => 'int'
	];

	protected $dates = [
		'create_time',
		'update_time'
	];

	protected $fillable = [
		'r_id',
		'rate',
		'good',
		'bad',
		'coin_id',
		'create_time',
		'update_time',
		'type'
	];
}
