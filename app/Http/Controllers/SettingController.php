<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SettingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $xxx1 = base64_decode(urldecode($_COOKIE['xxx1']));
        $xxx2 = base64_decode(urldecode($_COOKIE['xxx2']));
        $xxx3 = base64_decode(urldecode($_COOKIE['xxx3']));

        if(empty($xxx1) || empty($xxx2) || empty($xxx3)){
            return redirect('/login');
        }else{
            return view('setting.index', compact('xxx1'));
        }
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
