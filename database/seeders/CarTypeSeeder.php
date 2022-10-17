<?php

namespace Database\Seeders;

use App\Models\CarType;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class CarTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data  = [
            [
                'name' => 'Nissan Altima',
                'year_of_manufacture' => now()->subYears(random_int(10, 50))->year,
                'approximate_unit_price' => random_int(1000, 20000),
                'quantity' => random_int(10, 100)
            ],
            [
                'name' => 'Mazda CX-5',
                'year_of_manufacture' => now()->subYears(random_int(10, 50))->year,
                'approximate_unit_price' => random_int(1000, 20000),
                'quantity' => random_int(10, 100)
            ],
            [
                'name' => 'Honda CR-V',
                'year_of_manufacture' => now()->subYears(random_int(10, 50))->year,
                'approximate_unit_price' => random_int(1000, 20000),
                'quantity' => random_int(10, 100)
            ],
            [
                'name' => 'Toyota RAV4',
                'year_of_manufacture' => now()->subYears(random_int(10, 50))->year,
                'approximate_unit_price' => random_int(1000, 20000),
                'quantity' => random_int(10, 100)
            ],
            [
                'name' => 'Toyota Highlander',
                'year_of_manufacture' => now()->subYears(random_int(10, 50))->year,
                'approximate_unit_price' => random_int(1000, 20000),
                'quantity' => random_int(10, 100)
            ],
            [
                'name' => 'Subaru Forrester',
                'year_of_manufacture' => now()->subYears(random_int(10, 50))->year,
                'approximate_unit_price' => random_int(1000, 20000),
                'quantity' => random_int(10, 100)
            ],
            [
                'name' => 'Kia Sorento',
                'year_of_manufacture' => now()->subYears(random_int(10, 50))->year,
                'approximate_unit_price' => random_int(1000, 20000),
                'quantity' => random_int(10, 100)
            ],
            [
                'name' => 'Toyota Camry',
                'year_of_manufacture' => now()->subYears(random_int(10, 50))->year,
                'approximate_unit_price' => random_int(1000, 20000),
                'quantity' => random_int(10, 100)
            ],
            [
                'name' => 'Honda Accord',
                'year_of_manufacture' => now()->subYears(random_int(10, 50))->year,
                'approximate_unit_price' => random_int(1000, 20000),
                'quantity' => random_int(10, 100)
            ],
            [
                'name' => 'Subaru Outback',
                'year_of_manufacture' => now()->subYears(random_int(10, 50))->year,
                'approximate_unit_price' => random_int(1000, 20000),
                'quantity' => random_int(10, 100)
            ],
            [
                'name' => 'Subaru Crosstrek',
                'year_of_manufacture' => now()->subYears(random_int(10, 50))->year,
                'approximate_unit_price' => random_int(1000, 20000),
                'quantity' => random_int(10, 100)
            ],
        ];

        array_walk($data, fn($payload) => CarType::create([
            'name' => $payload['name'],
            'year_of_manufacture' => $payload['year_of_manufacture'],
        ])->product()->create([
            'name' => $payload['name'],
            'approximate_unit_price' => $payload['approximate_unit_price'],
            'quantity' => $payload['quantity'],
        ]));
    }
}
