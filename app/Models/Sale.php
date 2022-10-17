<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{
    use HasFactory;

    protected $fillable = [
        'salable_id',
        'salable_type',
        'dealable_id',
        'dealable_type',
        'employee_id',
        'car_id',
        'quantity',
        'amount',
        'type',
    ];

    protected $casts = [
        'quantity' => 'integer',
        'amount' => 'float',
    ];
    
    /**
    * Making Purchase entity implementable by other entities that can be bought
    * 
    * @return Builder
    */
   public function salable()
   {
       return $this->morphTo();
   }

   /**
    * Marking purchase entity implemented by other entities that can buy
    */
   public function dealable()
   {
       return $this->morphTo();
   }

}
