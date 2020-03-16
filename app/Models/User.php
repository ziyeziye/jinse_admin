<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class User
 * 
 * @property int $id
 * @property string $nick_name
 * @property string $phone
 * @property int $verify_id
 * @property Carbon $create_time
 * @property Carbon $update_time
 * @property string $avatar
 * @property string $data
 * @property string $username
 * @property int $invite_uid
 * @property int $status
 * @property string $salt
 * @property string $reg_ip
 *
 * @package App\Models
 */
class User extends Model
{
	protected $table = 'users';
	public $timestamps = false;

	protected $casts = [
		'verify_id' => 'int',
		'invite_uid' => 'int',
		'status' => 'int'
	];

	protected $dates = [
		'create_time',
		'update_time'
	];

	protected $fillable = [
		'nick_name',
		'phone',
		'verify_id',
		'create_time',
		'update_time',
		'avatar',
		'data',
		'username',
		'invite_uid',
		'status',
		'salt',
		'reg_ip'
	];
}
