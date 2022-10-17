<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            CarMakeSeeder::class,
            CarModelSeeder::class,
            CarTypeSeeder::class,
            ServiceSeeder::class,
            LocationSeeder::class,
            AreaSeeder::class,
            CompanySeeder::class,
            CarSeeder::class
        ]);
    }
}
