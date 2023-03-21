<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MainController extends Controller
{
    public function contentController($content){
        // echo $content;
     return view('AdminMain',['sub_page' => $content]);
    }
 
}
