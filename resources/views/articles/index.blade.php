@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12 mt-2">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('home')}}" class="text-decoration-none text-reset">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Artikel</li>
                </ol>
            </nav>
        </div>

        <h3 class="fw-bold"><a href="https://www.antaranews.com/" class="text-decoration-none text-reset">Berita Antara - Fashion</a></h3>
        @foreach($articles as $article)
        
        <div class="col-12 col-md-6 col-lg-6 col-xl-4 mb-3">
            <div class="card rounded h-100">
            <img src="{{ $article->images }}" alt="Foto Berita Fashion" height="250px">
                <div class="card-body">
                    <h5 class="card-title fw-bold mb-3">{{ $article->title }}</h5>
                    <p class="card-text">
                        Deskripsi: {{ $article->description }} <br>
                        <a href="{{ $article->link }}">Baca disini</a>
                    </p>
                </div>
                <div class="card-footer text-muted">
                Tanggal: {{ $article->date }}
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endsection