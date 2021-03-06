<?php

namespace App\Http\Controllers;

use App\Services\ArticleService;
use Illuminate\Http\Request;

class ArticleController extends BaseController
{
    protected $service;

    protected function service()
    {
        return ArticleService::instance();
    }

    public function table(Request $request)
    {
        //获取数据
        $page = $request->exists("pageNum") ? get_page() : [null];
        $where = request()->input();
        $where['order_by'] = ["order" => "id", "desc" => "desc"];

        $result = $this->service()->table($where, ...$page);
        return $this->successWithResult($result);
    }

    public function info($id)
    {
        $result = $this->service()->info($id);
        return $this->successWithResult($result);
    }

    private function valid()
    {
        //验证参数
        $check = $this->_valid([
            'name' => 'required',
            'img' => 'required',
            'user_id' => 'required',
        ], [
            'name.required' => '请输入文章标题',
            'img.required' => '请上传封面',
            'user_id.required' => '请选择作者',
        ]);
        if (true !== $check) {
            return $this->errorWithMsg($check, 405);
        }
        return true;
    }

    public function save(Request $request)
    {
        $this->valid();
        $data = [
            "name" => $request->input("name"),
            "img" => $request->input("img"),
            "type" => $request->input("type", 1),
            "content" => $request->input("content", ''),
            "tags" => $request->input("tags", []),
            "video" => $request->input("video", ''),
            "category_id" => $request->input("category_id", 0),
            "user_id" => $request->input("user_id", 0),
        ];

        $result = $this->service()->save($data);
        return $this->successWithResult($result);
    }

    public function update(Request $request, $id)
    {
        //验证参数
        $this->valid();
        $data = [
            "name" => $request->input("name"),
            "img" => $request->input("img"),
            "type" => $request->input("type", 1),
            "content" => $request->input("content", ''),
            "tags" => $request->input("tags", []),
            "video" => $request->input("video", ''),
            "category_id" => $request->input("category_id", 0),
            "user_id" => $request->input("user_id", 0),
        ];

        $result = $this->service()->update($data, $id);
        if (false === $result) {
            return $this->errorWithMsg("修改失败");
        }
        return $this->successWithResult($result);
    }

    public function delete(Request $request)
    {
        $ids = $request->input();
        $result = $this->service()->delete($ids);
        if (false === $result) {
            return $this->errorWithMsg("删除失败");
        }
        return $this->successWithResult($result);
    }

}
