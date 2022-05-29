@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12 mt-2">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{url('home')}}" class="text-decoration-none text-reset">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Riwayat Pemesanan</li>
            </ol>
        </nav>
        </div>
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                <h3 class="mt-2"><i class="fa-solid fa-clock-rotate-left"></i> Riwayat Pemesanan</h3>
                </div>
                <div class="card-body">
                <table class="table table-striped">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Tanggal</th>
                        <th>Status</th>
                        <th>Jumlah Harga</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1; ?>
                    @foreach($orders as $order)
                    <tr>
                        <td>{{ $no++ }}.</td>
                        <td>{{ $order->date }}</td>
                        <td>
                            @if($order->status == 1)
                                <span>Sudah Pesan & Belum Dibayar</span>
                            @else
                                <span>Sudah Dibayar</span>
                            @endif
                        </td>
                        <td>Rp. {{ number_format($order->subtotal + $order->unique_code) }}</td>
                        <td>
                            <a href="{{ url('history') }}/{{ $order->id }}" class="btn btn-primary btn-sm"><i class="fa-solid fa-circle-info"></i> Detail</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
                </div>
            </div>
            </div>
            </div>
        </div>

    </div>
</div>
@endsection
