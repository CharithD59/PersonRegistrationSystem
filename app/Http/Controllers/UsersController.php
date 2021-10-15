<?php

namespace App\Http\Controllers;

use App\User;
use DB;
use App\Users;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UsersController extends Controller
{
    public function index(){

        $data  = Users::where('email','=', Session('LoggedUser'))->first();

        $users = Users::all();
        return view('index', compact('users', 'data'));
    }

    public function create(){
        return view('create');
    }

    public function store(Request $request){

        $request->validate([
            'number' => 'required|max:9|min:9',
            'firstName' => 'required|max:15',
            'lastName' => 'required|max:15',
            'mobile' => 'required|max:10|min:10',
            'email' => 'email:rfc,dns|unique:users',
            'address' => 'required|max:35',
            'password' => 'required|max:10|min:5',
            'date' => 'required',
            'age' => 'required|max:2|min:1',
            'religion' => 'required',
            'nationality' => 'required',
        ]);

        /*Users::create([
            'firstName' => $request->firstName,
            'lastName' => $request->lastName,
            'mobile' => $request->mobile,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'created_at' => now()
        ]);*/

        $users = new Users();

        $users->number = $request->get('number');
        $users->firstName = $request->get('firstName');
        $users->lastName = $request->get('lastName');
        $users->mobile = $request->get('mobile');
        $users->email = $request->get('email');
        $users->address = $request->get('address');
        $users->password = Hash::make($request->get('password'));
        $users->date = $request->get('date');
        $users->age = $request->get('age');
        $users->religion = $request->get('religion');
        $users->nationality = $request->get('nationality');

        if ($request->has('image')){
            $image = $request->file('image');
            $imageName = 'File'.'-'.time().'.'.$image->getClientOriginalExtension();
            $destination = public_path('/images');
            $image->move($destination, $imageName);

            $users->imageName = $imageName;
        }

        $users->save();

        return redirect()-> route('user.login')->with('success', 'User has been Registered');
    }

    public function edit(Users $user){
        return view('edit')->with('user', $user);
    }

    public function update(Request $request, Users $user){

        $request->validate([
            'number' => 'required|max:9|min:9',
            'firstName' => 'required|max:15',
            'lastName' => 'required|max:15',
            'mobile' => 'required|max:10|min:10',
            'email' => 'email:rfc,dns',
            'address' => 'required|max:35',
            'date' => 'required',
            'age' => 'required|max:2|min:1',
            'religion' => 'required',
            'nationality' => 'required',
        ]);

        $user->update([
            'number' => $request->number,
            'firstName' => $request->firstName,
            'lastName' => $request->lastName,
            'mobile' => $request->mobile,
            'email' => $request->email,
            'address' => $request->address,
            'date' => $request->date,
            'age' => $request->age,
            'religion' => $request->religion,
            'nationality' => $request->nationality,
            'updated_at' => now()
        ]);
        return redirect()-> route('user.index')->with('success', 'User has been Updated');
    }

    public function destroy(Users $user){
        $user->delete();
        return redirect()-> route('user.index')->with('success', 'User has been Deleted');
    }

    public function login(){
        return view('login');
    }

    public function check(Request $request){
        $request->validate([
            'email' => 'email:rfc,dns',
            'password' => 'required|max:10|min:5',
        ]);

        $userInfo = Users::where('email','=', $request->email)->first();

        if(!$userInfo){
            return back()->with('fail', 'We do not recognize your email address');
        }else{
            if (Hash::check($request->password, $userInfo->password)){
                $request->session()->put('LoggedUser', $userInfo->email);
                return redirect('/index');
            }else{
                return back()->with('fail', 'Incorrect password');
            }
        }
    }

    public function logout(){
        if(session()->has('LoggedUser')){
            session()->pull('LoggedUser');
            return redirect('/login');
        }else{
            return 0;
        }
    }

    public function search(Request $request){

        $name = $cname =$request->input('name');

        $data  = Users::where('email','=', Session('LoggedUser'))->first();
        $users = Users::where('firstName','=', $name)->get();
        return view('index', compact('users', 'data'));
    }

}
