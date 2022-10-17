<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CarPart extends Model
{
    use HasFactory, IsProduct;

    protected $fillable = [
        'name',
        'car_type_id',
    ];

    protected $casts = [
        'price' => 'float'
    ];

    /**
     * CarPart - CarType relationship definition
     * 
     * Parts for specific car type
     * 
     * @return Builder
     */
    public function carType()
    {
        return $this->belongsTo(CarType::class);
    }
}
