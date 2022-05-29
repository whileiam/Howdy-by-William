@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
    <div class="col-md-12 mt-2">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{url('home')}}" class="text-decoration-none text-reset">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Profil</li>
            </ol>
        </nav>
        </div>

        <div class="col-md-12">
        <div class="card">
            <div class="card-header">
            <h3 class="my-3 fw-bold"><i class="fa-solid fa-user me-2"></i>Profil Diri</h3>
            </div>
            <div class="card-body">
                <table class="table">
                    <tbody>
                        <tr>
                            <td>Nama</td>
                            <td width="10">:</td>
                            <td>{{ $user-> name}}</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>:</td>
                            <td>{{ $user-> email}}</td>
                        </tr>
                        <tr>
                            <td>No. HP</td>
                            <td>:</td>
                            <td>{{ $user-> phone_number}}</td>
                        </tr>
                        <tr>
                            <td>Alamat</td>
                            <td>:</td>
                            <td>{{ $user-> address}}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <a href="{{ url('editprofile') }}">
            <button class="btn btn-primary mt-3">
                Edit Profile
            </button>
        </a>
    </div>
    
</div>
@endsection
