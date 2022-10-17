<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Customer>
 */
class CustomerFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'since_date' => now()->subYears($this->faker->numberBetween(1,10))
            ->subDays($this->faker->numberBetween(1, 365))->toDateString()
        ];
    }
}
