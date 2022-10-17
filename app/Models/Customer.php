<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory, CanSale;

    protected $fillable = [
        'user_id',
        'since_date'
    ];

    protected $casts = [
        'since_date' => 'date'
    ];

    /**
     * Customer - Sales relationship definition
     * 
     * @return Builder
     */
    public function sales()
    {
        return $this->morphMany(Sale::class, 'dealable');
    }

}
