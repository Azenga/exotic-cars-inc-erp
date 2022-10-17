<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Car extends Model
{
    use HasFactory, IsProduct;

    protected $fillable = [
        'car_type_id',
        'user_id',
        'plate_number'
    ];

    /**
     * Cars - CarType relationship definition
     * 
     * @return Builder
     */
    public function carType()
    {
        return $this->belongsTo(CarType::class);
    }
}
