<?php

namespace Tests\Feature\Models;

use App\Models\Employee;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class EmployeeTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    public function testEmployeeCreateMethod()
    {
        /** @var User */
        $user = User::factory()->create();

        $payload = [
            'user_id' => $user->id,
            'title' => $this->faker->jobTitle()
        ];

        $employee = Employee::create($payload);

        $this->assertNotNull($employee);

        $this->assertEquals($payload['user_id'], $employee->user_id);

        $this->assertEquals($payload['title'], $employee->title);
    }
}
