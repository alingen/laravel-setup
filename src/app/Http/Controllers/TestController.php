<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Test;

class TestController extends Controller
{
    public function index()
    {
        $value = Test::find(1);
        dd($value);

        return view('tests.test', compact('values'));
    }
}
