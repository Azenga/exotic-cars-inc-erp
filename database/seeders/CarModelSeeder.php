<?php

namespace Database\Seeders;

use App\Models\CarModel;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CarModelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            'Avalon',
            'Camry',
            'Corolla',
            'Prius',
            'Yaris',
            '86',
            'Sienna',
            'C-HR',
            'MX-04',
            'MX-5 Superlight',
            'MX-81',
            'MX-Crossport',
            'MX-Flexa',
            'MX-Micro Sport'
        ];

        array_walk($data, fn($name) => CarModel::create(compact('name')));
    }
}
