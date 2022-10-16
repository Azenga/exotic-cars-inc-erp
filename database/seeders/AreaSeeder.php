<?php

namespace Database\Seeders;

use App\Models\Area;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AreaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            'Sales/Tradein Area',
            'Shop/Repair Area',
            'Service Area'
        ];

        array_walk($data, fn($name) => Area::create(compact('name')));
    }
}
