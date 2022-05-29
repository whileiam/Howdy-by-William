<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Item;
use App\Models\Order;
use App\Models\User;
use App\Models\OrderDetail;
use Illuminate\Support\Facades\Auth;
use Alert;

class HistoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(){
        $orders = Order::where('user_id', Auth::user()->id)->where('status','!=',0)->get();

        return view('history.index', compact('orders'));
    }

    public function history_detail($id){
        $order = Order::where('id', $id)->first();
        $order_details=[];
        $order_details = OrderDetail::where('order_id', $order->id)->get();
        
        return view('history.detail', compact('order', 'order_details'));
    }
}
