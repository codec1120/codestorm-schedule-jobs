<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {
	public function index ()
	{
		return $this->load->view('main');
	}

	public function getCalendarTemplate()
	{
		$baseUrl = base_url();

		die(
			json_encode(
				array(
					'success' => true,
					'template' => $this->load->view('calendar', '', TRUE),
					'scriptPath' => "{$baseUrl}assets/js/calendar.js"
				)
			)
		);	
	}

	public function getOrderTemplate()
	{
		$baseUrl = base_url();
		
		die(
			json_encode(
				array(
					'success' => true,
					'template' => $this->load->view('schedule/order', '', TRUE),
					'scriptPath' => "{$baseUrl}assets/js/order_scheduler/order_scheduler.js"
				)
			)
		);	
	}
}
