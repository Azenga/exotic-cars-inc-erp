<?php

namespace App\Services;

use Illuminate\Support\Facades\DB;

class CustomerService
{
    public function get()
    {
        return DB::table('users')
            ->join('customers', 'users.id', '=', 'customers.user_id')
            ->select('users.id', 'users.name', 'users.email', 'customers.since_date')
            // ->get()
            ->dd();
    }
}
