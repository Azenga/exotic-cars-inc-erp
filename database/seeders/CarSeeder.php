<?php

namespace Database\Seeders;

use App\Models\Car;
use App\Models\CarType;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Eloquent\Factories\Sequence;
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
        $carTypes = array_values(CarType::all('id')->pluck('id')->all());

        Car::factory()->count(20)
            ->state(
                new Sequence(fn($sequence) => ['car_type_id' => collect($carTypes)->random()]),
                new Sequence(
                    ['user_id' => User::factory()->create()->id],
                    ['user_id' => null]
                )
            )->create();
    }
}
