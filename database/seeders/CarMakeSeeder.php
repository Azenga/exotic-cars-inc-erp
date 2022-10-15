<?php

namespace Database\Seeders;

use App\Models\CarMake;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CarMakeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = ['Kia', 'Toyota', 'Jeep', 'GMC', 'Mazda', 'Volvo', 'Subaru', 'Hyundai'];

        array_walk($data, fn($name) => CarMake::create(compact('name')));
    }
}
