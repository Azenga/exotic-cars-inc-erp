<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CarType extends Model
{
    use HasFactory, IsProduct;

    protected $fillable = [
        'car_make_id',
        'car_model_id',
        'name',
        'year_of_manufacture'
    ];

    protected $casts = [
        'price' => 'float'
    ];

    public function carMake()
    {
        return $this->belongsTo(CarMake::class);
    }

    public function carModel()
    {
        return $this->belongsTo(CarModel::class);
    }
}
