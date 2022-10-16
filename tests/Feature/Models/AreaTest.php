<?php

namespace Tests\Feature\Models;

use App\Models\Area;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class AreaTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /** @group area */
    public function testAreaCreateMethod()
    {
        $payload = [
            'name' => $this->faker->sentence()
        ];

        $area = Area::create($payload);

        $this->assertEquals($payload['name'], $area->name);
        
    }
}
