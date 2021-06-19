<?php

use Illuminate\Database\Seeder;
use App\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        $user = new User;
        $user->name = "Doni Antoro";
        $user->email = "doniantoro34@gmail.com";
        $user->password = Hash::make("doni123");
        $user->save();
    }
}
