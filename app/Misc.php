<?php

namespace App;

use GuzzleHttp\Client;

use App\Common;
use App\Sample;
use App\SampleView;

class Misc extends Common
{

	public static function requeue($worksheet_id)
	{
		$samples = Sample::where('worksheet_id', $worksheet_id)->get();

		// Default value for repeatt is 0

		foreach ($samples as $sample) {
			if($sample->parentid == 0){
				if($sample->result == 2 || $sample->result == 3){
					$sample->repeatt = 1;
					$sample->save();
				}
			}
			else{
				$original = $this->check_original($sample->id);

				if($sample->run == 2){
					if( ($sample->result == 3 && $original->result == 3) || 
						($sample->result == 2 && $original->result == 3) || 
						($sample->result != 2 && $original->result == 2) )
					{
						$sample->repeatt = 1;
						$sample->save();
					}
				}

				else if($sample->run == 3){
					$second = $this->check_run($sample->id, 2);

					if( ($sample->result == 3 && $second->result == 2 && $original->result == 3) ||
						($original->result == 2 && $second->result == 1 && $sample->result == 2) ||
						($original->result == 2 && $second->result == 3 && $sample->result == 3) )
					{
						$sample->repeatt = 1;
						$sample->save();
					}
				}
			}
		}
		return true;
	}

	public static function save_repeat($sample_id)
	{
		$original = Sample::find($sample_id);
		if($original->run == 5) return false;

		$sample = new Sample;
		$fields = \App\Lookup::samples_arrays();
		$sample->fill($original->only($fields['sample_rerun']));
		$sample->run++;
		if($sample->parentid == 0) $sample->parentid = $original->id;
		
		$sample->save();
		return $sample;
	}

	public static function check_batch($batch_id, $issample=FALSE)
	{
		if($issample){
			$sample = Sample::find($batch_id);
			$batch_id = $sample->batch_id;
		}
		$double_approval = \App\Lookup::$double_approval; 
		if(in_array(env('APP_LAB'), $double_approval)){
			$where_query = "( receivedstatus=2 OR  (result > 0 AND repeatt = 0 AND approvedby IS NOT NULL AND approvedby2 IS NOT NULL) )";
		}
		else{
			$where_query = "( receivedstatus=2 OR  (result > 0 AND repeatt = 0 AND approvedby IS NOT NULL) )";
		}
		$total = Sample::where('batch_id', $batch_id)->where('parentid', 0)->get()->count();
		$tests = Sample::where('batch_id', $batch_id)
		->whereRaw($where_query)
		->get()
		->count();

		if($total == $tests){
			// DB::table('batches')->where('id', $batch_id)->update(['batch_complete' => 2]);
			\App\Batch::where('id', $batch_id)->update(['batch_complete' => 2]);
			// self::save_tat(\App\SampleView::class, \App\Sample::class, $batch_id);
		}
	}

	public static function check_original($sample_id)
	{
		$lab = auth()->user()->lab_id;

		$sample = Sample::select('samples.*')
		->join('batches', 'samples.batch_id', '=', 'batches.id')
		->where(['batches.lab_id' => $lab, 'samples.id' => $sample_id])
		->get()
		->first();

		return $sample;
	}

	public static function check_previous($sample_id)
	{
		$lab = auth()->user()->lab_id;
		$samples = Sample::select('samples.*')
		->join('batches', 'samples.batch_id', '=', 'batches.id')
		->where(['batches.lab_id' => $lab, 'samples.parentid' => $sample_id])
		->get();

		return $samples;
	}

	public static function check_run($sample_id, $run=2)
	{
		$lab = auth()->user()->lab_id;
		$sample = Sample::select('samples.*')
		->join('batches', 'samples.batch_id', '=', 'batches.id')
		->where(['batches.lab_id' => $lab, 'samples.parentid' => $sample_id, 'run' => $run])
		->get()
		->first();

		return $sample;
	}
	

    public static function get_subtotals($batch_id=NULL, $complete=true)
    {

        $samples = Sample::selectRaw("count(samples.id) as totals, batch_id, result")
            ->join('batches', 'batches.id', '=', 'samples.batch_id')
            ->when($batch_id, function($query) use ($batch_id){
                if (is_array($batch_id)) {
                    return $query->whereIn('batch_id', $batch_id);
                }
                else{
                    return $query->where('batch_id', $batch_id);
                }
            })
            ->when($complete, function($query){
                return $query->where('batch_complete', 2);
            })
            ->where('repeatt', 0)
            ->where('receivedstatus', '!=', 2)
            ->groupBy('batch_id', 'result')
            ->get();

        return $samples;
    }

    public static function get_rejected($batch_id=NULL, $complete=true)
    {
        $samples = Sample::selectRaw("count(samples.id) as totals, batch_id")
            ->join('batches', 'batches.id', '=', 'samples.batch_id')
            ->when($batch_id, function($query) use ($batch_id){
                if (is_array($batch_id)) {
                    return $query->whereIn('batch_id', $batch_id);
                }
                return $query->where('batch_id', $batch_id);
            })
            ->when($complete, function($query){
                return $query->where('batch_complete', 2);
            })
            ->where('receivedstatus', 2)
            ->groupBy('batch_id')
            ->get();

        return $samples;
    }



    public static function get_maxdatemodified($batch_id=NULL, $complete=true)
    {
        $samples = Sample::selectRaw("max(datemodified) as mydate, batch_id")
            ->join('batches', 'batches.id', '=', 'samples.batch_id')
            ->when($batch_id, function($query) use ($batch_id){
                if (is_array($batch_id)) {
                    return $query->whereIn('batch_id', $batch_id);
                }
                return $query->where('batch_id', $batch_id);
            })
            ->when($complete, function($query){
                return $query->where('batch_complete', 2);
            })
            ->where('receivedstatus', '!=', 2)
            ->groupBy('batch_id')
            ->get();

        return $samples;
    }

    public static function get_maxdatetested($batch_id=NULL, $complete=true)
    {
        $samples = Sample::selectRaw("max(datetested) as mydate, batch_id")
            ->join('batches', 'batches.id', '=', 'samples.batch_id')
            ->when($batch_id, function($query) use ($batch_id){
                if (is_array($batch_id)) {
                    return $query->whereIn('batch_id', $batch_id);
                }
                return $query->where('batch_id', $batch_id);
            })
            ->when($complete, function($query){
                return $query->where('batch_complete', 2);
            })
            ->where('receivedstatus', '!=', 2)
            ->groupBy('batch_id')
            ->get();

        return $samples;
    }

    public static function patient_sms()
    {
        ini_set("memory_limit", "-1");
    	$samples = SampleView::whereNotNull('patient_phone_no')->whereNull('time_result_sms_sent')->get();

    	foreach ($samples as $key => $sample) {
    		// English
    		if($sample->preferred_language == 1){
    			if($sample->result == 2){
    				$message = $sample->patient_name . " Jambo, baby's results are ready. Please come to the clinic when you can. Thank You";
    			}
    			else if($sample->result == 3 || $sample->result == 5){
    				$message = $sample->patient_name . " Jambo,  please come to the clinic as soon as you can! Thank you";
    			}
    			else{
    				if($sample->receivedstatus == 2){
    					$message = $sample->patient_name . " Jambo,  please come to the clinic as soon as you can! Thank you";
    				}
    				else{
    					$message = $sample->patient_name . " Jambo,  please come to the clinic as soon as you can! Thank you"; 	
    				}
    			}
    		}
    		// Kiswahili
    		else{
    			if($sample->result == 2){
    				$message = $sample->patient_name . " Jambo, matokeo ya mtoto yako tayari. Tafadhali kuja kliniki utakapoweza. Asante.";
    			}
    			else if($sample->result == 3 || $sample->result == 5){
    				$message = $sample->patient_name . " Jambo, kuja kliniki utakapoweza. Asante.";
    			}
    			else{
    				if($sample->receivedstatus == 2){
    					$message = $sample->patient_name . " Jambo, kuja kliniki utakapoweza. Asante.";
    				}
    				else{
    					$message = $sample->patient_name . " Jambo, kuja kliniki utakapoweza. Asante.";
    				}
    			}    			
    		}

    		if(!$message) continue;

	        $client = new Client(['base_uri' => self::$sms_url]);

			$response = $client->request('post', '', [
				'headers' => [
					'Accept' => 'application/json',
					// 'Content-Length' => strlen($message)
				],
				'auth' => [env('SMS_USERNAME'), env('SMS_PASSWORD')],
				'form_params' => [
					'sender' => env('SMS_SENDER_ID'),
					'recepient' => $sample->patient_phone_no,
					'message' => $message,
				],

			]);

			$body = json_decode($response->getBody());
    	}

    }

    public static function sms_test()
    {
        $sms = json_encode([
				'sender' => env('SMS_SENDER_ID'),
				'recepient' => '254702266217',
				'message' => 'This is a successful test.',
			]);

        $client = new Client(['base_uri' => self::$sms_url]);


		$response = $client->request('post', '', [
			'headers' => [
				// 'Accept' => 'application/json',
				// 'Content-Length' => strlen($sms)
			],
			'auth' => [env('SMS_USERNAME'), env('SMS_PASSWORD')],
			'debug' => true,
			'http_errors' => false,
			'form_params' => [
				'sender' => env('SMS_SENDER_ID'),
				'recepient' => '254702266217',
				'message' => 'This is a successful test.',
			],

		]);

		$body = json_decode($response->getBody());
		echo 'Status code is ' . $response->getStatusCode();
		dd($body);

		// $httpRequest = curl_init(self::$sms_url);
		// curl_setopt($httpRequest, CURLOPT_NOBODY, true);
		// curl_setopt($httpRequest, CURLOPT_POST, true);
		// curl_setopt($httpRequest, CURLOPT_POSTFIELDS, $sms);
		// curl_setopt($httpRequest, CURLOPT_TIMEOUT, 30); //timeout after 30 seconds
		// curl_setopt($httpRequest, CURLOPT_RETURNTRANSFER,1);
		// curl_setopt($httpRequest, CURLOPT_HTTPHEADER, array('Content-Type: application/json','Content-Length: ' . strlen($sms)));
		// curl_setopt($httpRequest, CURLOPT_HTTPAUTH, CURLAUTH_ANY);
		// // curl_setopt($httpRequest, CURLOPT_USERPWD, "$username:$password");
		// curl_setopt($httpRequest, CURLOPT_USERPWD, env('SMS_USERNAME') .':'. env('SMS_PASSWORD'));
		// $results=curl_exec ($httpRequest);
		// $status_code = curl_getinfo($httpRequest, CURLINFO_HTTP_CODE); //get status code
		// curl_close ($httpRequest);
		// $response = json_decode($results);
		// echo $status_code;
		// dd($response);
    }
}
