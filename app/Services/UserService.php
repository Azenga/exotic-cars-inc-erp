<?php

namespace App\Services;

use Illuminate\Support\Facades\DB;

class UserService
{
    public function get()
    {
        return DB::table('users')->select(['id', 'name', 'email'])->dd();
    }
}
