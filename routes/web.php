<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/web/captcha', 'CommonController@getCaptcha')->name('common.captcha');
Route::post('/web/upload', 'CommonController@upload')->name('common.upload@上传图片');

Route::group(['prefix'=>'/api/admin'], function () {
    Route::get('/refresh', "Auth\AdminLoginController@refresh")->name('admin.refresh@刷新token');
    Route::post('/login', 'Auth\AdminLoginController@login')->name('admin.login@登录');
    Route::post('/logout', 'Auth\AdminLoginController@logout')->name('admin.logout@退出登录');

    Route::middleware(['role'])->group(function(){
        Route::get('/logs', "LogController@table")->name('log.list');

        Route::get('/roles', "RoleController@table")->name('role.list@角色列表');
        Route::post('/roles', "RoleController@save")->name('role.save@新增角色');
        Route::put('/roles/{id}', "RoleController@update")->name('role.update@修改角色');
        Route::delete('/roles', "RoleController@delete")->name('role.delete@删除角色');
        Route::get('/roles/{id}/menu', "RoleController@roleMenu")->name('role.role_menu');

        Route::get('/managers', "ManagerController@table")->name('manager.list');
        Route::post('/managers', "ManagerController@save")->name('manager.save@新增管理员');
        Route::put('/managers/{id}', "ManagerController@update")->name('manager.update@修改管理员');
        Route::delete('/managers', "ManagerController@delete")->name('manager.delete@删除管理员');
        Route::get('/managers/{id}/role', "ManagerController@userRole")->name('manager.user_role');
        Route::post('/managers/password', "ManagerController@password")->name('manager.password@修改密码');
        Route::get('/managers/login_info', "ManagerController@loginInfo")->name('manager.login_info');
        Route::get('/managers/login_perms', "ManagerController@loginPerms")->name('manager.login_perms');

        Route::get('/menus', "MenuController@table")->name('menu.list');
        Route::get('/menus/group', "MenuController@group")->name('menu.group');
        Route::get('/menus/{id}', "MenuController@info")->name('menu.info');
        Route::post('/menus', "MenuController@save")->name('menu.save@新增菜单');
        Route::put('/menus/{id}', "MenuController@update")->name('menu.update@修改菜单');
        Route::delete('/menus', "MenuController@delete")->name('menu.delete@删除菜单');

        //=======================WEB业务设置=======================================
        //-----------------------jinse start---------------------------------------
        Route::get('/banners', "BannerController@table")->name('banner.list');
        Route::get('/banners/{id}', "BannerController@info")->name('banner.info');
        Route::post('/banners', "BannerController@save")->name('banner.save@新增banner');
        Route::put('/banners/{id}', "BannerController@update")->name('banner.update@修改banner');
        Route::delete('/banners', "BannerController@delete")->name('banner.delete@删除banner');

        Route::get('/users', "UserController@table")->name('user.list');
        Route::get('/users/{id}', "UserController@info")->name('user.info');
        Route::post('/users', "UserController@save")->name('user.save@新增会员');
        Route::put('/users/{id}', "UserController@update")->name('user.update@修改会员');
        Route::delete('/users', "UserController@delete")->name('user.delete@删除会员');

        Route::get('/tags', "TagController@table")->name('tag.list');
        Route::get('/tags/{id}', "TagController@info")->name('tag.info');
        Route::post('/tags', "TagController@save")->name('tag.save@新增标签');
        Route::put('/tags/{id}', "TagController@update")->name('tag.update@修改标签');
        Route::delete('/tags', "TagController@delete")->name('tag.delete@删除标签');

        Route::get('/hot_words', "HotWordController@table")->name('hot_word.list');
        Route::get('/hot_words/{id}', "HotWordController@info")->name('hot_word.info');
        Route::post('/hot_words', "HotWordController@save")->name('hot_word.save@新增热词');
        Route::put('/hot_words/{id}', "HotWordController@update")->name('hot_word.update@修改热词');
        Route::delete('/hot_words', "HotWordController@delete")->name('hot_word.delete@删除热词');

        Route::get('/articles', "ArticleController@table")->name('article.list');
        Route::get('/articles/{id}', "ArticleController@info")->name('article.info');
        Route::post('/articles', "ArticleController@save")->name('article.save@新增文章');
        Route::put('/articles/{id}', "ArticleController@update")->name('article.update@修改文章');
        Route::delete('/articles', "ArticleController@delete")->name('article.delete@删除文章');

        Route::get('/categories', "CategoryController@table")->name('category.list');
        Route::get('/categories/group', "CategoryController@group")->name('category.group');
        Route::get('/categories/{id}', "CategoryController@info")->name('category.info');
        Route::post('/categories', "CategoryController@save")->name('category.save@新增分类');
        Route::put('/categories/{id}', "CategoryController@update")->name('category.update@修改分类');
        Route::delete('/categories', "CategoryController@delete")->name('category.delete@删除分类');









        //-----------------------jinse end---------------------------------------

        Route::get('/partners', "PartnerController@table")->name('partner.list');
        Route::get('/partners/{id}', "PartnerController@info")->name('partner.info');
        Route::post('/partners', "PartnerController@save")->name('partner.save@新增友链');
        Route::put('/partners/{id}', "PartnerController@update")->name('partner.update@修改友链');
        Route::delete('/partners', "PartnerController@delete")->name('partner.delete@删除友链');

        Route::get('/faqs', "FaqController@table")->name('faq.list');
        Route::get('/faqs/{id}', "FaqController@info")->name('faq.info');
        Route::post('/faqs', "FaqController@save")->name('faq.save@新增问题');
        Route::put('/faqs/{id}', "FaqController@update")->name('faq.update@修改问题');
        Route::delete('/faqs', "Faqontroller@delete")->name('faq.delete@删除问题');

        Route::get('/messages', "MessageController@table")->name('message.list');
        Route::get('/messages/{id}', "MessageController@info")->name('message.info');
        Route::post('/messages', "MessageController@save")->name('message.save@新增留言');
        Route::put('/messages/{id}', "MessageController@update")->name('message.update@回复留言');
        Route::delete('/messages', "Messageontroller@delete")->name('message.delete@删除留言');

    });
});

