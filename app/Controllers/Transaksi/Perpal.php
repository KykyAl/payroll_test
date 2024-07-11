<?php

namespace App\Controllers\Transaksi;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;
use App\Libraries\DataTables;
use App\Models\GetPerpal\GetPerpal;
use App\Models\Transaksi\PerpalModel;
use App\Models\Master\JamkerjaModel as MasterJamkerjaModel;

use App\Models\SupirModel;
use CodeIgniter\API\ResponseTrait;


class Perpal extends BaseController
{
    protected $perpal;
    protected $DataTables;
    protected $jamkerja;
    protected $karyawan;
    protected $supir;


    use ResponseTrait;

    public function __construct()
    {
        // Inisialisasi TrayekModel dalam constructor

        $this->jamkerja = new MasterJamkerjaModel();
        $this->request = service('request');
        $this->DataTables = new DataTables();
        $this->perpal = new PerpalModel();
    }
    public function index(): string
    {
        // Mengambil data dari model PerpalModel
        $data['perpal_list'] = $this->perpal->get_all_perpal();

        // Mengambil data crew
        $data['crew_list'] = $this->perpal->getCrewData();

        // Mengambil data supir dari SupirModel
        $supirModel = new SupirModel();
        $data['supir_list'] = $supirModel->findAll();

        // Data user yang sedang login
        $userData = auth()->user();

        // Memeriksa apakah request adalah AJAX
        if ($this->request->isAJAX()) {
            return json_encode($data['supir_list']);
        }

        // Mendapatkan URI dan cek apakah mobile
        $uri = service('uri'); // Get the URI service
        $mobile = $this->request->getUserAgent()->isMobile();
        // Data yang dikirimkan ke view
        $viewData = [
            'title' => 'Perpal',
            'access' => json_decode($userData->access),
            'segment1' => $uri->getSegment(1),
            'segment2' => $uri->getSegment(2),
            'user' => $userData,
            'mobile' => $mobile,
            'perpal_list' => $data['perpal_list'],
            'crew_list' => $data['crew_list'],
            'supir_list' => $data['supir_list']
        ];

        // Tampilkan view berdasarkan role user
        if ($userData->role == 1) {
            return view('transaksi/perpal/index', $viewData);
        } else {
            return view('transaksi/perpal/index2', $viewData);
        }
    }


    public function get_driver_details()
    {
        $kode_supir = $this->request->getPost('kode_supir'); // Ambil kode_supir dari parameter GET
        // dd($kode_supir);

        // Panggil model atau data layer Anda untuk mendapatkan detail supir berdasarkan kode_supir
        // $driver_details = $this->perpal->getDriverDetails($kode_supir);
        $model = new SupirModel();
        $supir = $model->where('kode_karyawan', $kode_supir)->first();

        // Return response as JSON
        header('Content-Type: application/json');
        return json_encode($supir);
    }


    public function getSupirData()
    {
        $model = new user();
        $supir = $model->findAll();

        return $this->respond($supir);
    }

    public function get_data()
    {


        // Query untuk mengambil semua data dari tabel 'tests'
        $query = $this->db->get('perpal');

        // Mengembalikan hasil query sebagai array dari baris-baris yang ditemukan
        return $query->result_array();
    }

    public function edit($segment)
    {
        $data['perpal'] = $this->perpal->find($segment);
        $userData = auth()->user();

        $uri = service('uri'); // Get the URI service
        $mobile = $this->request->getUserAgent()->isMobile();
        // Data yang dikirimkan ke view
        $viewData = [
            'title' => 'Edit',
            'access' => json_decode($userData->access),
            'segment1' => $uri->getSegment(1),
            'segment2' => $uri->getSegment(2),
            'user' => $userData,
            'mobile' => $mobile,
            'perpal' => $data['perpal'],

        ];

        // Tampilkan view berdasarkan role user
        if ($userData->role == 1) {
            return view('transaksi/perpal/edit', $viewData);
        } else {
            return view('transaksi/perpal/index2', $viewData);
        }
    }

    public function update()
    {
        $id = $this->request->getPost('no_transaksi');
        $data = [
            'no_transaksi' => $this->request->getPost('no_transaksi'),
            'tanggal' => $this->request->getPost('tanggal'),
            'nama' => $this->request->getPost('nama'),
            'jlh_hari_perpal' => $this->request->getPost('jlh_hari_perpal'),
            'lokasi' => $this->request->getPost('lokasi'),
            'keterangan' => $this->request->getPost('keterangan')
        ];




        if ($this->perpal->update($id, $data)) {
            // Set flashdata
            session()->setFlashdata('success', 'Data berhasil ditambah.');
        } else {
            // Set flashdata
            session()->setFlashdata('error', 'Data gagal ditambah.');
        }
        return redirect()->to('/transaksi/perpal');
    }


    public function delete2($segment)
    {



        if ($this->perpal->delete($segment)) {
            // Set flashdata
            session()->setFlashdata('success', 'Data berhasil dihapus.');
        } else {
            // Set flashdata
            session()->setFlashdata('error', 'Data gagal dihapus.');
        }
        return redirect()->to('/transaksi/perpal');
    }
    function dataCrew()
    {
        $postData = $this->request->getPost();
        $response = array();
        $response['token'] = csrf_hash();
        // $searchTerm = $postData['searchTerm'];
        if (!isset($postData['searchTerm'])) {
            $searchTerm = '';
        } else {
            $searchTerm = $postData['searchTerm'];
        }
        $response = $this->perpal->getCrewData();
        echo json_encode($response);
    }

    public function readjadwal()
    {
        $data = $this->perpal->find($_REQUEST['no_transaksi']);

        if ($data) {
            $data = array(
                'response' => 'success',
                'data'    => $data,
            );
        } else {
            $data = array(
                'response' => 'failed',
                'messagne' => 'Data tidak ada'
            );
        }
        echo json_encode($data);
    }
    public function readjadwal_detail()
    {
        $total = $this->perpal->getTotalData($_REQUEST['no_transaksi']);
        $data = $this->perpal->getDetail($_REQUEST['no_transaksi']);

        $grupdata = [];

        foreach ($data as $dt) {
            $nama_karyawan = $dt->nama_karyawan;
            if (!isset($grupdata[$nama_karyawan])) {
                $grupdata[$nama_karyawan] = [];
            }
            $grupdata[$nama_karyawan][] = $dt;
        }

        // $groupedData sekarang berisi data yang dikelompokkan berdasarkan kode_karyawan

        if ($data) {
            $data = array(
                'response' => 'success',
                'nama'    => $total,
                'data'    => $grupdata,
            );
        } else {
            $data = array(
                'response' => 'failed',
                'messagne' => 'Data tidak ada'
            );
        }
        echo json_encode($data);
    }

    public function create()
    {

        $datadetail = [];


        $userData = auth()->user();
        if (($userData->role == 1) || (in_array('create_transaksi_perpal', json_decode($userData->access)))) {



            $header['no_transaksi'] = $_REQUEST['no_transaksi'];
            $header['tanggal'] = date('Y-m-d', strtotime($_REQUEST['tanggal']));
            // $header['id'] = $_REQUEST['id'];
            $header['jabatan'] = $_REQUEST['jabatan'];
            $header['nama'] = $_REQUEST['nama'];
            $header['jlh_hari_perpal'] = $_REQUEST['jlh_hari_perpal'];
            $header['lokasi'] = $_REQUEST['lokasi'];
            $header['keterangan'] = $_REQUEST['keterangan'];
            $header['created_at'] = date('Y-m-d H:i:s');
            $header['created_by'] = $userData->id;

            // echo "<pre>" . var_export($header, true);
            // echo "<pre>" . var_export($datadetail, true);
            // die;


            $insert = $this->perpal->insert($header);

            if ($insert) {

                $data = array('response' => 'success', 'message' => 'Tambah data berhasil');
            } else {
                $data = array('response' => 'failed', 'message' => 'Tambah data gagal, silahkan dicoba lagi');
            }
        } else {
            $data = array('response' => 'error', 'message' => 'You dont have access');
        }
        echo json_encode($data);
    }

    public function delete()
    {
        $userData = auth()->user();
        if (($userData->role == 1) || (in_array('hapus_transaksi_perpal', json_decode($userData->access)))) {
            $id = $_REQUEST['id'];

            $delete = $this->perpal->delete($id);
            $delete2 = $this->perpal->deleteDetail($id);
            if ($delete && $delete2) {

                $data = array('response' => 'success', 'message' => 'Data berhasil dihapus');
            } else {
                $data = array('response' => 'failed', 'message' => 'Data gagal dihapus, silahkan dicoba lagi');
            }
        } else {
            $data = array('response' => 'error', 'message' => 'You dont have access');
        }
        echo json_encode($data);
    }

    public function getkaryawan()
    {
        // sql query
        $query = "SELECT id,nik,nama_lengkap FROM karyawan";
        // $where  = array('nama_kategori' => 'Tutorial');
        $where  = null;
        // jika memakai IS NULL pada where sql
        $isWhere = null;
        // $isWhere = 'artikel.deleted_at IS NULL';
        $search = array('nik', 'nama_lengkap');
        echo $this->DataTables->BuildDatatables($query, $where, $isWhere, $search);
    }
    function read_last_transaksi()
    {


        $tanggal = $_REQUEST['tanggal'];
        $tgl = explode('-', $tanggal);
        $hari = $tgl[0];
        $bulan = $tgl[1];
        $tahun = $tgl[2];
        echo json_encode($this->perpal->getUniqueId($hari, $bulan, $tahun));
    }
    public function search_jamkerja()
    {

        $data = $this->perpal->getJamkerja('');
        echo json_encode($data);
    }

    public function get_jadwal_karyawan()
    {

        $karyawan = $_REQUEST['karyawan'];
        $dari = date('Y-m-d', strtotime($_REQUEST['dari']));
        $sampai = date('Y-m-d', strtotime($_REQUEST['sampai']));

        $jadwal = $this->perpal->getJadwalKaryawan($karyawan, $dari, $sampai);
        if (!empty($jadwal)) {

            $data = array('response' => 'success', 'data' => $jadwal, 'message' => 'Data gagal dihapus, silahkan dicoba lagi');
        } else {

            $data = array('response' => 'failed', 'message' => 'Data gagal dihapus, silahkan dicoba lagi');
        }


        echo json_encode($data);
    }

    public function read()
    {
        $data = $this->karyawan->find($_REQUEST['id']);
        if ($data) {
            $data = array(
                'response' => 'success',
                'data'    => $data,
                'jabatan' => null
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
