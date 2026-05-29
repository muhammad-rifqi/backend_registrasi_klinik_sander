<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard');
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

     public function data(Request $request)
    {
        $columns = [
            0 => 'id',
            1 => 'name',
            2 => 'email',
            3 => 'created_at'
        ];

        $draw = $request->input('draw');

        $start = $request->input('start', 0);

        $length = $request->input('length', 10);

        $search = $request->input('search.value');

        $orderColumnIndex = $request->input('order.0.column', 0);

        $orderColumn = $columns[$orderColumnIndex];

        $orderDir = $request->input('order.0.dir', 'asc');

        // query dasar
        $query = DB::table('users')
            ->select(
                'id',
                'name',
                'email',
                'created_at'
            );

        // total semua data
        $recordsTotal = DB::table('users')->count();

        // search
        if (!empty($search)) {

            $query->where(function ($q) use ($search) {

                $q->where('name', 'like', "%{$search}%")
                  ->orWhere('email', 'like', "%{$search}%");

            });
        }

        // total setelah filter
        $recordsFiltered = $query->count();

        // ambil data
        $data = $query
            ->orderBy($orderColumn, $orderDir)
            ->offset($start)
            ->limit($length)
            ->get();

        return response()->json([
            'draw' => intval($draw),

            'recordsTotal' => $recordsTotal,

            'recordsFiltered' => $recordsFiltered,

            'data' => $data
        ]);
    }
}
