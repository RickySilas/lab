<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('reset_password/{token}', ['as' => 'password.reset', function($token)
{
    // implement your reset password route here!
}]);

// Route::get('/', function () {
    // return view('auth.login');
    // return view('emergency');
// });

Route::redirect('/', '/login');

Route::get('/addsample', function () {
	return view('addsample');
});

Route::get('login/facility', 'Auth\\LoginController@fac_login')->name('login.facility');
Route::post('login/facility', 'Auth\\LoginController@facility_login');

Auth::routes();

Route::get('datatables', function () {
	return view('datatables');
});
Route::resource('district', 'DistrictController');

Route::get('error', function(){
	return view('errors.error', ['code' => '500', 'title' => 'Internal server error', 'description' => 'Sorry, there was an internal server error that occured. Please try again later']);
});

Route::get('facility/served', 'FacilityController@served');
Route::get('facility/withoutemails', 'FacilityController@withoutemails')->name('withoutemails');
Route::get('facility/withoutG4S', 'FacilityController@withoutG4S')->name('withoutG4S');
Route::resource('facility', 'FacilityController');

// Route::get('/home', function () {
// 	return view('home');
// });
Route::get('/home', 'HomeController@index');

Route::middleware(['web', 'auth'])->group(function(){

	Route::prefix('batch')->name('batch.')->group(function () {
		Route::get('dispatch/', 'BatchController@batch_dispatch');
		Route::post('complete_dispatch/', 'BatchController@confirm_dispatch');
		Route::get('site_approval/', 'BatchController@approve_site_entry');
		Route::get('site_approval/{batch}', 'BatchController@site_entry_approval');
		Route::get('index/{page?}/{date_start?}/{date_end?}', 'BatchController@display_batches');
		Route::get('summary/{batch}', 'BatchController@summary');
		Route::get('individual/{batch}', 'BatchController@individual');
	});
	Route::resource('batch', 'BatchController');


	Route::prefix('viralbatch')->name('viralbatch.')->group(function () {
		Route::get('dispatch/', 'ViralbatchController@batch_dispatch');
		Route::post('complete_dispatch/', 'ViralbatchController@confirm_dispatch');
		Route::get('site_approval/', 'ViralbatchController@approve_site_entry');
		Route::get('site_approval/{batch}', 'ViralbatchController@site_entry_approval');
		Route::get('index/{page?}/{date_start?}/{date_end?}', 'ViralbatchController@display_batches');
		Route::get('summary/{batch}', 'ViralbatchController@summary');
		Route::get('individual/{batch}', 'ViralbatchController@individual');
	});
	Route::resource('viralbatch', 'ViralbatchController');

	Route::get('/checkboxes', function () {
		return view('checkbox');
	});

	Route::get('datatables', function () {
		return view('datatables');
	});

	Route::resource('facility', 'FacilityController');
	// Route::get('/home', function () {
	// 	return view('home');
	// });
	Route::get('/home', 'HomeController@index');

	Route::post('sample/new_patient', 'SampleController@new_patient');
	Route::get('sample/release/{sample}', 'SampleController@release_redraw');
	Route::resource('sample', 'SampleController');

	Route::post('viralsample/new_patient', 'ViralsampleController@new_patient');
	Route::get('viralsample/release/{viralsample}', 'ViralsampleController@release_redraw');
	Route::resource('viralsample', 'ViralsampleController');

	Route::prefix('worksheet')->name('worksheet.')->group(function () {

		Route::get('index/{state?}/{date_start?}/{date_end?}', 'WorksheetController@index')->name('index_two');
		Route::get('create/{machine_type}', 'WorksheetController@create')->name('create_any');
		Route::get('print/{worksheet}', 'WorksheetController@print')->name('print');
		Route::get('cancel/{worksheet}', 'WorksheetController@cancel')->name('cancel');
		Route::get('upload/{worksheet}', 'WorksheetController@upload')->name('upload');
		Route::put('upload/{worksheet}', 'WorksheetController@save_results')->name('save_results');
		Route::get('approve/{worksheet}', 'WorksheetController@approve_results')->name('approve_results');
		Route::put('approve/{worksheet}', 'WorksheetController@approve')->name('approve');
	});

	Route::resource('worksheet', 'WorksheetController');

	// Route::post('viralsample/new_patient', 'ViralsampleController@new_patient');
	// Route::resource('viralsample', 'ViralsampleController');

	// Route::get('viralbatch/dispatch/', 'ViralbatchController@batch_dispatch');
	// Route::post('viralbatch/complete_dispatch/', 'ViralbatchController@confirm_dispatch');


	Route::prefix('viralworksheet')->name('viralworksheet.')->group(function () {

		Route::get('index/{state?}/{date_start?}/{date_end?}', 'ViralworksheetController@index')->name('index_two');
		// Route::get('create_abbot', 'ViralworksheetController@abbot')->name('create_abbot');
		Route::get('create/{machine_type}', 'ViralworksheetController@create')->name('create_any');		
		Route::get('print/{worksheet}', 'ViralworksheetController@print')->name('print');
		Route::get('cancel/{worksheet}', 'ViralworksheetController@cancel')->name('cancel');
		Route::get('upload/{worksheet}', 'ViralworksheetController@upload')->name('upload');
		Route::put('upload/{worksheet}', 'ViralworksheetController@save_results')->name('save_results');

		Route::get('approve/{worksheet}', 'ViralworksheetController@approve_results')->name('approve_results');
		Route::put('approve/{worksheet}', 'ViralworksheetController@approve')->name('approve');

	});

	Route::resource('viralworksheet', 'ViralworksheetController', ['except' => ['edit']]);

	Route::get('test', 'FacilityController@test');

	Route::get('refresh_cache', function () {
		$lookup = new \App\Lookup;
		$lookup->refresh_cache();
		return back();
	});

	Route::get('sysswitch/{sys}', function($sys) {
		if($sys == 'EID'){
			session(['sys_name' => 'Viralload']);
		}else if ($sys == 'Viralload'){
			session(['sys_name' => 'EID']);
		}

		echo json_encode(session()->pull('sys_name'));
	});

});
