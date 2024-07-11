<?php

namespace App\Models;

use CodeIgniter\Model;

class OperasibisApiModel extends Model
{
    protected $table            = 'operasi_bis';
    protected $primaryKey       = 'kode_transaksi';
    protected $useAutoIncrement = false;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'kode_transaksi',
        'id_keberangkatan',
        'kode_keberangkatan',
        'kota_dari',
        'kota_sampai',
        'tanggal',
        'id_kendaraan',
        'no_polisi',
        'tanggal_berangkat',
        'jam_berangkat',
        'id_rute',
        'rute',
        'id_supir',
        'nama_supir',
        'id_supir2',
        'nama_supir2',
        'id_kernet',
        'nama_kernet',
        'keterangan',
        'created_at',
        'updated_at',
        'created_by',
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
}
