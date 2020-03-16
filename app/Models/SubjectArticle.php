<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class SubjectArticle
 * 
 * @property int $id
 * @property int $subject_id
 * @property int $article_id
 *
 * @package App\Models
 */
class SubjectArticle extends Model
{
	protected $table = 'subject_articles';
	public $timestamps = false;

	protected $casts = [
		'subject_id' => 'int',
		'article_id' => 'int'
	];

	protected $fillable = [
		'subject_id',
		'article_id'
	];
}
