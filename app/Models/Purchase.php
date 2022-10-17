<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    use HasFactory;

    protected $fillable = [
        'purchasable_id',
        'purchasable_type',
        'employee_id',
        'quantity',
        'amount',
        'dealable_id',
        'dealable_type',
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
    public function puchasable()
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
