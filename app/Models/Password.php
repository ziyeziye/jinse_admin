<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Password
 * 
 * @property int $id
 * @property string $password
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @package App\Models
 */
class Password extends Model
{
	protected $table = 'password';

	protected $hidden = [
		'password'
	];

	protected $fillable = [
		'password'
	];
}
