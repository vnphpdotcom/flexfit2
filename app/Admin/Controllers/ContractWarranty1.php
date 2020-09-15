<?php

namespace App\Admin\Controllers;

use App\Contract;
use App\ContractProduct;
use App\Http\Controllers\Controller;
use App\Product;
use Carbon\Carbon;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;

class ContractWarranty1 extends Controller
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
        $grid = new Grid(new ContractProduct);

        $grid->id('Id');
        $grid->model()->where(DB::raw('DATE_ADD(selected_at, INTERVAL 3 MONTH)'), '>', Carbon::now())->orderBy('selected_at', 'asc');
        $grid->contract_id('Contract id')->display(function ($id) {
            return Contract::where('id',$id)->first()->contract_code;
        });
        $grid->product_id('Product id')->display(function ($id) {
            return Product::where('id',$id)->first()->name;
        });
        $grid->selected_at('Trạng Thái Bảo Trì')->display(function ($date) {
            $countdown = Carbon::now()->diffInDays(Carbon::parse($date)->addMonth(3), false);
            return "<div class='alert-success text-center'>".(($countdown>=0)?$countdown." ngày nữa":"Đã Hết Hạn")."</div>";
        });
        $grid->filter(function ($filter) {
            $filter->between('selected_at', 'Created Time')->datetime();
        });
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
        $show = new Show(ContractProduct::findOrFail($id));

        $show->id('Id');
        $show->contract_id('Contract id');
        $show->product_id('Product id');
        $show->selected_at('Selected at');
        $show->created_at('Created at');
        $show->updated_at('Updated at');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new ContractProduct);

        $form->number('contract_id', 'Contract id');
        $form->number('product_id', 'Product id');
        $form->datetime('selected_at', 'Selected at')->default(date('Y-m-d H:i:s'));

        return $form;
    }
}
