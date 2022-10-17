<?php

namespace Tests\Feature\Models;

use App\Models\Car;
use App\Models\CarType;
use App\Models\User;
use Database\Seeders\CarTypeSeeder;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class CarTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /** @group car */
    public function testCarCreateMethod()
    {
        $user = User::factory()->create();

        $this->seed(CarTypeSeeder::class);

        /** @var CarType */
        $carType = CarType::first();

        $payload = [
            'user_id' => $user->id,
            'car_type_id' => $carType->id,
            'plate_number' => $this->faker->word()
        ];

        /** @var Car */
        $car = Car::create($payload);

        $this->assertNotNull($car);

        $this->assertEquals($payload['user_id'], $car->user_id);

        $this->assertEquals($payload['car_type_id'], $car->car_type_id);

        $this->assertEquals($payload['plate_number'], $car->plate_number);
        
    }
}
