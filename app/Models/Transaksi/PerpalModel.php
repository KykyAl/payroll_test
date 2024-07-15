<?php

namespace App\Models\Transaksi;

use CodeIgniter\Model;

class PerpalModel extends Model
{
    protected $table            = 'perpal';
    protected $primaryKey       = 'no_transaksi';
    protected $useAutoIncrement = false;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [

        'no_transaksi',
        'tanggal',
        'id',
        'nama',
        'jlh_hari_perpal',
        'total_',
        'hasil_perhitungan_',
        'lokasi',
        'keterangan',
        'created_at',
        'created_by',
        'updated_at',
        'updated_by',
    ];

    protected bool $allowEmptyInserts = false;
    protected bool $updateOnlyChanged = true;

    protected array $casts = [];
    protected array $castHandlers = [];

    // Dates
    protected $useTimestamps = false;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    // Validation
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // Callbacks
    protected $allowCallbacks = true;
    protected $beforeInsert   = [];
    protected $afterInsert    = [];
    protected $beforeUpdate   = [];
    protected $afterUpdate    = [];
    protected $beforeFind     = [];
    protected $afterFind      = [];
    protected $beforeDelete   = [];
    protected $afterDelete    = [];

    public function insertDetail($data)
    {

        return $this->db->table('perpal_detail')->insertBatch($data);
    }
    public function deleteDetail($id)
    {
        $builder = $this->db->table('perpal_detail');
        $builder->where('no_transaksi', $id);
        return $builder->delete();
    }

    public function getCrewData()
    {
        $crew = $this->db->query("SELECT kode_karyawan, nama_karyawan, jabatan 
        FROM supir 
        ORDER BY kode_karyawan")->getResultArray();
        $data = array();
        foreach ($crew as $crw) {
            // $data[] = array("id" => $kbr['id_keberangkatan'], "text" => $kbr['kode_transaksi'] . ' - ' . $kbr['kode_keberangkatan'] . ' ' . date('d-m-Y', strtotime($kbr['tanggal_berangkat'])));
            $data[] = array("text" => $crw['kode_karyawan'], "kode_karyawan" => $crw['kode_karyawan'], "nama_karyawan" => $crw['nama_karyawan'], "jabatan" => $crw['jabatan']);
        }
        return $data;
    }


    public function get_all_perpal()
    {
        // Query untuk mengambil semua data dari tabel 'perpal'
        $query = $this->db->table($this->table)->get();

        // Mengembalikan hasil query sebagai array dari baris-baris yang ditemukan
        return $query->getResultArray();
    }


    public function delete_perpal($id)
    {
        return $this->delete($id);
    }


    public function getDetail($id)
    {
        // Asumsikan $data adalah kondisi untuk pencarian
        $builder = $this->db->table('perpal_detail');
        $builder->where('no_transaksi', $id);
        $builder->orderBy('id', 'ASC');
        $builder->orderBy('tanggal', 'ASC');

        $query = $builder->get();
        return $query->getResult(); // Mengembalikan hasil sebagai array
    }
    public function getTotalData($no_transaksi)
    {
        $builder = $this->db->table('perpal_detail');
        $builder->select('nik,nama_karyawan');
        $builder->where('no_transaksi', $no_transaksi);
        $builder->groupBy('nama_karyawan');
        $builder->orderBy('id', 'ASC');

        $query = $builder->get();
        return $query->getResult();
    }
    public function getUniqueId($hari, $bulan, $tahun)
    {

        $query = $this->db->query("SELECT MAX(RIGHT(no_transaksi, 4)) AS kd_max FROM perpal WHERE MONTH(tanggal)='" . $bulan . "' AND YEAR(tanggal) = '" . $tahun . "'  ");
        $row = $query->getRow();

        return $row->kd_max;
    }
    function getJamkerja($searchTerm = "")
    {
        $builder = $this->db->table('jam_kerja');
        $builder->select('*');
        $builder->where("kode like '%" . $searchTerm . "%' ");

        $query = $builder->get();
        $user = $query->getResultArray();

        // Initialize Array with fetched data
        $data = array();
        foreach ($user as $k) {
            $data[] = array("kode" => $k['kode'], "text" => $k['lokasi']);
        }
        return $data;
    }

    public function getJadwalByDate($startDate, $endDate)
    {
        $builder = $this->db->table('perpal_detail');
        $builder->select('*');
        $builder->where('tanggal >=', $startDate);
        $builder->where('tanggal <=', $endDate);
        $builder->orderBy('tanggal', 'ASC');

        $query = $builder->get();

        // Check if there are rows returned
        if ($query->getNumRows() > 0) {
            // Get the first row
            $row = $query->getRow();
            // Return the 'no_transaksi' field from the first row
            return $row->tanggal;
        }

        // If no rows returned, return the result as an array
        return $query->getResultArray();
    }
    public function getJadwalKaryawan($krw, $dari, $sampai)
    {
        $builder = $this->db->table('perpal_detail');
        $builder->select('*');
        $builder->where('nama_karyawan', $krw);
        $builder->where('tanggal >=', $dari);
        $builder->where('tanggal <=', $sampai);
        $builder->orderBy('tanggal', 'ASC');

        $query = $builder->get();
        return $query->getResultArray();
    }

    public function getDriverDetails($kode_supir)
    {
        // Contoh query untuk mengambil detail supir dari database
        $query = $this->db->select('nama_karyawan, jabatan')
            ->from('nama_tabel')
            ->where('kode_supir', $kode_supir)
            ->get();

        // Mengembalikan hasil query sebagai array
        return $query->row_array();
    }
}
