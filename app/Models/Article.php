<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Article
 *
 * @property int $id
 * @property int $user_id
 * @property string $name
 * @property string $cover
 * @property string $content
 * @property int $number
 * @property Carbon $create_time
 * @property Carbon $update_time
 * @property int $coin_id
 * @property string $tags
 * @property int $good
 * @property int $bad
 * @property int $category_id
 * @property string $video
 * @property bool $type
 * @property int $zan
 *
 * @package App\Models
 */
class Article extends Model
{
	protected $table = 'articles';
	public $timestamps = false;

	protected $casts = [
		'user_id' => 'int',
		'number' => 'int',
		'coin_id' => 'int',
		'good' => 'int',
		'bad' => 'int',
		'category_id' => 'int',
		'zan' => 'int'
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
		'number',
		'create_time',
		'update_time',
		'coin_id',
		'tags',
		'good',
		'bad',
		'category_id',
		'video',
		'type',
		'zan'
	];
}
