@extends('layout')

@section('content')
    <div class="row heading"></div>
    <div class="row d-flex justify-content-center">
        <div class="col-xl-8 col-md-6 col-sm-12">
            <div class="card mt-4">
                <div class="card-header d-flex justify-content-between align-items-center pb-4">
                    <strong class="card-title text-center mx-auto">REGISTER</strong>
                </div>
                <form action="{{route('user.store')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="col-sm-12">
                    <div class="left">
                            <label for="number" class="label">ID Number</label>
                            <input id="number" type="text" name="number" class=" form-control effect" placeholder="Enter Your ID Number" value="{{old('number')}}">
                            <p style="color: red">@error('number') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="firstName" class="label">First Name</label>
                            <input id="firstName" type="text" name="firstName" class=" form-control effect" placeholder="Enter Your First Name" value="{{old('firstName')}}">
                            <p style="color: red">@error('firstName') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="lastName" class="label">Last Name</label>
                            <input id="lastName" type="text" name="lastName" class="form-control effect" placeholder="Enter Your Last Name" value="{{old('lastName')}}">
                            <p style="color: red">@error('lastName') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="mobile" class="label">Mobile</label>
                            <input id="mobile" type="text" name="mobile" class="form-control effect" placeholder="Enter Your Contact Number" value="{{old('mobile')}}">
                            <p style="color: red">@error('mobile') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="email" class="label">Email</label>
                            <input id="email" type="text" name="email" class="form-control effect" placeholder="name@example.com" value="{{old('email')}}">
                            <p style="color: red">@error('email') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="password" class="label">Password</label>
                            <input id="password" type="password" name="password" placeholder="Example@1" class="form-control effect">
                            <p style="color: red">@error('password') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="address" class="label">Address</label>
                            <input id="address" type="text" name="address" class="form-control effect" placeholder="Enter Your Address" value="{{old('address')}}">
                            <p style="color: red">@error('address') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="date" class="label">DOB</label>
                            <input id="date" type="date" name="date" class="form-control effect" value="{{old('date')}}">
                            <p style="color: red">@error('date') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="age" class="label">Age</label>
                            <input id="age" type="age" name="age" placeholder="Enter Your Age" class="form-control effect" value="{{old('age')}}">
                            <p style="color: red">@error('age') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="religion" class="label">Religion</label>
                            <select class="form-control effect" name="religion" id="religion" value="{{old('religion')}}">
                                <option value="">Select Religion</option>
                                <option value="Buddhism">Buddhism</option>
                                <option value="Islam">Islam</option>
                                <option value="Christianity">Christianity</option>
                                <option value="Other">Other</option>
                            </select>
                            <p style="color: red">@error('religion') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="nationality" class="label">Nationality</label>
                            <select class="form-control effect" name="nationality" id="nationality" value="{{old('nationality')}}">
                                <option value="">Select Nationality</option>
                                <option value="Srilanka">Sri Lanka</option>
                                <option value="Other">Other</option>
                            </select>
                            <p style="color: red">@error('nationality') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <input id="image" type="file" name="image" placeholder="Image" class="form-control effect">
                            <p style="color: red">@error('image') {{$message}} @enderror</p>
                        </div>
                        <a href="{{route('user.login')}}">I already have an account, Sign in</a>
                        <button type="submit" class="btn btn-primary btn-block mb-4 mt-4">Register</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
