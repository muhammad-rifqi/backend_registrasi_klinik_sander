<?php

namespace App\Exports;

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

    public function collection()
    {
        return DB::table('registration_patients')->whereBetween('created_at', [$this->from, $this->to])
            ->select('id', 'fullname', 'nik', 'email')
            ->get();
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