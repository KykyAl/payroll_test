<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('/master/trayek/', 'Master\Trayek::index');
$routes->post('/master/trayek/searchKeberangkatan', 'Master\Trayek::searchKeberangkatan');
$routes->post('/master/trayek/searchKota', 'Master\Trayek::searchKota');
$routes->post('/master/trayek/create', 'Master\Trayek::create');
$routes->post('/master/trayek/ajax_list_trayek', 'Master\Trayek::ajax_list_trayek');
$routes->post('/master/trayek/read', 'Master\Trayek::read');
$routes->post('/master/trayek/readKeberangkatanIn', 'Master\Trayek::readKeberangkatanIn');
$routes->get('/master/trayek/read_last_trayek', 'Master\Trayek::read_last_trayek');
$routes->post('/master/trayek/get_kodelayout', 'Master\Trayek::getKodeLayout');
$routes->post('/master/trayek/delete', 'Master\Trayek::delete');
$routes->post('/master/trayek/update', 'Master\Trayek::update');
$routes->post('/master/trayek/readdetail', 'Master\Trayek::getDetailTrayek');
$routes->post('/master/trayek/readpremi', 'Master\Trayek::getPremiTrayek');
$routes->get('/master/karyawan', 'Master\Karyawan::index');
$routes->post('/master/karyawan/data', 'Master\Karyawan::get_data');
$routes->post('/master/karyawan/show', 'Master\Karyawan::read');
$routes->post('/master/karyawan/get', 'Master\Karyawan::getKaryawanId');
$routes->post('/master/karyawan/register', 'Master\Register::registerAction');
$routes->get('/master/crew', 'Master\Crew::index');
$routes->post('/master/crew/data', 'Master\Crew::get_data');
$routes->post('/master/crew/show', 'Master\Crew::read');
$routes->post('/master/crew/register', 'Master\Register::registerAction');
$routes->get('/master/operasibis/', 'Master\Operasibis::index');
$routes->post('/master/operasibis/data', 'Master\Operasibis::get_data');
$routes->post('/master/operasibis/show', 'Master\Operasibis::read');
$routes->get('/master/jamkerja/', 'Master\Jamkerja::index');
$routes->post('/master/jamkerja/read_alljamkerja', 'Master\Jamkerja::read_all');
$routes->post('/master/jamkerja/data', 'Master\Jamkerja::get_data');
$routes->post('/master/jamkerja/create', 'Master\Jamkerja::create');
$routes->post('/master/jamkerja/show', 'Master\Jamkerja::read');
$routes->post('/master/jamkerja/update', 'Master\Jamkerja::edit');
$routes->post('/master/jamkerja/delete', 'Master\Jamkerja::delete');
$routes->get('/master/perpal1/', 'Master\Perpal1::index');
$routes->get('/transaksi/jadwalkerja/', 'Transaksi\Jadwalkerja::index');
$routes->post('/transaksi/jadwalkerja/create', 'Transaksi\Jadwalkerja::create');
$routes->post('/transaksi/jadwalkerja/update', 'Transaksi\Jadwalkerja::update');
$routes->post('/transaksi/jadwalkerja/delete', 'Transaksi\Jadwalkerja::delete');
$routes->post('/transaksi/jadwalkerja/readallkaryawan', 'Transaksi\Jadwalkerja::getkaryawan');
$routes->post('/transaksi/jadwalkerja/read_last_transaksi', 'Transaksi\Jadwalkerja::read_last_transaksi');
$routes->post('/transaksi/jadwalkerja/readjadwal', 'Transaksi\Jadwalkerja::readjadwal');
$routes->post('/transaksi/jadwalkerja/readjadwal_detail', 'Transaksi\Jadwalkerja::readjadwal_detail');
$routes->post('/transaksi/jadwalkerja/get_jadwal_karyawan', 'Transaksi\Jadwalkerja::get_jadwal_karyawan');
$routes->get('/master/premi/', 'Master\Premi::index');
$routes->post('/master/premi/read_allPremi', 'Master\Premi::read_all');
$routes->post('/master/premi/data', 'Master\Premi::get_data');
$routes->post('/master/premi/create', 'Master\Premi::create');
$routes->post('/master/premi/show', 'Master\Premi::read');
$routes->post('/master/premi/update', 'Master\Premi::edit');
$routes->post('/master/premi/delete', 'Master\Premi::delete');
$routes->get('/transaksi/absen', 'Transaksi\Absen::index');
$routes->get('/transaksi/absen/cetak_manifest', 'Transaksi\Absen::cetakManifest');
$routes->post('/transaksi/absen/read_jadwalkerja', 'Transaksi\Absen::read_jadwalkerja');
$routes->post('/transaksi/absen/create', 'Transaksi\Absen::Absensi');
$routes->post('/transaksi/absen/data_absen', 'Transaksi\Absen::dataAbsen');
$routes->post('/transaksi/absen/manifest', 'Transaksi\Absen::getManifest');
$routes->post('/transaksi/getjadwal_karyawan', 'Transaksi\Absen::get_jadwal');
$routes->post('/transaksi/get_operasibis', 'Transaksi\Absen::get_operasibis');
$routes->get('/transaksi/uangjalan', 'Transaksi\Uangjalan::index');
$routes->get('/transaksi/premi', 'Transaksi\Premi::index');
$routes->post('/transaksi/perpal/dataCrew', 'Transaksi\Perpal::dataCrew');
$routes->post('/transaksi/premi/searchOperasi', 'Transaksi\Premi::searchOperasi');
$routes->post('/transaksi/premi/get_trayekdetail', 'Transaksi\Premi::getTrayekDetail');
$routes->post('/transaksi/premi/get_operasi', 'Transaksi\Premi::getOperasi');
$routes->post('/transaksi/premi/masa_kerja', 'Transaksi\Premi::getMasaKerja');
$routes->post('/transaksi/premi/create', 'Transaksi\Premi::create');
$routes->post('/transaksi/premi/update', 'Transaksi\Premi::update');
$routes->post('/transaksi/premi/delete', 'Transaksi\Premi::delete');
$routes->post('/transaksi/premi/read_last_transaksi', 'Transaksi\Premi::read_last_transaksi');
$routes->post('/transaksi/premi/read_no_transaksi', 'Transaksi\Premi::read_no_transaksi');
$routes->post('/transaksi/premi/read_detail_bonus', 'Transaksi\Premi::read_detail_bonus');
$routes->post('/transaksi/premi/read_detail_premi', 'Transaksi\Premi::read_detail_premi');
$routes->post('/transaksi/premi/read_detail_lainnya', 'Transaksi\Premi::read_detail_lainnya');
$routes->post('/transaksi/premi/data', 'Transaksi\Premi::getData');
$routes->post('/transaksi/premi/approve', 'Transaksi\Premi::Approve');
$routes->post('/transaksi/premi/keberangkatan', 'Transaksi\Premi::getKeberangkatan');
$routes->post('/transaksi/premi/geofence', 'Transaksi\Premi::Geofence');
$routes->post('/transaksi/premi/ajax_list_perhitungan', 'Transaksi\Premi::ajax_list_perhitungan');
$routes->get('/transaksi/konfirmasi_perhitungan_pb', 'Transaksi\KonfirmasiPerhitunganPb::index');
$routes->get('/transaksi/premi/list', 'Transaksi\Premi::list');
$routes->get('/transaksi/pengajuancuti', 'Transaksi\Pengajuancuti::index');
$routes->post('/transaksi/pengajuancuti/create', 'Transaksi\Pengajuancuti::create');
$routes->post('/transaksi/pengajuancuti/update', 'Transaksi\Pengajuancuti::update');
$routes->post('/transaksi/pengajuancuti/delete', 'Transaksi\Pengajuancuti::delete');
$routes->post('/transaksi/pengajuancuti/readallkaryawan', 'Transaksi\Pengajuancuti::getkaryawan');
$routes->post('/transaksi/pengajuancuti/read_last_transaksi', 'Transaksi\Pengajuancuti::read_last_transaksi');
$routes->post('/transaksi/pengajuancuti/readjadwal', 'Transaksi\Pengajuancuti::readjadwal');
$routes->post('/transaksi/pengajuancuti/readjadwal_detail', 'Transaksi\Pengajuancuti::readjadwal_detail');
$routes->post('/transaksi/pengajuancuti/get_jadwal_karyawan', 'Transaksi\Pengajuancuti::get_jadwal_karyawan');
$routes->post('/transaksi/pengajuancuti/data', 'Transaksi\Pengajuancuti::get_data');
$routes->post('/transaksi/pengajuancuti/show', 'Transaksi\Pengajuancuti::read');
$routes->post('/transaksi/pengajuancuti/update2', 'Transaksi\Pengajuancuti::update2');
$routes->get('/transaksi/approvecuti', 'Transaksi\Approvecuti::index');
$routes->post('/transaksi/approvecuti/data', 'Transaksi\Approvecuti::getData');
$routes->post('/transaksi/approvecuti/approve', 'Transaksi\Approvecuti::Approve');
$routes->get('/transaksi/perpal', 'Transaksi\Perpal::index');
$routes->get('/transaksi/perpal/getSupirData', 'Transaksi\Perpal::getSupirData');
$routes->post('/transaksi/perpal/read_last_transaksi', 'Transaksi\Perpal::read_last_transaksi');
$routes->post('/transaksi/perpal/create', 'Transaksi\Perpal::create');
$routes->post('/transaksi/perpal/update', 'Transaksi\Perpal::update');
$routes->post('/transaksi/perpal/delete', 'Transaksi\Perpal::delete');
$routes->post('/transaksi/perpal/readallkaryawan', 'Transaksi\Perpal::getkaryawan');
$routes->post('/transaksi/perpal/read_last_transaksi', 'Transaksi\Perpal::read_last_transaksi');
$routes->post('/transaksi/perpal/readjadwal', 'Transaksi\Perpal::readjadwal');
$routes->post('/transaksi/perpal/readjadwal_detail', 'Transaksi\Perpal::readjadwal_detail');
$routes->post('/transaksi/perpal/get_jadwal_karyawan', 'Transaksi\Perpal::get_jadwal_karyawan');
$routes->post('/transaksi/perpal/data', 'Transaksi\Perpal::get_data');
$routes->post('/transaksi/perpal/show', 'Transaksi\Perpal::read');
$routes->post('/transaksi/perpal/get_driver_details', 'Transaksi\Perpal::get_driver_details');

$routes->get('transaksi/perpal/edit/(:segment)', 'Transaksi\Perpal::edit/$1');
$routes->post('transaksi/perpal/update', 'Transaksi\Perpal::update');
$routes->get('transaksi/perpal/delete/(:segment)', 'Transaksi\Perpal::delete2/$1');


//Routes API
$routes->post('authapi', 'API\AuthController::getToken');
$routes->group('api', ['namespace' => 'App\Controllers\Api'], function ($routes) {


    $routes->post('createkaryawan', 'KaryawanController::create');
    $routes->put('updatekaryawan', 'KaryawanController::update');
    // $routes->delete('deletekaryawan/(:any)/(:any)', 'KaryawanController::delete/$1/$2');
    $routes->delete('deletekaryawan/', 'KaryawanController::delete/');

    $routes->post('createcrew', 'CrewController::create');
    $routes->put('updatecrew', 'CrewController::update');
    $routes->delete('deletecrew/', 'CrewController::delete/');
    $routes->post('createoperasibis', 'OperasibisController::create');
    $routes->put('updateoperasibis', 'OperasibisController::update');
    $routes->delete('deleteoperasibis/', 'OperasibisController::delete/');
    $routes->post('createkeberangkatan', 'KeberangkatanController::create');
    $routes->put('updatekaberangkatan', 'KeberangkatanController::update');
    $routes->delete('deletekeberangkatan', 'KeberangkatanController::delete/');
});


service('auth')->routes($routes);
