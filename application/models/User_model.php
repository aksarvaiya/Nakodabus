<?php
	class User_model extends CI_Model
	{
        //display functions 
        public function fill_source(){
            return $this->db->get('place')->result_array();
        }
        public function fill_destination($pid){
            return $this->db->where_not_in('place_name',$pid)->get('place')->result_array();
        }
        public function get_routes(){
            return $this->db->get('route')->result_array();
        }
        public function check_tickit(){
            
        }
        function fetch_data()
        {
            $query  = $this->db->get("booking");
            return $query;
        }

        // public function insert_booking($req){
        //     $insert['bus_id'] = $req['busid'];
        //     $insert['pnr_no'] = $req['pnr'];
        //     $insert['booking_status'] = '0';
        //     $insert['name'] = $req['fullname'];
        //     $insert['phone'] = $req['phone'];
        //     $insert['fare'] = $req['fare'];
        //     $insert['booking_date'] = $req['bdate'];
        //     $insert['booking_type'] = '1';
        //     $insert['journey_date'] = $req['jdate'];
        //     $insert['payment'] = '0';

        //     $this->db->insert('booking',$insert);

        //     return $this->db->insert_id();


        // }


        // Function For Insert Data
        public function register($data)
        {
            $insert['fullname'] = $data['fullname'];
            $insert['emailid'] = $data['email'];
            $insert['password'] = md5($data['pass']);
            
            $this->db->insert('usertbl',$insert);
        }

        public function p_success($pnr)
        {
            $data = array('payment' => 1, 'booking_status' => 1);
            $this->db->where('pnr_no', $pnr)->update('booking', $data);
        }


        // Function for Login
        public function checkEmail($data){
            return $this->db->where(array('emailid' => $data['email']))->get('usertbl')->result_array();         
        }
        public function fatchId($data){
            return $this->db->select('*')->where(array('emailid' => $data['email']))->get('usertbl')->result_array();  
        }

        public function search()
        {
            return $this->db->select('*')->from('booking');
        }

        //Function For Check Password For Chnage Password
        public function checkPass($data){
            return $this->db->where(array('password' => md5($data['pass'])))->get('usertbl')->result_array();
        }
        public function serchSeat($booking_id)
        {
            return $this->db->where(array('booking_id' => $booking_id))->get('booking_dtls')->result_array();
        }
        public function update_pass($result,$newpass){
            $id = $result[0]['uid'];
            $data = array(
                'password'=> md5($newpass)
            );
            $this->db->where('uid', $id)->update('usertbl', $data);
       }

       //Function For Update Profile
        public function updProfile($result,$user){
            $id = $user[0]['uid'];
            $data = array(
                'fullname' => $result['fullname'],
                'emailid' => $result['email'],
                'contectno' => $result['contect']
           ); 
           $this->db->where('uid', $id)->update('usertbl', $data);
       }

       public function search_Pnr($pnr_no){
                return $data = $this->db->select('*')->from('booking')->where('pnr_no',$pnr_no)->get()->result_array();
        }

        public function searchPhone($phone){
           return $data = $this->db->select('*')->from('booking')->where('phone',$phone)->get()->result_array();
           
        }
        
        // public function insert_booking()
        // {
        // $insert = $this->session->userdata('booking_data');
        // $booking = $this->db->insert('booking',$insert);
        // $bid = $this->db->insert_id();

        // $req = $insert = $this->session->userdata('req');
        // $i = 0;
        // foreach($req['seatno'] as $sn){
        //     $dt['booking_id'] = $bid;
        //     $dt['seat_number'] = $sn;
        //     $dt['gender'] = $req['gender'][$i];
        //     $i++;
        //     $this->db->insert('booking_dtls',$dt);
        // }
        // }
        
        public function delete_ticket($pnr)
        {
            $this->db->delete('booking',array('pnr_no' => $pnr));
        }    
    }
?>