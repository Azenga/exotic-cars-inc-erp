<?php

namespace App\Models;

/**
 * An entity that is a product must have this trait
 */
trait IsProduct
{

    /**
     * Model - Product relationship definition
     * 
     * @return Builder
     */
    public function product()
    {
        return $this->morphOne(Product::class, 'productable');
    }
    
}
