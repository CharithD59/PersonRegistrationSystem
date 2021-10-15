@extends('layout')

@section('content')
    <div class="row heading"></div>
    <div class="row d-flex justify-content-center">
        <div class="col-xl-8 col-md-6 col-sm-12">
            <div class="card mt-4">
                <div class="card-header d-flex justify-content-between align-items-center pb-4">
                    <strong class="card-title text-center mx-auto">EDIT USER DETAILS</strong>
                </div>
                <form action="{{route('user.update', $user->id)}}" method="POST">
                    @csrf
                    <div class="col-sm-12">
                    <div class="left">
                            <label for="number" class="label">ID Number</label>
                            <input id="number" type="text" name="number" class=" form-control effect" placeholder="Enter Your ID Number" value="{{$user->number}}">
                            <p style="color: red">@error('number') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="firstName" class="label">First Name</label>
                            <input id="firstName" type="text" name="firstName" value="{{$user->firstName}}" class=" form-control effect" placeholder="Roy...">
                            <p style="color: red">@error('firstName') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="lastName" class="label">Last Name</label>
                            <input id="lastName" type="text" name="lastName" value="{{$user->lastName}}" class="form-control effect" placeholder="Pearson...">
                            <p style="color: red">@error('lastName') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="mobile" class="label">Mobile</label>
                            <input id="mobile" type="text" name="mobile" value="{{$user->mobile}}" class="form-control effect" placeholder="0704467943">
                            <p style="color: red">@error('mobile') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="email" class="label">Email</label>
                            <input id="email" type="text" name="email" value="{{$user->email}}" class="form-control effect" placeholder="name@example.com">
                            <p style="color: red">@error('email') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="address" class="label">Address</label>
                            <input id="address" type="text" name="address" class="form-control effect" placeholder="Enter Your Address" value="{{$user->address}}">
                            <p style="color: red">@error('address') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="date" class="label">DOB</label>
                            <input id="date" type="date" name="date" class="form-control effect" value="{{$user->date}}">
                            <p style="color: red">@error('date') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="age" class="label">Age</label>
                            <input id="age" type="age" name="age" placeholder="Enter Your Age" class="form-control effect" value="{{$user->age}}">
                            <p style="color: red">@error('age') {{$message}} @enderror</p>
                        </div>
                        <div class="left">
                            <label for="religion" class="label">Religion</label>
                            <select class="form-control effect" name="religion" id="religion" value="{{$user->religion}}">
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
                            <select class="form-control effect" name="nationality" id="nationality" value="{{$user->nationality}}">
                                <option value="">Select Nationality</option>
                                <option value="Srilanka">Sri Lanka</option>
                                <option value="Other">Other</option>
                            </select>
                            <p style="color: red">@error('nationality') {{$message}} @enderror</p>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block mb-4">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection


