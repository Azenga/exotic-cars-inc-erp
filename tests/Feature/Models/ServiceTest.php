<?php

namespace Tests\Feature\Models;

use App\Models\Service;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class ServiceTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /** @group service */
    public function testServiceCreateMethod()
    {
        $payload = [
            'name' => $this->faker->sentence(),
            'price' => $this->faker->randomFloat(2, 200, 2000)
        ];

        /** @var Service */
        $service = Service::create($payload);

        $this->assertEquals($payload['name'], $service->name);
        
        $this->assertEquals($payload['price'], $service->price);
        
    }
}
