<?php

namespace App\Controllers\Master;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;
use App\Models\Master\CrewModel;
use App\Libraries\DataTables;

class Crew extends BaseController
{
    protected $crew;
    protected $DataTables;

    public function __construct()
    {

        $this->crew = new CrewModel();
        $this->request = service('request');
        $this->DataTables = new DataTables();
    }
    public function index(): string
    {
        $userData = auth()->user();
        $uri = service('uri'); // Get the URI service
        $mobile = $this->request->getUserAgent()->isMobile();
        $data = [
            'title' => 'Master Crew',
            'access' => json_decode($userData->access),
            'segment1' => $uri->getSegment(1),
            'segment2' => $uri->getSegment(2),
            'user' => $userData,
            'mobile' => $mobile
        ];

        return view('master/crew/index', $data);
    }
    public function get_data()
    {
        // sql query
        $query = "SELECT s.*,us.id as iduser FROM supir as s LEFT JOIN users as us on us.id_crew = s.kode_karyawan";
        // $where  = array('nama_kategori' => 'Tutorial');
        $where  = null;
        // jika memakai IS NULL pada where sql
        $isWhere = null;
        // $isWhere = 'artikel.deleted_at IS NULL';
        $search = array('kode_karyawan', 'nama_karyawan', 'jabatan', 'no_sim', 'alamat1', 'alamat2', 'no_ktp', 'tanggal_masuk');
        echo $this->DataTables->BuildDatatables($query, $where, $isWhere, $search);
    }
    public function read()
    {
        $data = $this->crew->find($_REQUEST['id']);

        if ($data) {
            $data = array(
                'response' => 'success',
                'data'    => $data

            );
        } else {
            $data = array(
                'response' => 'failed',
                'messagne' => 'Data tidak ada'
            );
        }
        echo json_encode($data);
    }
}
