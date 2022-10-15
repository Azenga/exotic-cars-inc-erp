<?php

namespace Tests\Feature\Models;

use App\Models\CarModel;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class CarModelTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /** @group car-model */
    public function testCarModelCreateMethod()
    {
        $payload = [
            'name' => $this->faker->word()
        ];

        $carModel = CarModel::create($payload);

        $this->assertEquals($payload['name'], $carModel->name);
        
    }
}
