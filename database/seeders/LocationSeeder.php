<?php

namespace Database\Seeders;

use App\Models\Location;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class LocationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            'Washington, DC',
            'Richmond, VA',
            'Virginia Beach, VA'
        ];

        array_walk($data, fn($name) => Location::create(compact('name')));
    }
}
