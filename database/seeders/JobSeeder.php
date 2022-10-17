<?php

namespace Database\Seeders;

use App\Models\Job;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class JobSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            'CEO',
            'VP Area',
            'Area Manager'
        ];

        array_walk($data, fn($title) => Job::create(compact('title')));
    }
}
