<?php

namespace Tests\Feature\Models;

use Tests\TestCase;
use App\Models\User;
use App\Models\Customer;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class CustomerTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /** @group customer */
    public function testCustomerCreateMethod()
    {
        /** @var User */
        $user = User::factory()->create();

        $payload = [
            'user_id' => $user->id,
            ...Customer::factory()->make()->toArray()
        ];

        /** @var Customer */
        $customer = Customer::create($payload);

        $this->assertNotNull($customer);

        $this->assertEquals($payload['user_id'], $customer->user_id);

        $this->assertEquals($payload['since_date'], $customer->since_date->toISOString());
    }
}
