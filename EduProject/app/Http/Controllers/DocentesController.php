<?php

namespace App\Http\Controllers;

use App\Models\Docentes;
use Illuminate\Http\Request;

class DocentesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        try {
            //code...
            $file =  $request->file('CV');
            $filename = $request->input('ci') .'.'. $file->extension();
            $file->storeAs('',$filename);
            $names = $request->input("names");
            $lastnames = $request->input("lastnames");
            $ci = $request->input("ci");
            $email = $request->input("email");
            $password = $request->input("password");
            $phone_number = $request->input("phone_number");
            $birthdate = $request->input("birthdate");
            $address = $request->input("address");
            $degree_lv = $request->input("degree_lv");
       
            // request(['names', 'lastnames', 'ci', 'email', 'password', 'phone_number', 'birthdate', 'address', 'CV' => $filename, 'degree_lv'])
            Docentes::create(['CV' => $filename, 'names' => $names, 'lastnames' => $lastnames, 'ci' => $ci, 'email' => $email, 'password' => $password, 'phone_number' => $phone_number, 'birthdate' => $birthdate, 'address' => $address, 'degree_lv' => $degree_lv]);
            return view('AdminMain', ['sub_page' => "docenteRegister", 'success' => true]);
        } catch (\Throwable $th) {
            //throw $th;
            echo $th;
            // return view('AdminMain', ['sub_page' => "docenteRegister", 'error' => $th]);
        } 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Docentes  $docentes
     * @return \Illuminate\Http\Response
     */
    public function show(Docentes $docentes)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Docentes  $docentes
     * @return \Illuminate\Http\Response
     */
    public function edit(Docentes $docentes)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Docentes  $docentes
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Docentes $docentes)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Docentes  $docentes
     * @return \Illuminate\Http\Response
     */
    public function destroy(Docentes $docentes)
    {
        //
    }
}
