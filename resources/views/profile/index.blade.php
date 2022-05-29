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

        
        </div>
        <div class="col-md-12 mt-3">
        <div class="card">
            <div class="card-header">
            <h3 class="my-3 fw-bold"><i class="fa-solid fa-user-pen me-2"></i>Edit Profil</h3>
            </div>
            <div class="card-body">
            <form method="POST" action="{{ url('profile') }}">
                        @csrf

                        <div class="form-group row mb-3">
                            <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $user->name }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row mb-3">
                            <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('E-Mail') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $user->email }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row mb-3">
                            <label for="phone_number" class="col-md-4 col-form-label text-md-end">No. HP</label>

                            <div class="col-md-6">
                                <input id="phone_number" type="text" class="form-control @error('phone') is-invalid @enderror" name="phone_number" value="{{ $user->phone_number }}" required autocomplete="phone_number" autofocus>

                                @error('phone_number')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row mb-3">
                            <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row mb-3">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-end">{{ __('Konfirmasi Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation">
                            </div>
                        </div>

                        <div class="form-group row mb-3">
                            <label for="address" class="col-md-4 col-form-label text-md-end">Alamat</label>

                            <div class="col-md-6">
                                <textarea name="address" class="form-control @error('address') is-invalid @enderror" required="" autofocus>{{ $user->address }}</textarea>

                                @error('address')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    Save
                                </button>
                            </div>
                        </div>
                    </form>
            </div>
        </div>
        </div>
    </div>
    
</div>
@endsection
