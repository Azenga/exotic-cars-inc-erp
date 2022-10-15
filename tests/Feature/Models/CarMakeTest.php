<?php

namespace Tests\Feature\Models;

use App\Models\CarMake;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class CarMakeTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /** @group car-make */
    public function testCarMakeCreateMethod()
    {
        $payload = [
            'name' => $this->faker->word()
        ];

        $carMake = CarMake::create($payload);

        $this->assertEquals($payload['name'], $carMake->name);
        
    }
}
