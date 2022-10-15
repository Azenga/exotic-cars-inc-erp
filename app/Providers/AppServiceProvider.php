<?php

namespace App\Providers;

use App\Models\Car;
use App\Models\CarPart;
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
            'car' => Car::class,
            'car-part' => CarPart::class,
            'service' => Service::class,
            'product' => Product::class
        ]);
    }
}
