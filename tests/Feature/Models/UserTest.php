<?php

namespace Tests\Feature\Models;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Support\Facades\Hash;
use Tests\TestCase;

class UserTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /** @group user */
    public function testUserCreateMethod()
    {
        $payload = [
            'name' => $this->faker->name(),
            'email' => $this->faker->email(),
            'password' => Hash::make($this->faker->password(8, 20))
        ];

        $user = User::create($payload);

        $this->assertEquals($payload['name'], $user->name);
        
        $this->assertEquals($payload['email'], $user->email);
        
    }

}
