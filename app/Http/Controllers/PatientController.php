<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exports\UsersExport;
use Maatwebsite\Excel\Facades\Excel;
use DB;

class PatientController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        if (!isset($_COOKIE['xxx1']) || !isset($_COOKIE['xxx2']) || !isset($_COOKIE['xxx3'])) {
            return redirect('/login');
        }

        $xxx1 = base64_decode(urldecode($_COOKIE['xxx1']));
        $xxx2 = base64_decode(urldecode($_COOKIE['xxx2']));
        $xxx3 = base64_decode(urldecode($_COOKIE['xxx3']));

        if(empty($xxx1) || empty($xxx2) || empty($xxx3)){
            return redirect('/login');
        }else{
            return view('registrasi.index', compact('xxx1'));
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

    public function data(Request $request)
    {
        if (!isset($_COOKIE['xxx1']) || !isset($_COOKIE['xxx2']) || !isset($_COOKIE['xxx3'])) {
            return redirect('/login');
        }
        
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

        $query = DB::table('registration_patients')
            ->select(
                'id',
                'fullname',
                'nik',
                'email'
            );

        $recordsTotal = DB::table('registration_patients')->count();

        if (!empty($search)) {

            $query->where(function ($q) use ($search) {

                $q->where('fullname', 'like', "%{$search}%")
                  ->orWhere('email', 'like', "%{$search}%");

            });
        }

        $recordsFiltered = $query->count();
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

    // public function export(Request $request)
    // {
    //     $from = $request->from; 
    //     $to   = $request->to;   
    //     $date = date('YmdHis');
    //     return Excel::download(new UsersExport($from, $to), $date.'.xlsx');
    // }

    public function export(Request $request)
    {
        $request->validate([
            'from' => 'required|date',
            'to'   => 'required|date',
        ]);

        return Excel::download(
            new UsersExport(
                $request->from,
                $request->to
            ),
            'users_' . now()->format('YmdHis') . '.xlsx'
        );
    }
}
