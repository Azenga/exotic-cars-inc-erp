<?php

namespace Database\Seeders;

use App\Models\Service;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [
                'name' => 'Engine turn-up',
                'price' =>  300.00
            ],
            [
                'name' => 'Tyre rotation',
                'price' =>  200.00
            ],
            [
                'name' => 'Oil change',
                'price' =>  200.00
            ],
        ];

        array_walk($data, fn($item) => Service::create($item));
    }
}
