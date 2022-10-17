<?php

namespace App\Models;

/**
 * Products and services
 */
trait CanBePurchased
{

    /**
     * Entity - Purchases relationship definition
     * 
     * @return Builder
     */
    public function purchases()
    {
        return $this->morphMany(Purchase::class, 'purchasable');
    }
    
}
