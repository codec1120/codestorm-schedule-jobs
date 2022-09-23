<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if (!function_exists('isAdmin')) {
   function isAdmin() {
        $ci=& get_instance();

        $userId = $ci->session->userdata('id') ?? 3;

        $role = $ci->db->get_where('user' ,array('id' => $userId))->row();

        if ($role->role == 0) {
            return true;
        }

        return false;
   }
}