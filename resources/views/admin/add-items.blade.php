@extends('layouts.app')

@section('title', __('Add Items'))

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{ url('home') }}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Admin Menu</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Add Items</li>
                </ol>
              </nav>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">          
                        <h4><i class="fa fa-pencil"></i> Admin Menu > Add Items</h4>
                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <form action="{{ url('add-items') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <input type="text" name="item_name" class="form-control" placeholder="Enter Item Name">
                            </div>
                            <div class="form-group">
                                <input type="text" name="price" class="form-control" placeholder="Enter Price">
                            </div>
                            <div class="form-group">
                                <input type="text" name="stock" class="form-control" placeholder="Enter Stock">
                            </div>
                            <div class="form-group">
                                <textarea name="description" id="" cols="30" rows="10"></textarea>
                            </div>
                            <div class="mb-3">
                                <label for="image" class="form-label">Default file input example</label>
                                <input class="form-control @error('image') is-invalid @enderror" type="file" id="image" name="image">
                                @error('image')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                              </div>
                            <div class="form-group">
                                <input type="submit" class="btn btn-primary">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection