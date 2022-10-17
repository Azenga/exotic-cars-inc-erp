<?php

use App\Services\CarService;
use App\Services\CustomerService;
use App\Services\EmployeeService;
use App\Services\ProductService;
use App\Services\ServiceService;
use App\Services\UserService;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function (UserService $userService) {
    $userService->get();
});

Route::get('/customers', function (CustomerService $customerService) {
    $customerService->get();
});

Route::get('/employees', function (EmployeeService $employeeService) {
    $employeeService->get();
});

Route::get('/products', function (ProductService $productService) {
    $productService->get();
});

Route::get('/services', function (ServiceService $serviceService) {
    $serviceService->get();
});

Route::get('/cars', function (CarService $carService) {
    $carService->get();

    return view('welcome');
});
