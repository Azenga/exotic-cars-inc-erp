<?php

namespace Tests\Feature\Models;

use App\Models\Company;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class CompanyTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /** @group company */
    public function testCompanyCreateMethod()
    {
        $payload = Company::factory()->make()->toArray();

        /** @var Company */
        $company = Company::create($payload);

        $this->assertNotNull($company);

        $this->assertEquals($payload['name'], $company->name);

        $this->assertEquals($payload['type'], $company->type);
        
    }
}
