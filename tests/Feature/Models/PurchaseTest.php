<?php

namespace Tests\Feature\Models;

use Tests\TestCase;
use App\Models\User;
use App\Models\CarMake;
use App\Models\CarType;
use App\Models\Company;
use App\Models\Product;
use App\Models\CarModel;
use App\Models\Employee;
use App\Models\Purchase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class PurchaseTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    public function testPurchaseCreateMethod()
    {
        // Create the purchasable
        $carMake = CarMake::create(['name' => $this->faker->word()]);
        $carModel = CarModel::create(['name' => $this->faker->word()]);
        $purchasablePayload = [
            'car_make_id' => $carMake->id,
            'car_model_id' => $carModel->id,
            'name' => $this->faker->sentence(),
            'year_of_manufacture' => $this->faker->year(),
            'approximate_unit_price' => $this->faker->randomFloat(2, 500, 20000),
            'quantity' => $this->faker->numberBetween(5, 100)
        ];

        /** @var CarType */
        $carType = CarType::create($purchasablePayload);

        /** @var Product */
        $product = $carType->product()->create($purchasablePayload);

        // Create the deable
        $company = Company::factory()->create();

        // Create the employee

        /** @var User */
        $user = User::factory()->has(Employee::factory())->create();

        /** @var Employee */
        $employee = $user->employee;

        // Create the purchase

        $payload = [
            'purchasable_id' => $product->id,
            'purchasable_type' => $product->getMorphClass(),
            'employee_id' => $employee->id,
            ...Purchase::factory()->make()->toArray(),
            'dealable_id' => $company->id,
            'dealable_type' => $company->getMorphClass(),
        ];

        /** @var Purchase */
        $purchase = Purchase::create($payload);

        // Assert details match
        $this->assertNotNull($purchase);

        $this->assertEquals($payload['purchasable_id'], $purchase->purchasable_id);
        $this->assertEquals($payload['purchasable_type'], $purchase->purchasable_type);
        $this->assertEquals($payload['dealable_id'], $purchase->dealable_id);
        $this->assertEquals($payload['dealable_type'], $purchase->dealable_type);
        $this->assertEquals($payload['employee_id'], $purchase->employee_id);
        $this->assertEquals($payload['quantity'], $purchase->quantity);
        $this->assertEquals($payload['amount'], $purchase->amount);
        $this->assertEquals($payload['type'], $purchase->type);

        $this->assertCount(1, $company->fresh()->purchases);
        $this->assertCount(1, $product->fresh()->purchases);
    }
}
