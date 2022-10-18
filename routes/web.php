<?php

use App\Models\Car;
use App\Models\Customer;
use App\Models\Employee;
use App\Models\Product;
use App\Models\Purchase;
use App\Models\Sale;
use App\Models\Service;
use App\Services\UserService;
use Illuminate\Support\Facades\Route;

Route::get('/', function (UserService $userService) {

});

Route::get('/purchases', function (UserService $userService) {

    $customers = collect(array_values(Customer::all('id')->pluck('id')->all()));

    $products = collect(array_values(Product::all('id')->pluck('id')->all()));

    $employees = collect(array_values(Employee::all('id')->pluck('id')->all()));


    $purchase = Purchase::create([
        ...Purchase::factory()->make()->toArray(),
        'employee_id' => $employees->random(),
        'purchasable_id' => $products->random(),
        'purchasable_type' => 'product',
        'dealable_id' => $customers->random(),
        'dealable_type' => 'customer',
        'quantity' => 1,
    ]);

    dd($purchase);

});

Route::get('/sales', function () {

    $customers = collect(array_values(Customer::all('id')->pluck('id')->all()));

    $services = collect(array_values(Service::all('id')->pluck('id')->all()));

    $employees = collect(array_values(Employee::all('id')->pluck('id')->all()));

    $cars = collect(array_values(Car::all('id')->pluck('id')->all()));


    $sale = Sale::create([
        ...Sale::factory()->make()->toArray(),
        'employee_id' => $employees->random(),
        'car_id' => $cars->random(),
        'salable_id' => $services->random(),
        'salable_type' => 'service',
        'dealable_id' => $customers->random(),
        'dealable_type' => 'customer',
        'quantity' => 1,
    ]);

    dd($sale);

});
