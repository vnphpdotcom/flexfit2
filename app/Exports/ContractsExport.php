<?php

namespace App\Exports;

use App\Contract;
use Maatwebsite\Excel\Concerns\FromCollection;

class ContractsExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Contract::select('id','contract_code','name_customer')->all();
    }

    public function headings() :array {
        return ["ID", "Mã Hợp Đồng", "Tên Khách Hàng"];
    }
}
