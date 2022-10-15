<?php

namespace Tests\Feature\Models;

use App\Models\Car;
use App\Models\CarMake;
use App\Models\CarModel;
use Tests\TestCase;
use App\Models\Product;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class CarTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /** @group car */
    public function testCarCreateMethodBasic()
    {
        $payload = [
            'name' => $this->faker->sentence(),
            'year_of_manufacture' => $this->faker->year(),
        ];

        $car = Car::create($payload);

        $this->assertEquals($payload['name'], $car->name);

        $this->assertEquals($payload['year_of_manufacture'], $car->year_of_manufacture);
        
    }

    /** @group car */
    public function testCarCreateMethodWithProduct()
    {
        $payload = [
            'name' => $this->faker->sentence(),
            'year_of_manufacture' => $this->faker->year(),
            'approximate_unit_price' => $this->faker->randomFloat(2, 500, 20000),
            'quantity' => $this->faker->numberBetween(5, 100)
        ];

        /** @var Car */
        $car = Car::create($payload);

        /** @var Product */
        $product = $car->product()->create($payload);

        $this->assertEquals($payload['name'], $car->name);

        $this->assertEquals($payload['year_of_manufacture'], $car->year_of_manufacture);

        $this->assertEquals($payload['approximate_unit_price'], $product->approximate_unit_price);

        $this->assertEquals($payload['quantity'], $product->quantity);
    }

    /** @group car */
    public function testCarCreateMethodAdvancedWithProduct()
    {

        $carMake = CarMake::create(['name' => $this->faker->word()]);
        $carModel = CarModel::create(['name' => $this->faker->word()]);
        $payload = [
            'car_make_id' => $carMake->id,
            'car_model_id' => $carModel->id,
            'name' => $this->faker->sentence(),
            'year_of_manufacture' => $this->faker->year(),
            'approximate_unit_price' => $this->faker->randomFloat(2, 500, 20000),
            'quantity' => $this->faker->numberBetween(5, 100)
        ];

        /** @var Car */
        $car = Car::create($payload);

        /** @var Product */
        $product = $car->product()->create($payload);

        $this->assertEquals($payload['name'], $car->name);

        $this->assertEquals($payload['car_make_id'], $car->car_make_id);
        
        $this->assertEquals($payload['car_model_id'], $car->car_model_id);

        $this->assertEquals($payload['year_of_manufacture'], $car->year_of_manufacture);

        $this->assertEquals($payload['approximate_unit_price'], $product->approximate_unit_price);

        $this->assertEquals($payload['quantity'], $product->quantity);
    }
}
