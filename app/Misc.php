<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Sample;
use DB;

class Misc extends Model
{

	public function requeue($worksheet_id)
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

	public function save_repeat($sample_id)
	{
		$sample = new Sample;
		$sample->fill( Sample::find($sample_id)->toArray() );

		if($sample->run == 4){
			return false;
		}

		if($sample->parentid == 0){
			$sample->parentid = $sample->id;
		}
		$sample->run = $sample->run + 1;
		$sample->id = $sample->worksheet_id = $sample->inworksheet = $sample->result = $sample->interpretation = $sample->approvedby = $sample->approvedby2 = $sample->datemodified = $sample->dateapproved = $sample->dateapproved2 = $sample->created_at = $sample->updated_at = null;
		$sample->repeatt = $sample->inworksheet = $sample->synched = 0;
		$sample->created_at = date('Y-m-d');

		$sample->save();
		return $sample;
	}

	public function check_batch($batch)
	{		
		$total = Sample::where('batch_id', $batch)->where('parentid', 0)->get()->count();
		$tests = Sample::where('batch_id', $batch)
		->whereRaw("( receivedstatus=2 OR  (result > 0 AND repeatt = 0 AND approvedby IS NOT NULL) )")
		->get()
		->count();

		if($total == $tests){
			DB::table('batches')->where('id', $batch)->update(['batch_complete' => 2]);
		}
	}

	public function check_original($sample_id)
	{
		// $lab = session()->auth()->id;

		// $sample = Sample::select('samples.*')
		// ->join('batches', 'samples.batch_id', '=', 'batches.id')
		// ->where(['batches.lab_id' => $lab, 'samples.id' => $sample_id])
		// ->get()
		// ->first();

		$sample = Sample::select('samples.*')
		->join('batches', 'samples.batch_id', '=', 'batches.id')
		->where(['samples.id' => $sample_id])
		->get()
		->first();

		return $sample;
	}

	public function check_previous($sample_id)
	{
		// $lab = auth()->user()->lab_id;

		// $samples = Sample::select('samples.*')
		// ->join('batches', 'samples.batch_id', '=', 'batches.id')
		// ->where(['batches.lab_id' => $lab, 'samples.parentid' => $sample_id])
		// ->get();

		$samples = Sample::select('samples.*')
		->join('batches', 'samples.batch_id', '=', 'batches.id')
		->where(['samples.parentid' => $sample_id])
		->get();

		return $samples;
	}

	public function check_run($sample_id, $run=2)
	{
		// $lab = auth()->user()->lab_id;

		// $sample = Sample::select('samples.*')
		// ->join('batches', 'samples.batch_id', '=', 'batches.id')
		// ->where(['batches.lab_id' => $lab, 'samples.parentid' => $sample_id, 'run' => $run])
		// ->get()
		// ->first();

		$sample = Sample::select('samples.*')
		->join('batches', 'samples.batch_id', '=', 'batches.id')
		->where(['samples.parentid' => $sample_id, 'run' => $run])
		->get()
		->first();

		return $sample;
	}

	public function working_days($startDate,$endDate){

	    //The total number of days between the two dates. We compute the no. of seconds and divide it to 60*60*24
	    //We add one to inlude both dates in the interval.
	    $days = (strtotime($endDate) - strtotime($startDate)) / 86400 + 1;

	    $no_full_weeks = floor($days / 7);

	    $no_remaining_days = fmod($days, 7);

	    //It will return 1 if it's Monday,.. ,7 for Sunday
	    $the_first_day_of_week = date("N",strtotime($startDate));

	    $the_last_day_of_week = date("N",strtotime($endDate));
	    // echo              $the_last_day_of_week;
	    //---->The two can be equal in leap years when february has 29 days, the equal sign is added here
	    //In the first case the whole interval is within a week, in the second case the interval falls in two weeks.
	    if ($the_first_day_of_week <= $the_last_day_of_week){
	        if ($the_first_day_of_week <= 6 && 6 <= $the_last_day_of_week) $no_remaining_days--;
	        if ($the_first_day_of_week <= 7 && 7 <= $the_last_day_of_week) $no_remaining_days--;
	    }

	    else{
	        if ($the_first_day_of_week <= 6) {
	        //In the case when the interval falls in two weeks, there will be a Sunday for sure
	            $no_remaining_days--;
	        }
	    }

	    //The no. of business days is: (number of weeks between the two dates) * (5 working days) + the remainder
		//---->february in none leap years gave a remainder of 0 but still calculated weekends between first and last day, this is one way to fix it
	   	$workingDays = $no_full_weeks * 5;
	    if ($no_remaining_days > 0 )
	    {
	      $workingDays += $no_remaining_days;
	    }

	    //We subtract the holidays
		/*    foreach($holidays as $holiday){
	        $time_stamp=strtotime($holiday);
	        //If the holiday doesn't fall in weekend
	        if (strtotime($startDate) <= $time_stamp && $time_stamp <= strtotime($endDate) && date("N",$time_stamp) != 6 && date("N",$time_stamp) != 7)
	            $workingDays--;
	    }*/

	    return $workingDays;
	}
}