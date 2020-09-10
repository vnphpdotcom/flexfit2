<?php

namespace App\Admin\Controllers;

use App\Contract;
use App\Http\Controllers\Controller;
use App\Library\TokenGenerator;
use App\Product;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class ContractController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('Index')
            ->description('description')
            ->body($this->grid());
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header('Detail')
            ->description('description')
            ->body($this->detail($id));
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('Edit')
            ->description('description')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('Create')
            ->description('description')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Contract);

        $grid->id('Id');
        $grid->contract_code('Contract code');
        $grid->name_customer('Name customer');
        $grid->construction_items('Construction items');
        $grid->phone('Phone');
        $grid->address('Address');
        $grid->email('Email');
        $grid->status_mainten('Status mainten');
        $grid->finish_date('Finish date');
        $grid->language('Language');

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Contract::findOrFail($id));

        //$show->id('Id');
        $show->contract_code('Mã Hợp Đồng');
        $show->name_customer('Tên Khách Hàng');
        $show->construction_items('Hạng Mục');
        $show->phone('Số Điện Thoại');
        $show->address('Địa Chỉ');
        $show->email('Email');
        $show->status_mainten('Trạng Thái')->using([true => 'Bảo Trì', false => 'Không Bảo Trì']);
        $show->finish_date('Ngày Hoàn Thành');
        $show->language('Ngôn Ngữ');
        $show->products('Sản Phẩm')->as(function ($products) {
            if(is_array($products))
            {
                $html = '<table class="table">
                              <thead>
                                <tr>
                                  <th scope="col">STT</th>
                                  <th scope="col">Tên Sản Phẩm</th>
                                  <th scope="col">Nhà Cung Cấp</th>
                                  <th scope="col">Trạng Thái</th>
                                </tr>
                              </thead>
                        <tbody>';
                $i = 1;
                foreach ($products as $item) {
                    $data = Product::where('id',(int)$item)->first();
                    if($data) {
                        $html .= '<tr>
                          <th scope="row">'.$i.'</th>
                          <td>'.$data->name.'</td>
                          <td>'.$data->provider.'</td>
                          <td>'.(($data->status_maitain_product)?'Bảo Trì':'Không Bảo Trì').'</td>
                        </tr>';
                        $i++;
                    }
                }
                $html .= '</tbody></table>';
                return $html;
            }
        })->unescape();
        $show->id('QR Code')->as(function ($id) {
            $data = Contract::where('id',$id)->first();
            if($data)
            {
                $token = base64_encode(TokenGenerator::encrypt($data->id.'<>'.$data->contract_code.'<>'.$data->email, env('APP_KEY'), 256));
                $url = env('APP_URL').'/hop-dong/'.$data->contract_code;
                $html = QrCode::size(400)->generate(env('APP_URL').'/'.$token);
                $html .= '<table class="table">';
                $html .= '<tr><td><strong>Đường Dẫn</strong></td><td> <a href="'.$url.'" target="_blank">'.$url.'</a></td></tr>';
                $html .= '<tr><td><strong>Token</strong></td><td> '.$token.'</td></tr>';
                $html .= '<tr><td><strong>Đường Dẫn Kèm Token</strong></td><td> <a href="'.env('APP_URL').'/'.$token.'" target="_blank">'.env('APP_URL').'/'.$token.'</a></td></tr>';
                $html .= '</table>';
                return $html;
            }
        })->unescape();
        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Contract);

        $form->text('contract_code', 'Mã Hợp Đồng');
        $form->text('name_customer', 'Tên Khách Hàng');
        $form->text('construction_items', 'Hạng Mục');
        $form->text('phone', 'Số Điện Thoại');
        $form->text('address', 'Địa Chỉ');
        $form->email('email', 'Email');
        $form->select('status_mainten', 'Trạng Thái')->options([true => 'Bảo Trì', false => 'Không Bảo Trì'])->default(true);
        $form->datetime('finish_date', 'Ngày Hoàn Thành')->default(date('Y-m-d H:i:s'));
        $form->text('language', 'Ngôn Ngữ');
        $form->multipleSelect('products',__('Sản Phẩm'))->options(function ($id) {
            $data = Product::find($id);
            if($data)
            {
                $result = [];
                foreach ($data as $item)
                {
                    $result[$item->id] = $item->name;
                }
                return $result;
            }

        })->ajax('/'.config('admin.route.prefix').'/api/product');

        return $form;
    }
}
