<?php

namespace Tests\Feature\Models;

use App\Models\Job;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class JobTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /** @group job */
    public function testJobCreateMethod()
    {
        $payload = Job::factory()->make()->toArray();

        $job = Job::create($payload);

        $this->assertEquals($payload['title'], $job->title);

        $this->assertEquals($payload['description'], $job->description);
        
    }
}
