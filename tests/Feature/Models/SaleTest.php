<?php

namespace Tests\Feature\Models;

use Tests\TestCase;
use App\Models\Sale;
use App\Models\User;
use App\Models\CarMake;
use App\Models\CarType;
use App\Models\CarModel;
use App\Models\Customer;
use App\Models\Employee;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class SaleTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /** @group sale */
    public function testSaleCreateMethod()
    {
        // Create the purchasable
        $carMake = CarMake::create(['name' => $this->faker->word()]);
        $carModel = CarModel::create(['name' => $this->faker->word()]);

        $salablePayload = [
            'car_make_id' => $carMake->id,
            'car_model_id' => $carModel->id,
            'name' => $this->faker->sentence(),
            'year_of_manufacture' => $this->faker->year(),
            'approximate_unit_price' => $this->faker->randomFloat(2, 500, 20000),
            'quantity' => $this->faker->numberBetween(5, 100)
        ];

        /** @var CarType */
        $carType = CarType::create($salablePayload);

        /** @var Product */
        $product = $carType->product()->create($salablePayload);

        // Create the deable

        $userCustomer = User::factory()->has(Customer::factory())->create();

        /** @var Customer */
        $customer = $userCustomer->customer;

        // Create the employee

        /** @var User */
        $user = User::factory()->has(Employee::factory())->create();

        /** @var Employee */
        $employee = $user->employee;

        // Create the purchase
        $payload = [
            'salable_id' => $product->id,
            'salable_type' => $product->getMorphClass(),
            'employee_id' => $employee->id,
            ...Sale::factory()->make()->toArray(),
            'dealable_id' => $customer->id,
            'dealable_type' => $customer->getMorphClass(),
        ];

        /** @var Sale */
        $sale = Sale::create($payload);

        $this->assertNotNull($sale);

        $this->assertEquals($payload['salable_id'], $sale->salable_id);
        $this->assertEquals($payload['salable_type'], $sale->salable_type);
        $this->assertEquals($payload['dealable_id'], $sale->dealable_id);
        $this->assertEquals($payload['dealable_type'], $sale->dealable_type);
        $this->assertEquals($payload['employee_id'], $sale->employee_id);
        $this->assertEquals($payload['quantity'], $sale->quantity);
        $this->assertEquals($payload['amount'], $sale->amount);
        $this->assertEquals($payload['type'], $sale->type);

        $this->assertCount(1, $product->fresh()->sales);
        $this->assertCount(1, $customer->fresh()->sales);
        
    }
}
