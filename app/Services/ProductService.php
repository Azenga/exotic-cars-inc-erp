<?php

namespace App\Services;

use Illuminate\Support\Facades\DB;

class ProductService
{
    public function get()
    {
        return DB::table('products')
            ->select('id', 'name', 'approximate_unit_price', 'quantity')
            // ->get()
            ->dd();
    }
}
