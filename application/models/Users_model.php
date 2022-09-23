<?php

class Users_model extends CI_model{
    protected $table = 'user';
    /**
     * @var User $id
     * Description: Get Specific User
    */
    public function getUser($id)
    {
        try {
            return $this->db->where('id', $id)
                ->get($this->table)
                ->row();
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }
    /**
     * @var Integer $userId
     * @var String $pincode
     * Description: Verify User Pincode
    */
    public function checkPin($userId, $pincode)
    {
        try {
            return $this->db->select('id, username, password')
                ->where('id', $userId)
                ->where('pincode', $pincode)
                ->get($this->table)
                ->row();
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }
}