<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Order extends CI_Controller {

	public function getOrders()
    {
        die(
			json_encode(
				array(
					'success' => true,
					'record' => $this->orders->getOrders()
				)
			)
		);
    }

	public function addSchedule()
	{
		if (empty($this->input->post('startDate')) || empty($this->input->post('endDate'))) {
			return die(json_encode(array('success' => false, 'message' => 'Start and End Date are required.')));
		}

		
		if (!empty($this->input->post('scheduleId'))) {
			$payload = [
				'start_date' => date('Y-m-d', strtotime($this->input->post('startDate'))),
				'end_date' => date('Y-m-d', strtotime($this->input->post('endDate')))
			];
			
			if ($this->orders->getEditSchedules($payload, ' AND id != '.$this->input->post('scheduleId').'')) {
				return die(json_encode(array('success' => false, 'message' => 'Start and End Date already exists.')));
			}

			$this->orders->updateSchedule($payload, $this->input->post('scheduleId'));
			return die(json_encode(array('success' => true, 'message' => 'Rework schedule successfully updated.')));
		} else {
			$payload = [
				'start_date' => date('Y-m-d', strtotime($this->input->post('startDate'))),
				'end_date' => date('Y-m-d', strtotime($this->input->post('endDate')))
			];
	
			if ($this->orders->getDates($payload)) {
				return die(json_encode(array('success' => false, 'message' => 'Start and End Date already exists.')));
			}
	
			$this->orders->addSchedule($payload);
			
			return die(json_encode(array('success' => true, 'message' => 'Rework schedule successfully added.')));
		}
	}

	public function getSchedules()
	{
		die(
			json_encode(
				array(
					'success' => true,
					'record' => $this->orders->getSchedules()
				)
			)
		);
	}

	public function getEditSchedules($requestId)
	{
		die(
			json_encode(
				array(
					'success' => true,
					'record' => $this->orders->getWhere('schedules', ['id' => $requestId])->row()
				)
			)
		);
	}

	public function deleteSchedule($deleteId)
	{
		$this->orders->delete('schedules', $deleteId);
		die(
			json_encode(
				array(
					'success' => true,
					'message' => 'Schedule deleted successfully'
				)
			)
		);
	}
}
