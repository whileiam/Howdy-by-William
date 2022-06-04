<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Item;
use App\Models\Order;
use App\Models\User;
use App\Models\OrderDetail;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Alert;


class OrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index($id)
    {
        $item = Item::where('id', $id)->first();
        return view('order.index', compact('item'));
    }

    public function order(Request $request, $id)
    {
        $item = Item::where('id', $id)->first();
        // DB::table('orders')->truncate();
        $date = Carbon::now();

        // Validation Check for Stock
        if ($request->order_number > $item->stock) {
            alert()->error('Gagal', 'Maaf, Stok Tidak Mencukupi');
            return redirect('order/' . $id);
        }

        // Validation Check for Order
        $check_order = Order::where('user_id', Auth::user()->id)->where('status', 0)->first();

        // Save to orders Table
        if (empty($check_order)) {
            $order = new Order;
            $order->user_id = Auth::user()->id;
            $order->date = $date;
            $order->status = 0;
            $order->subtotal = 0;
            $order->unique_code = mt_rand(100, 999);
            $order->save();
        }

        // Save to order_details Table
        $order_new = Order::where('user_id', Auth::user()->id)->where('status', 0)->first();
        // DB::table('order_details')->truncate();

        // Validation Check for Order Detail
        $check_order_detail = OrderDetail::where('item_id', $item->id)->where('order_id', $order_new->id)->first();

        // If Order_Detail per id is empty, create new Order_Detail
        if (empty($check_order_detail)) {
            $order_detail = new OrderDetail;
            $order_detail->item_id = $item->id;
            $order_detail->order_id = $order_new->id;
            $order_detail->total = $request->order_number;
            $order_detail->subtotal = $item->price * $request->order_number;
            $order_detail->save();
        }
        else {
            $order_detail = OrderDetail::where('item_id', $item->id)->where('order_id', $order_new->id)->first();

            $order_detail->total = $order_detail->total + $request->order_number;

            // Current Price Counted with Nrwer Price
            $price_order_detail_new = $item->price * $request->order_number;
            $order_detail->subtotal = $order_detail->subtotal + $price_order_detail_new;
            $order_detail->update();
        }

        // Subtotal
        $order = Order::where('user_id', Auth::user()->id)->where('status', 0)->first();
        $order->subtotal = $order->subtotal + $item->price * $request->order_number;
        $order->update();

        alert()->success('Sukses', 'Produk Berhasil Disimpan ke Keranjang');
        return redirect('checkout');
    }

    public function checkout()
    {
        $order = Order::where('user_id', Auth::user()->id)->where('status', 0)->first();
        $order_details = [];
        if (!empty($order)) {
            $order_details = OrderDetail::where('order_id', $order->id)->get();
        }

        return view('order.checkout', compact('order', 'order_details'));
    }

    public function delete_cart($id)
    {
        $order_detail = OrderDetail::where('id', $id)->first();

        $order = Order::where('id', $order_detail->order_id)->first();
        $order->subtotal = $order->subtotal - $order_detail->subtotal;


        if ($order->subtotal == 0) {
            DB::table('orders')->count();
            $order->delete();
        }
        else {
            $order->update();
        }

        $order_detail->delete();

        alert()->error('Sukses', 'Pesanan Telah Dihapus');
        return redirect('checkout');
    }

    public function confirm_checkout()
    {

        // Checking for User Address and Phone
        $user = User::where('id', Auth::user()->id)->first();

        if (empty($user->address && $user->phone_number)) {
            alert()->error('Gagal', 'Identitas Harap Dilengkapi');
            return redirect('profile');
        }

        $order = Order::where('user_id', Auth::user()->id)->where('status', 0)->first();
        $order_id = $order->id;

        $order->status = 1;
        $order->update();

        $order_details = OrderDetail::where('order_id', $order_id)->get();
        foreach ($order_details as $order_detail) {
            $item = Item::where('id', $order_detail->item_id)->first();
            $item->stock = $item->stock - $order_detail->total;
            $item->update();
        }

        alert()->success('Sukses', 'Melanjutkan ke Proses Pembayaran...');
        return redirect('history/' . $order_id);
    }
}
