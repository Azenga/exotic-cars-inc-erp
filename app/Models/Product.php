<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory, CanBePurchased, CanBeSold;

    protected $fillable = [
        'name',
        'approximate_unit_price',
        'quantity'
    ];

    protected $casts = [
        'approximate_unit_price' => 'float',
        'quantity' => 'integer'
    ];


    /**
     * Makes the product table extendable
     * 
     * @return Builder
     */
    public function productable()
    {
        return $this->morphTo();
    }

}
