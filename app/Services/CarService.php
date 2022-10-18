<?php

namespace App\Services;

use App\Models\CarType;
use Illuminate\Support\Facades\DB;

class CarService
{
    public function get()
    {
        return DB::table('car_types')
            ->leftJoin('car_makes', 'car_types.car_make_id', '=', 'car_makes.id')
            ->leftJoin('car_models', 'car_types.car_model_id', '=', 'car_models.id')
            ->leftJoin('products', function ($join) {
                $join->on('car_types.id', '=', 'products.productable_id')
                     ->where('products.productable_type', '=', 'car-type');
            })
            ->select('car_types.id', 'car_types.name', 'car_makes.name AS make', 'car_models.name as model', 'products.approximate_unit_price', 'products.quantity', 'car_types.created_at', 'car_types.updated_at')
            ->get()
            ->dd();
    }
}
