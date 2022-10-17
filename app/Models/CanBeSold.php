<?php

namespace App\Models;

/**
 * Products and services
 */
trait CanBeSold
{

    /**
     * Entity - Sales relationship definition
     * 
     * @return Builder
     */
    public function sales()
    {
        return $this->morphMany(Sale::class, 'salable');
    }
    
}
