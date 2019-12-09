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
})->name('index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::post('/password/changepassword', ['uses' => 'HomeController@changePassword', 'as' => 'changePassword']);
Route::get('/password/change', ['uses' => 'HomeController@showChangePassword', 'as' => 'password.change']);

Route::group(['namespace'=>'Frontend'], function(){
    // Route::get('/categorias/{name}', ['uses' => 'ListContentController@listCategories', 'as' => 'listcontents.listcategories']);
    Route::get('/entity-page/{name}', 'FrontendController@agencies')->name('entities.entity-page');
    // Route::get('/client-page/{name}/{category}', 'ListContentController@listSubCategories')->name('clients.subcategories');
    // Route::any('transparencia/{entity}/{subcategory}', 'ListContentController@editionsSearch')->name('listcontents.search');
    // Route::get('transparencia/{entity}/{subcategory}','ListContentController@listEditions')->name('clients.editions');
	Route::resource('/entities', 'FrontendController');
});

Route::group(['namespace'=>'System', 'middleware'=>'auth'], function(){
    Route::get('/users/listrole/{id}', ['uses' => 'UsersController@listroles', 'as' => 'users.listroles']);
    Route::get('/users/showroles/{id}', ['uses' => 'UsersController@showroles', 'as' => 'users.showroles']);
    Route::post('/users/storeroles/{id}', ['uses' => 'UsersController@storeroles', 'as' => 'users.storeroles']);
    Route::delete('/users/destroyroles/{user}/{role}', ['uses' => 'UsersController@destroyrole', 'as' => 'users.destroyrole']);

    Route::get('/users/listclients/{id}', ['uses' => 'UsersController@listclients', 'as' => 'users.listclients']);
    Route::get('/users/showclients/{id}', ['uses' => 'UsersController@showclients', 'as' => 'users.showclients']);
    Route::post('/users/storeclients/{id}', ['uses' => 'UsersController@storeclients', 'as' => 'users.storeclients']);
    Route::delete('/users/destroyclients/{user}/{client}', ['uses' => 'UsersController@destroyclient', 'as' => 'users.destroyclient']);

    Route::post('/users/list', ['uses' => 'UsersController@getData', 'as' => 'users.list']);
    Route::post('/users/client/list', 'UsersController@getClients')->name('users.getclients');
    Route::post('/users/storeclient/{id}', 'UsersController@StoreClients')->name('users.syncclient');
    Route::delete('/users/destroyclient/{client}/{id}', 'UsersController@Destroyclients')->name('users.detachclients');
    Route::get('/users/clients/{id}', 'UsersController@indexClients')->name('users.clients');

    Route::post('/users/role/list', 'UsersController@getRelation')->name('users.getrelation');
    Route::post('/users/storerole/{id}', 'UsersController@StoreRoles')->name('users.sync');
    Route::delete('/users/destroyrole/{role}/{id}', 'UsersController@DestroyRole')->name('users.detach');
    Route::get('/users/roles/{id}', 'UsersController@indexRoles')->name('users.roles');
    Route::get('/users/users', 'UsersController@users')->name('users-pdf');
    Route::resource('/users', 'UsersController');
});
Route::group(['namespace'=>'System', 'middleware'=>'auth', 'prefix'=>'system'], function(){
    Route::post('/roles/list', ['uses' => 'RolesController@getData', 'as' => 'roles.list']);
    Route::post('/roles/permissions/list', 'RolesController@getRelation')->name('roles.getrelation');
    Route::post('/roles/storepermission/{id}', 'RolesController@StorePermissions')->name('roles.sync');
    Route::delete('/roles/destroypermission/{permission}/{id}', 'RolesController@DestroyPermission')->name('roles.detach');
    Route::get('/roles/permissions/{id}', 'RolesController@indexPermissions')->name('roles.permissions');
    Route::resource('/roles', 'RolesController');

    Route::post('/permissions/list', ['uses' => 'PermissionsController@getData', 'as' => 'permissions.list']);
    Route::resource('/permissions', 'PermissionsController');
});
Route::group(['namespace'=>'Administration', 'middleware'=>'auth', 'prefix'=>'administration'], function(){
    Route::post('/cities/list', ['uses' => 'CitiesController@getData', 'as' => 'cities.list']);
    Route::resource('/cities', 'CitiesController');

    Route::post('/links/list', ['uses' => 'LinksController@getData', 'as' => 'links.list']);
    Route::resource('/links', 'LinksController');

    Route::post('/districts/list', ['uses' => 'DistrictsController@getData', 'as' => 'districts.list']);
    Route::resource('/districts', 'DistrictsController');

    Route::post('/types/list', ['uses' => 'TypesController@getData', 'as' => 'types.list']);
    Route::resource('/types', 'TypesController');
});
Route::group(['namespace'=>'Operational', 'middleware'=>'auth', 'prefix'=>'operational'], function(){
    Route::post('/people/list', ['uses' => 'PeopleController@getData', 'as' => 'people.list']);
    Route::resource('/people', 'PeopleController');

    Route::post('/calls/list', ['uses' => 'CallsController@getData', 'as' => 'calls.list']);
    Route::resource('/calls', 'CallsController');
});
Route::group(['namespace'=>'Management', 'middleware'=>'auth', 'prefix'=>'management'], function(){
    Route::post('/clients/list', ['uses' => 'ClientsController@getData', 'as' => 'clients.list']);
    Route::resource('/clients', 'ClientsController');

    Route::post('/statuses/list', 'StatusesController@getData')->name('statuses.list');
    Route::resource('/statuses', 'StatusesController');

    Route::post('/subjects/list', 'SubjectsController@getData')->name('subjects.list');
    Route::resource('/subjects', 'SubjectsController');

    Route::post('/entities/list', ['uses' => 'EntitiesController@getData', 'as' => 'entities.list']);
	Route::resource('/entities', 'EntitiesController');
});
Route::group(['namespace'=>'Management', 'middleware'=>['auth', 'tenant', 'bindings'], 'prefix'=>'management'], function(){
    Route::post('/agencies/list', ['uses' => 'AgenciesController@getData', 'as' => 'agencies.list']);
    Route::resource('/agencies', 'AgenciesController');
});
