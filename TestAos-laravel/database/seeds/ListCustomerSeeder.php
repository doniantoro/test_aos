<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use App\ListCustomer;
use Faker\Factory as Faker;

class ListCustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

        $faker = Faker::create('id_ID');
        for($x = 1; $x <= 10; $x++){
        $list_customer = new ListCustomer;
        $list_customer->name =  $faker->name;
        $list_customer->phone = $faker->phoneNumber;
        $list_customer->address = $faker->address;
        $list_customer->save();
    }
    }
}
