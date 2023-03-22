<?php

namespace App\Http\Controllers;

use App\Models\Estudiantes;


use Illuminate\Http\Request;

class EstudiantesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    try {
        //code...
        Estudiantes::create(request(['names', 'lastnames', 'email', 'password', 'phone_number', 'birthdate', 'address']));
        return view('AdminMain', ['sub_page' => "estuRegister", 'success' => true]);
    } catch (\Throwable $th) {
        //throw $th;
        // echo $th;
        return view('AdminMain', ['sub_page' => "estuRegister", 'error' => $th ]);
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
     * @param  \App\Models\Estudiantes  $estudiantes
     * @return \Illuminate\Http\Response
     */
    public function show($content)
    {
       
        $estudiantes = Estudiantes::all();
        
        return view('AdminMain', ['sub_page' => $content, 'estudiantes' => $estudiantes]);

        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Estudiantes  $estudiantes
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $estudiante = Estudiantes::find($id);
        return view('AdminMain', ['sub_page' => "estuEdit", 'estudiante' => $estudiante]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Estudiantes  $estudiantes
     * @return \Illuminate\Http\Response
     */
    public function update($id)
    {
        try {
            //code...
            $updateEstu = Estudiantes::find($id);
            $updateEstu->update(request(['names', 'lastnames', 'email', 'phone_number', 'birthdate', 'address']));
            $estudiantes = Estudiantes::all();
            return view('AdminMain', ['sub_page' => "estudianteTable", 'estudiantes' => $estudiantes, 'success' => "Estudiante modificado correctamente"]);
        } catch (\Throwable $th) {
            //throw $th;
            $estudiantes = Estudiantes::all();
            return view('AdminMain', ['sub_page' => "estudianteTable", 'estudiantes' => $estudiantes, 'error' => "Error al modificar"]);
        }  
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Estudiantes  $estudiantes
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    { 
        // echo $id;
        try {
            //code...
            $deleteEstu = Estudiantes::find($id);
            $deleteEstu->delete();
            $estudiantes = Estudiantes::all();
            return back()->with(['sub_page' => "estudianteTable", 'estudiantes' => $estudiantes, 'action' => "success", "mensage"=> "Estudiante eliminado con exito"]);
             // return view('AdminMain', ['sub_page' => "estudianteTable", 'estudiantes' => $estudiantes,'success' => "Estudiante eliminado correctamente"]);
        } catch (\Throwable $th) {
            $estudiantes = Estudiantes::all();
            return back()->with(['sub_page' => "estudianteTable", 'estudiantes' => $estudiantes, 'action' => "error", "mensage" => "Estudiante eliminado con exito"]);
            // return view('AdminMain', ['sub_page' => "estudianteTable", 'estudiantes' => $estudiantes ,'error' => "Error al Eliminar"]);
        }
    }
}
