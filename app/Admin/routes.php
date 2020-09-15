<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->resource('contracts', ContractController::class);
    $router->resource('contracts_warranty_1', ContractWarranty1::class);
    $router->resource('contracts_warranty_2', ContractWarranty2::class);
    $router->resource('contracts_warranty_3', ContractWarranty3::class);
    $router->resource('products', ProductController::class);
    $router->get('/api/product','\App\Http\Controllers\ProductController@getSearch');
});
