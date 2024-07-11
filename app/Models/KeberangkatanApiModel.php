<?php

namespace App\Models;

use CodeIgniter\Model;

class KeberangkatanApiModel extends Model
{
    protected $table            = 'keberangkatan';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'id',
        'kode_jenis_kendaraan',
        'kode_keberangkatan',
        'deskripsi',
        'kota_asal',
        'kota_sampai',
        'kode_jurusan',
        'geo_code',
        'harga_tiket',
        'harga_tiket_pulang',
        'kode_kendaraan',
        'keberangkatan',
        'durasi',
        'jam_tiba',
        'offset',
        'tanggal_mulai',
        'tanggal_akhir',
        'tanggal_off',
        'jadwal_mingguan',
        'pemesanan_dimuka',
        'agen_id',
        'ganjil_genap',
        'status',
        'uang_jalan_supir',
        'uang_jalan_kernet',
        'created_at',
        'created_by',
        'updated_at',
        'updated_by',
        'has_transit',
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
}
