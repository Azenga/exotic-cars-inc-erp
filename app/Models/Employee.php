<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'title',
        'hire_date'
    ];

    /**
     * Employees - Jobs relationship definition
     * 
     * @return Builder
     */
    public function jobs()
    {
        return $this->belongsToMany(Job::class);
    }
}
