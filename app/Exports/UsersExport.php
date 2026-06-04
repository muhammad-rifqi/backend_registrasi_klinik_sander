<?php

namespace App\Exports;

use Illuminate\Support\Facades\Http;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use DB;

class UsersExport implements FromCollection, WithHeadings
{
    protected $from;
    protected $to;

    public function __construct($from, $to)
    {
        $this->from = $from;
        $this->to = $to;
    }

    // ?from=2026-05-1&to=2026-05-31

    // public function collection()
    // {
    //     return DB::table('registration_patients')->whereBetween('created_at', [$this->from, $this->to])
    //         ->select('id', 'fullname', 'nik', 'email')
    //         ->get();
    // }

    public function collection()
    {
        $response = Http::timeout(60)
            ->get('https://dev.klinikdrsanderb-emcu.com/api/v1/patients/getpatientsbydate', [
                'from' => $this->from,
                'to'   => $this->to
            ]);

        if (!$response->successful()) {
            return collect([]);
        }

        $result = $response->json();

        return collect($result['payload'] ?? [])
            ->map(function ($row) {
                return [
                    'id'       => $row['id'] ?? '',
                    'fullname' => $row['fullname'] ?? '',
                    'nik'      => $row['nik'] ?? '',
                    'email'    => $row['email'] ?? '',
                ];
            });
    }

    public function headings(): array
    {
        return [
            'ID',
            'Nama Lengkap',
            'NIK',
            'Email'
        ];
    }
}