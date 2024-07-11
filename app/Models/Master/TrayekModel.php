<?php

namespace App\Models\Master;

use CodeIgniter\Model;

class TrayekModel extends Model
{
    protected $table            = 'trayek';
    protected $primaryKey       = 'kode_trayek';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'kode_trayek',
        'nama_trayek',
        'golongan',
        'kota_asal',
        'kota_tujuan',
        'keberangkatan',
        'kepulangan',
        'uang_jalan_berangkat',
        'uang_jalan_pulang',
        'min_setoran',
        'limit_naik_setoran',
        'bonus_setoran',
        'max_bonus_setoran',
        'target_waktu',
        'bonus_waktu',
        'bonus_supir',
        'bonus_kernet',
        'bonus_lainnya',
        'keterangan',
        'created_at',
        'created_by',
        'updated_at',
        'updated_by'
    ];

    public function getAllKeberangkatan($aa = "", $asal, $tujuan)
    {

        $builder = $this->db->table('keberangkatan');
        $builder->select('*');
        $builder->where("kode_keberangkatan like '%" . $aa . "%' ");
        // $builder->where('kota_asal', $asal);
        // $builder->where('kota_sampai', $tujuan);

        $fetched_records = $builder->get();
        $keberangkatan = $fetched_records->getResultArray();

        // Initialize Array with fetched data
        $data = array();
        foreach ($keberangkatan as $kbr) {
            $data[] = array("id" => $kbr['id'], "text" => $kbr['kode_keberangkatan']);
        }
        return $data;
    }
    public function getKota($aa = "")
    {
        try {
            $builder = $this->db->table('kota');
            $builder->select('*');
            $builder->where("nama_kota like '%" . $aa . "%' ");
            $builder->orwhere("kode_kota like '%" . $aa . "%' ");

            $fetched_records = $builder->get();
            $kota = $fetched_records->getResultArray();

            // Initialize Array with fetched data
            $data = array();
            foreach ($kota as $k) {
                $data[] = array("id" => $k['id'], "text" => $k['nama_kota']);
            }

            return $data;
        } catch (\Exception $e) {
            exit($e->getMessage());
        }
    }

    function getTrayek($keyword = null, $start = 0, $length  = 0)
    {
        $builder = $this->db->table('trayek');
        $builder->select('trayek.*, k1.nama_kota as kota1, k2.nama_kota as kota2');
        $builder->join('kota as k1', 'k1.id = trayek.kota_asal');
        $builder->join('kota as k2', 'k2.id = trayek.kota_tujuan');
        if ($keyword) {
            $key = explode(" ", $keyword);
            for ($i = 0; $i < count($key); $i++) {
                $builder = $builder->orLike('kode_trayek', $key[$i]);
                $builder = $builder->orLike('nama_trayek', $key[$i]);
                $builder = $builder->orLike('k1.nama_kota', $key[$i]);
                $builder = $builder->orLike('k2.nama_kota', $key[$i]);
            }
        }
        if ($start != 0 or $length != 0) {
            $builder = $builder->limit($length, $start);
        }
        return  $builder->orderBy('kode_trayek', 'ASC')->get()->getResult();
    }
    public function getTrayekById($id)
    {
        return $this->db->table('trayek')
            ->select('trayek.*, k1.nama_kota as kota1, k2.nama_kota as kota2')
            ->join('kota as k1', 'k1.id = trayek.kota_asal')
            ->join('kota as k2', 'k2.id = trayek.kota_tujuan')
            ->where('kode_trayek', $id)
            ->get()
            ->getRow();
    }
    public function getKeberangkatanIn($data)
    {
        $query = $this->db->table('keberangkatan')
            ->whereIn('id', $data)
            ->get()
            ->getResultArray();
        return $query;
    }


    public function getUniqueId()
    {

        $query = $this->db->query('SELECT MAX(RIGHT(kode_trayek, 4)) AS kd_max FROM trayek');
        $row = $query->getRow();

        return $row->kd_max;
    }

    public function insertData($data, $detail, $premi)
    {

        // Memulai transaksi
        $this->db->transBegin();

        try {
            $this->db->table('trayek')->insert($data);
            $this->db->table('trayekbonus_detail')->insertBatch($detail);
            $this->db->table('trayekpremi_detail')->insertBatch($premi);

            if ($this->db->transStatus() === FALSE) {
                // Rollback transaction if something went wrong
                $this->db->transRollback();
                return 'error';
            } else {
                $this->db->transCommit();
                return 'success';
            }
        } catch (\Exception $e) {
            $this->db->transRollback();
            return 'error: ' . $e->getMessage();
        }
    }
    public function updateData($kd, $data, $detail, $premi)
    {

        // Memulai transaksi
        $this->db->transBegin();

        try {
            $this->db->table('trayek')->where('kode_trayek', $kd)->update($data);
            $this->deleteDetail($kd);
            $this->deletePremi($kd);
            $this->db->table('trayekbonus_detail')->insertBatch($detail);
            $this->db->table('trayekpremi_detail')->insertBatch($premi);


            if ($this->db->transStatus() === FALSE) {
                // Rollback transaction if something went wrong
                $this->db->transRollback();
                return 'error';
            } else {
                $this->db->transCommit();
                return 'success';
            }
        } catch (\Exception $e) {
            $this->db->transRollback();
            return 'error: ' . $e->getMessage();
        }
    }
    public function deleteData($kd)
    {


        // Memulai transaksi
        $this->db->transBegin();

        try {
            $this->db->table('trayek')->delete(['kode_trayek' => $kd]);
            $this->deleteDetail($kd);
            $this->deletePremi($kd);


            if ($this->db->transStatus() === FALSE) {
                // Rollback transaction if something went wrong
                $this->db->transRollback();
                return 'error';
            } else {
                $this->db->transCommit();
                return 'success';
            }
        } catch (\Exception $e) {
            $this->db->transRollback();
            return 'error: ' . $e->getMessage();
        }
    }

    // public function insertDetailPremi($data)
    // {

    //     return $this->db->table('trayekpremi_detail')->insertBatch($data);
    // }
    public function getDetail($id)
    {
        // Asumsikan $data adalah kondisi untuk pencarian
        $builder = $this->db->table('trayekbonus_detail');
        $builder->where('kode_trayek', $id);
        $builder->orderBy('id', 'ASC');

        $query = $builder->get();
        return $query->getResult(); // Mengembalikan hasil sebagai array
    }
    public function getPremi($id)
    {
        // Asumsikan $data adalah kondisi untuk pencarian
        $builder = $this->db->table('trayekpremi_detail');
        $builder->where('kode_trayek', $id);
        $builder->orderBy('id', 'ASC');

        $query = $builder->get();
        return $query->getResult(); // Mengembalikan hasil sebagai array
    }
    public function deleteDetail($id)
    {
        $builder = $this->db->table('trayekbonus_detail');
        $builder->where('kode_trayek', $id);
        return $builder->delete();
    }
    public function deletePremi($id)
    {
        $builder = $this->db->table('trayekpremi_detail');
        $builder->where('kode_trayek', $id);
        return $builder->delete();
    }
}
