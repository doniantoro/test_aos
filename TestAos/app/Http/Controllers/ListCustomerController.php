<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ListCustomer;

class ListCustomerController extends Controller
{
    public function index()
    {
        $list_customer=ListCustomer::all();
        return $list_customer;
    }

    public function show($id)
    {
        $list_customer=ListCustomer::where('id',$id)->get();

        return $list_customer;
    }
    
}
