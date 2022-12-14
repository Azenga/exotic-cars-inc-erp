<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'description'
    ];

    /**
     * Jobs - Employees relationship definition
     * 
     * @return Builder
     */
    public function employees()
    {
        return $this->belongsToMany(Employee::class);
    }
}
