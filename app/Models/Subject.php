<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Subject
 * 
 * @property int $id
 * @property int $user_id
 * @property string $name
 * @property string $cover
 * @property string $content
 * @property Carbon $create_time
 * @property Carbon $update_time
 *
 * @package App\Models
 */
class Subject extends Model
{
	protected $table = 'subjects';
	public $timestamps = false;

	protected $casts = [
		'user_id' => 'int'
	];

	protected $dates = [
		'create_time',
		'update_time'
	];

	protected $fillable = [
		'user_id',
		'name',
		'cover',
		'content',
		'create_time',
		'update_time'
	];
}
