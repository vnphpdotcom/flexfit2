<?php


namespace App\Admin\Extensions;
use Encore\Admin\Grid;
Use Encore\Admin\Grid\Exporters\AbstractExporter;
class ContractsExporter extends  AbstractExporter
{
    protected $fileName = 'Contracts List.xlsx';
    protected $head = [];
    protected $body = [];

    public function __construct($filename = 'table', $head = null, $body = null, Grid $grid = null)
    {
        $this->filename = $filename;
        $this->head = $head;
        $this->body = $body;
        parent::__construct($grid);
    }


    protected $columns = [
        'id' => 'ID',
        'contract_code' => 'Mã Hợp Đồng',
        'name_customer' => 'Khách Hàng',
    ];

    public function export()
    {
        $titles = [];
        $filename = $this->filename.'.csv';
        $data = $this->getData();
        if (!empty($data)) {
            $columns = array_dot($this->sanitize($data[0]));
            $titles = array_keys($columns);
        }
        $output = self::putcsv(($this->head == []) ? array_keys($columns) : $this->head);
        if($this->body == []) {
            foreach ($data as $row) {
                $row = array_only($row, $titles);
                $output .= self::putcsv(array_dot($row));
            }
        }else {
            foreach ($this->body as $row) {
                $output .= self::putcsv(array_dot($row));
            }
        }
        $headers = [
            'Content-Encoding'    => 'UTF-8',
            'Content-Type'        => 'text/csv;charset=UTF-8',
            'Content-Disposition' => "attachment; filename=\"$filename\"",
        ];
        response(rtrim($output, "\n"), 200, $headers)->send();
        exit;
    }

    protected function sanitize(array $row)
    {
        return collect($row)->reject(function ($val) {
            return is_array($val) && !Arr::isAssoc($val);
        })->toArray();
    }

    protected static function putcsv($row, $fd = ',', $quot = '"')
    {
        $str = '';
        foreach ($row as $cell) {
            $cell = str_replace([$quot, "\n"], [$quot.$quot, ''], $cell);
            if (strstr($cell, $fd) !== false || strstr($cell, $quot) !== false) {
                $str .= $quot.$cell.$quot.$fd;
            } else {
                $str .= $cell.$fd;
            }
        }
        return substr($str, 0, -1)."\n";
    }
}