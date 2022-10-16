<?php

namespace Tests\Feature\Models;

use App\Models\Location;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class LocationTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /** @group locations */
    public function testLocationCreateMethod()
    {
        $payload = [
            'name' => $this->faker->city(),
            'launch_date' => $this->faker->date()
        ];

        /** @var Location */
        $location = Location::create($payload);

        $this->assertEquals($payload['name'], $location->name);
        
        $this->assertEquals($payload['launch_date'], $location->launch_date->toDateString());
        
    }

}
