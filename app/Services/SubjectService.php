<?php

namespace App\Services;

use App\Models\Subject;

class SubjectService extends BaseService
{
    public function __construct()
    {
        parent::__construct(new Subject());
    }

    private static $_object = null;

    public static function instance()
    {
        if (empty(self::$_object)) {
            self::$_object = new SubjectService(); //内部方法可以调用私有方法，因此这里可以创建对象
        }
        return self::$_object;
    }

}
