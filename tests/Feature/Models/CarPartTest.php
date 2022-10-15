<?php

namespace Tests\Feature\Models;

use App\Models\Car;
use Tests\TestCase;
use App\Models\CarPart;
use App\Models\Product;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class CarPartTest extends TestCase
{
    use RefreshDatabase, WithFaker;
    
    /** @group car-part */
    public function testCarPartCreateMethodBasic()
    {
        
        $payload = [
            'name' => $this->faker->sentence(),
            'approximate_unit_price' => $this->faker->randomFloat(2, 500, 20000),
            'quantity' => $this->faker->numberBetween(5, 100)
        ];

        /** @var CarPart */
        $carPart = CarPart::create($payload);

        $this->assertEquals($payload['name'], $carPart->name);
    }
    
    /** @group car-part */
    public function testCarPartCreateMethodBasicForSpecificCar()
    {

        /** @var Car */
        $car = Car::create(['name' => $this->faker->word()]);
        
        $payload = [
            'name' => $this->faker->sentence(),
            'car_id' => $car->id,
            'approximate_unit_price' => $this->faker->randomFloat(2, 500, 20000),
            'quantity' => $this->faker->numberBetween(5, 100)
        ];

        /** @var CarPart */
        $carPart = CarPart::create($payload);

        $this->assertEquals($payload['name'], $carPart->name);
        
        $this->assertEquals($payload['car_id'], $carPart->car_id);
    }
    
    /** @group car-part */
    public function testCarPartCreateMethodAsProduct()
    {
        
        $payload = [
            'name' => $this->faker->sentence(),
            'approximate_unit_price' => $this->faker->randomFloat(2, 500, 20000),
            'quantity' => $this->faker->numberBetween(5, 100)
        ];

        /** @var CarPart */
        $carPart = CarPart::create($payload);

        /** @var Product */
        $product = $carPart->product()->create($payload);

        $this->assertEquals($payload['name'], $carPart->name);

        $this->assertEquals($payload['name'], $product->name);

        $this->assertEquals($payload['approximate_unit_price'], $product->approximate_unit_price);

        $this->assertEquals($payload['quantity'], $product->quantity);
    }
}
