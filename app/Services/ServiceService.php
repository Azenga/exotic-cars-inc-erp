<?php

namespace App\Services;

use Illuminate\Support\Facades\DB;

class ServiceService
{
    public function get()
    {
        return DB::table('services')->get()->dd();
    }
}