<?php

namespace App\Providers;

use App\Models\CarPart;
use App\Models\CarType;
use App\Models\Company;
use App\Models\Customer;
use App\Models\Employee;
use App\Models\Product;
use App\Models\Service;
use App\Models\User;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Relation::enforceMorphMap([
            'user' => User::class,
            'car-type' => CarType::class,
            'car-part' => CarPart::class,
            'service' => Service::class,
            'product' => Product::class,
            'service' => Service::class,
            'customer' => Customer::class,
            'company' => Company::class,
            'employee' => Employee::class,
        ]);
    }
}
