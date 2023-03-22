<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MainController extends Controller
{
    
    public function contentController($content){
        // echo $content;
     return view('AdminMain',['sub_page' => $content]);
    }
    public function contentControllerRedirect($sub_page, $estudiantes, $action){
        // echo $content;
       
     return view('AdminMain',['sub_page' => $sub_page, 'estudiantes' => $estudiantes, 'action' => $action]);
    }
}
