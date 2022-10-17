<?php

namespace App\Services;

use Illuminate\Support\Facades\DB;

class EmployeeService
{
    public function get()
    {
        return DB::table('users')
            ->join('employees', 'users.id', '=', 'employees.user_id')
            ->select('users.id', 'users.name', 'users.email', 'employees.hire_date')
            ->get()
            ->dd();
    }
}
