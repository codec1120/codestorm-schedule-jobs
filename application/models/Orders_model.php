<?php

class Orders_model extends CI_model{
    protected $orderTable = 'orders';
    protected $scheduleTable = 'schedules';
    
    public function getOrders()
    {
        try {
            return $this->db->query("
                SELECT 
                    orders.customer,
                    orders.priority,
                    orders.order_id,
                    orders.client_order_ref,
                    orders.date_added,
                    orders.planning_start_date as from_date,
                    orders.planning_complete_date as to_date
                FROM 
                    schedules
                INNER JOIN
                    orders ON DATE_FORMAT(orders.planning_start_date, '%Y-%m-%d') >= schedules.start_date OR DATE_FORMAT(orders.planning_complete_date, '%Y-%m-%d') <= schedules.end_date
                WHERE DATE_FORMAT(orders.planning_start_date, '%Y-%m-%d') != '0000-00-00' OR (orders.planning_complete_date IS NULL OR orders.planning_complete_date != '0000-00-00')
                GROUP BY orders.order_id
                Order by orders.planning_start_date, orders.planning_complete_date ASC
            ")->result_array();
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }

    public function addSchedule($data)
    {
        return $this->db->insert($this->scheduleTable, $data);
    }

    public function getSchedules()
    {
        try {
            return $this->db->select("id, start_date, end_date")
                ->get($this->scheduleTable)->result_array();
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }

    public function getDates($data)
    {
        return $this->db->query("SELECT
            * 
        FROM 
            schedules  
        WHERE 
        start_date >= '".$data['start_date']."'OR end_date >= '".$data['end_date']."' ")->row();
    }

    public function getWhere($table, $array)
    {
        return $this->db->get_where($table ,$array);
    }

    public function getEditSchedules($data, $additionalWhereClause)
    {
        return $this->db->query("SELECT
            * 
        FROM 
            schedules  
        WHERE 
        (start_date = '".$data['start_date']."'OR end_date = '".$data['end_date']."') ".$additionalWhereClause." ")->row();
    }

    public function updateSchedule($data, $id)
    {
        $this->db->where('id', $id)->update($this->scheduleTable, $data);
    }

    public function delete($table, $id)
    {
        $this->db->where('id', $id)->delete($table);
    }
}