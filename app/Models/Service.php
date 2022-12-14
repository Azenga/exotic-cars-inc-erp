<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory, CanBeSold;

    protected $fillable = [
        'name',
        'price'
    ];

    protected $casts = [
        'price' => 'float'
    ];

}
