<?php

namespace Database\Seeders;

use App\Models\Car;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CarSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            'Nissan Altima',
            'Mazda CX-5',
            'Honda CR-V',
            'Toyota RAV4',
            'Toyota Highlander',
            'Subaru Forrester',
            'Kia Sorento',
            'Toyota Camry',
            'Honda Accord',
            'Subaru Outback',
            'Subaru Crosstrek'
        ];

        array_walk($data, fn($name) => Car::create(compact('name')));
    }
}
