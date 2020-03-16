<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Fdf
 * 
 * @property int $id
 * @property string $name
 * @property string $size
 * @property string $group_name
 * @property string $fast_file_id
 * @property int $type
 * @property int $document_type
 * @property int $create_id
 * @property Carbon $create_time
 * @property string $url
 *
 * @package App\Models
 */
class Fdf extends Model
{
	protected $table = 'fdfs';
	public $timestamps = false;

	protected $casts = [
		'type' => 'int',
		'document_type' => 'int',
		'create_id' => 'int'
	];

	protected $dates = [
		'create_time'
	];

	protected $fillable = [
		'name',
		'size',
		'group_name',
		'fast_file_id',
		'type',
		'document_type',
		'create_id',
		'create_time',
		'url'
	];
}
