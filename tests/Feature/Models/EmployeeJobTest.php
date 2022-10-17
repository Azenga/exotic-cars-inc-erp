<?php

namespace Tests\Feature\Models;

use App\Models\Employee;
use App\Models\Job;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class EmployeeJobTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /** @group employee-job */
    public function testCreatingEmployeeJob()
    {
        $user = User::factory()->has(Employee::factory())->create();

        $employee = $user->employee;

        $job = Job::factory()->create();

        $employee->jobs()->attach($job);

        $this->assertCount(1, $employee->fresh()->jobs);
        
    }
}
