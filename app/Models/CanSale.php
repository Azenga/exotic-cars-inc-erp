<?php

namespace App\Models;

/**
 * Entities that can sale a product / service
 */
trait CanSale
{

    /**
     * Entity - Purchase relationship definition
     * 
     * @return Builder
     */
    public function purchases()
    {
        return $this->morphMany(Purchase::class, 'dealable');
    }
    
}
