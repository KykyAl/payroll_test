<?= $this->extend('layout/template') ?>

<?= $this->section('title') ?><?= $title ?><?= $this->endSection() ?>

<?= $this->section('main') ?>


<section class="section">
    <div class="section-header">
        <h1><?= $title ?></h1>
        <div class="section-header-breadcrumb">
            <div class="breadcrumb-item active"><a href="">Master</a></div>
            <!-- <div class="breadcrumb-item"><a href="#">Trayek</a></div> -->
            <div class="breadcrumb-item">karyawan</div>
        </div>
    </div>

    <div class="section-body">

        <div class="section-body" style="margin-top: -30px">
            <form id="form">
                <div class="row">
                    <div class="col-12 col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered" id="table_karyawan" style="width: 100%;">
                                        <thead>
                                            <tr>
                                                <th> No</th>
                                                <th> Kode Crew</th>
                                                <th> Nama</th>
                                                <th> Jabatan </th>
                                                <th> Alamat </th>
                                                <th style="width: 100px;"> User </th>
                                                <th> Aksi </th>
                                            </tr>
                                        </thead>
                                        <tbody></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>

    </div>
</section>
<!-- Modal Pencarian Gudang-->
<div class="modal fade" id="showModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg  modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-white" id="exampleModalLabel">DATA CREW</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="mb-2">
                    <input type="hidden" class="form-control" name="id" id="id">
                    <div class="row">
                        <div class="col-lg-6">
                            <label class="form-label">Kode karyawan</label>
                            <input type="text" class="form-control" readonly name="kode_karyawan" id="kode_karyawan" placeholder="Kode karyawan">
                        </div>
                        <div class="col-lg-6">
                            <label class="form-label">Nama Lengkap</label>
                            <input type="text" class="form-control" readonly name="nama_karyawan" id="nama_karyawan" placeholder="Nama lengkap">
                        </div>
                    </div>
                </div>
                <div class="mb-2">
                    <div class="row">
                        <div class="col-lg-6">
                            <label class="form-label">Jabatan</label>
                            <select class="form-control" name="jenis_kelamin" readonly id="jenis_kelamin">
                                <option value="sopir">Supir</option>
                                <option value="kernet">Kernet</option>
                            </select>
                        </div>
                        <div class="col-lg-6">
                            <label class="form-label">No KTP</label>
                            <div class="input-group mb-2">

                                <input type="text" class="form-control" readonly name="no_ktp" id="no_ktp" onkeyup="numericOnly(this)" onblur="numericOnly(this)" placeholder="No Telp" autocomplete="off">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mb-2">
                    <div class="row">
                        <div class="col-lg-6">
                            <label class="form-label">No SIM</label>
                            <input type="text" readonly class="form-control" name="no_sim" id="no_sim" placeholder="No SIM">
                        </div>
                        <div class="col-lg-6">

                            <label class="form-label">Tempat Masuk</label>
                            <input type="text" readonly class="form-control" name="tanggal_masuk" id="tanggal_masuk" placeholder="Tempat Masuk">
                        </div>

                    </div>
                </div>

                <div class="mb-2">
                    <div class="row">
                        <div class="col-lg-12">
                            <label class="form-label">Alamat Lengkap</label>
                            <textarea class="form-control" readonly name="alamat" id="alamat" rows="2" placeholder="Alamat lengkap.."></textarea>
                        </div>
                    </div>
                </div>




            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="close_trayek">Close</button>

            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="AddUserModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm  modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-white" id="exampleModalLabel">DATA CREW</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="mb-2">
                    <input type="hidden" class="form-control" name="kode" id="kode">
                    <div class="row">
                        <div class="col-lg">
                            <label class="form-label">Email</label>
                            <input type="text" class="form-control" name="email" id="email" placeholder="Email">
                        </div>
                    </div>
                </div>





            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="close_add">Close</button>
                <button type="button" class="btn btn-success" id="tambah_user">Add</button>

            </div>
        </div>
    </div>
</div>
<script>
    var tabel;
    $(document).ready(function() {
        tabel = $('#table_karyawan').DataTable({
            "processing": true,
            // "responsive": true,
            "serverSide": true,
            "ordering": true, // Set true agar bisa di sorting
            "order": [
                [0, 'asc']
            ], // Default sortingnya berdasarkan kolom / field ke 0 (paling pertama)
            "ajax": {
                "url": "<?= site_url('master/crew/data'); ?>", // URL file untuk proses select datanya
                "type": "POST",
                // csrf datatable
                // "data": function(d) {
                //     d.<?= csrf_token() ?> = hash;
                // }
            },
            "deferRender": true,
            "aLengthMenu": [
                [10, 50, 100],
                [10, 50, 100]
            ], // Combobox Limit
            "columns": [{
                    "data": 'kode_karyawan',
                    "orderable": false,
                    "visible": false,
                    render: function(data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }
                }, {
                    "data": 'kode_karyawan',
                    // "render": function(data, type, row, meta) {
                    //     return row.nama_lengkap + '<br> (' + row.nik + ')';
                    // }
                },
                {

                    "data": "nama_karyawan"
                },
                {
                    "data": "jabatan"
                },
                {
                    "data": "alamat",
                    "visible": false,
                    "render": function(data, type, row, meta) {
                        return row.alamat1 + ' ' + row.alamat2;
                    }
                },
                {
                    "data": null,
                    "render": function(data, type, row, meta) {
                        if (row.iduser == null) {

                            return ' <button type="button" value = "' + row.kode_karyawan +
                                '"class="btn btn-warning btn-sm" id="btnAddUser">Buat User</i></button>';
                        } else {
                            return '<i class="fa fa-user-check" style="color:green;"></i>';
                        }
                    }
                },

                {
                    "data": null,
                    "render": function(data, type, row, meta) {
                        return ' <button type="button" value = "' + row.kode_karyawan +
                            '"class="btn btn-primary btn-sm" id="btnShow"><i class="fas fa-eye"></i></button>';
                    }
                },
                // {
                //     "data": "id_kategori", // Tampilkan kolomid_kategori pada table kategori
                //     "render": function(data, type, row, meta) {
                //         return '<a href="show/' + data + '">Show</a>';
                //     }
                // },
            ],
        });


        $('#close_trayek').on('click', function(e) {

            $('#showModal').modal('hide');

        })
        $('#close_add').on('click', function(e) {

            $('#AddUserModal').modal('hide');

        })








    })
    $(document).on('click', '#tambah_user', function(e) {
        $('#AddUserModal').modal('hide')
        $.ajax({
            url: "<?= base_url('master/crew/register') ?>",
            data: {
                id: $('#kode').val(),
                email: $('#email').val(),
                tipe: 'crew'

            },
            type: "POST",
            dataType: "JSON",
            success: function(res) {

                if (res.response == 'success') {
                    reload_table()
                    toastr.success(res.message)
                } else if (res.response == 'failed') {
                    $.each(res.message, function(index, message) {
                        toastr.error(message)
                    });
                } else {
                    warningToast('Error', 'Something wrong! please try again', 1);
                }
            }
        })
    })

    function reload_table() {
        tabel.ajax.reload(null, false); //reload datatable ajax 
    }

    $(document).on('click', '#btnAddUser', function(e) {
        $('#email').val('')
        var kode = $(this).val()
        $('#kode').val(kode);
        console.log(kode)
        $('#AddUserModal').modal('show')

    })




    $(document).on('click', '#btnShow', function(e) {


        $.ajax({
            url: "<?= base_url('master/crew/show') ?>",
            data: {
                id: $(this).val(),

            },
            type: "POST",
            dataType: "JSON",
            success: function(res) {
                if (res.response == 'success') {

                    $('#showModal').modal('show')
                    $('#kode_karyawan').val(res.data.kode_karyawan);
                    $('#nama_karyawan').val(res.data.nama_karyawan);
                    $('#alamat').val(res.data.alamat1 + ' ' + res.data.alamat2);
                    var tanggal = res.data.tanggal_masuk.split("-");
                    var tgl = tanggal[2];
                    var bln = tanggal[1];
                    var thn = tanggal[0];
                    $("#tanggal_masuk").val(tgl + "-" + bln + "-" + thn);
                    $('#jabatan').val(res.data.jabatan);
                    $('#no_sim').val(res.data.no_sim);
                    $('#no_ktp').val(res.data.no_ktp);
                    // $('#no_telp').val(res.data.no_telp);
                    // $('#jenis_kelamin').val(res.data.jenis_kelamin);
                    // $('#alamat').val(res.data.alamat);
                    // $('#pendidikan_terakhir').val(res.data.pendidikan_terakhir);
                    // $('#nama_sekolah').val(res.data.nama_sekolah);
                    // $('#additional').val(res.data.additional);
                    // $('#nip').val(res.data.nip);
                    // $('#tanggal_masuk').val(res.data.tanggal_masuk);
                    // $('#jabatan').empty()
                    // $.each(res.jabatan, function(index, jabatan) {
                    //     $('#jabatan').append('<option value="' + jabatan.id + '">' + jabatan.nama_jabatan + '</option>');
                    // });
                    // $('#jabatan').val(res.data.jabatan);
                    // $('#saldo').val(res.data.saldo).formatCurrency({
                    //     colorize: true,
                    //     negativeFormat: '-%s%n',
                    //     roundToDecimalPlace: 0
                    // });
                    // $('#makan').val(res.data.makan).formatCurrency({
                    //     colorize: true,
                    //     negativeFormat: '-%s%n',
                    //     roundToDecimalPlace: 0
                    // });
                    // $('#transport').val(res.data.transport).formatCurrency({
                    //     colorize: true,
                    //     negativeFormat: '-%s%n',
                    //     roundToDecimalPlace: 0
                    // });
                    // if (res.data.akses_booking == 12) {
                    //     $('#akses_booking').prop('checked', true)
                    // } else {
                    //     $('#akses_booking').prop('checked', false)

                    // }

                    // $('.modal-title').text('Edit Data Jadwal Operasi Bis');
                } else if (res.response == 'failed') {
                    failedToast(res.response, res.message, 5);
                } else {
                    warningToast('Error', 'Something wrong! please try again', 1);
                }
            }
        })
    })
</script>

<?= $this->endSection() ?>