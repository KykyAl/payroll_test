<section class="section">
    <div class="section-header">
        <h1><?= $title ?></h1>
        <div class="section-header-breadcrumb">
            <div class="breadcrumb-item active"><a href="/">Transaksi</a></div>
            <!-- <div class="breadcrumb-item"><a href="#">Trayek</a></div> -->
            <div class="breadcrumb-item">test</div>
        </div>
    </div>



    <h1>Detail Perpal</h1>
    <div>
        <?php if (session()->getFlashdata('success')) : ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <?= session()->getFlashdata('success') ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <?php endif; ?>

        <?php if (session()->getFlashdata('error')) : ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <?= session()->getFlashdata('error') ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <?php endif; ?>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">No Transaksi</th>
                    <th scope="col">Tanggal Transaksi</th>
                    <th scope="col">Nama Supir/Kernet</th>
                    <th scope="col">Jumlah Hari Perpal</th>
                    <th scope="col">Lokasi</th>
                    <th scope="col">Keterangan</th>
                    <th scope="col">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php if (!empty($perpal_list)) : ?>
                    <?php foreach ($perpal_list as $perpal) : ?>
                        <tr>
                            <td><?= $perpal['no_transaksi'] ?></td>
                            <td><?= $perpal['tanggal'] ?></td>
                            <td><?= $perpal['nama'] ?></td>
                            <td><?= $perpal['jlh_hari_perpal'] ?></td>
                            <td><?= $perpal['lokasi'] ?></td>
                            <td><?= $perpal['keterangan'] ?></td>
                            <td>
                                <a href="perpal/edit/<?= $perpal['no_transaksi'] ?>" class="btn btn-warning btn-sm">Update</a>
                                <a href="perpal/delete/<?= $perpal['no_transaksi'] ?>" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                <?php else : ?>
                    <tr>
                        <td colspan="9" class="text-center">No data available</td>
                    </tr>
                <?php endif; ?>
            </tbody>
        </table>




        <script>
            function calculateResult() {
                var jlhHariPerpal = parseFloat($('#jlh_hari_perpal').val()) || 0;
                var total = parseFloat($('#total').val()) || 0;
                var hasilPerhitungan = jlhHariPerpal * total;
                $('#hasil_perhitungan').val(hasilPerhitungan);
            }

            // Event listeners for input changes
            $('#jlh_hari_perpal, #total').on('input', function() {
                calculateResult();
            });
        </script>

        <script>
            var tabel;
            var startdate;
            var datakolom = [];
            var table_karyawan;
            var darilama;
            var sampailama;
            var dataoption = [];

            function initialize() {
                $('textarea').val('');
                var now = moment(new Date()).format("DD-MM-YYYY");
                $('#tanggal').val(now)
                var date = moment(new Date());
                var futureDate = date.add(6, 'days').format("DD-MM-YYYY");
                $('#sampai').val(futureDate)
                $('#tanggal').prop('disabled', false)
                $('#sampai').prop('disabled', false)
                var a = moment(now, 'DD-MM-YYYY');
                var b = a.clone().add(6, 'days');
                var data = getDatesWithDay(a, b);
                datakolom = data
                $('#btnTambah').show()
                $('#btnUpdate, #btnDelete').hide()
                $('.baris-row').remove()
                read_jamkerja()
                addheader(data);
                nomorbaru()
                var conceptName = $('#kode_supir').find().val();
                console.log(conceptName)


            }

            function nomorbaru() {
                $.ajax({
                    url: "<?= base_url('transaksi/perpal/read_last_transaksi') ?>",
                    type: "POST",
                    data: {
                        tanggal: $('#tanggal').val(),
                    },
                    dataType: "JSON",
                    success: function(result) {
                        var tgl = $('#tanggal').val().split(
                            '-');

                        if (result === null || result === undefined || result === '') {

                            var no_inv = 'PP-' + tgl[2].slice(2, 4) + tgl[1] + '0001';
                            $('#no_transaksi').val(
                                no_inv
                            );
                            sessionStorage.setItem('lastTransactionNumber', no_inv);

                        } else {
                            var str = result;

                            var num = parseInt(str, 10) + 1;

                            var lastid = num.toString().padStart(str.length, '0');
                            var no_inv = 'PP-' + tgl[2].slice(2, 4) + tgl[1] + lastid;
                            sessionStorage.setItem('lastTransactionNumber', no_inv);

                            $('#no_transaksi').val(
                                no_inv
                            );
                            sessionStorage.setItem('lastTransactionNumber', no_inv);

                        }
                    },
                    error: function(xhr, status, error) {
                        console.error("AJAX request error:", status,
                            error); // Menangani kesalahan jika ada masalah dalam request AJAX
                    }
                });

                // Pemeriksaan saat halaman dimuat
                $(document).ready(function() {
                    var lastTransactionNumber = sessionStorage.getItem('lastTransactionNumber');
                    if (lastTransactionNumber) {
                        $('#no_transaksi').val(lastTransactionNumber);
                    }
                });


            }

            function readjadwal() {
                $.ajax({
                    url: "<?= base_url('transaksi/perpal/readjadwal') ?>",
                    type: "POST",
                    data: {
                        no_transaksi: $('#no_transaksi').val(),

                    },
                    dataType: "JSON",
                    success: function(res) {

                        if (res.response == 'success') {

                            var tgl = res.data.tanggal.split('-');
                            var hari = tgl[2]
                            var bulan = tgl[1]
                            var tahun = tgl[0]
                            $('#tanggal').val(hari + '-' + bulan + '-' + tahun);
                            var tgl = res.data.sampai.split('-');
                            var hari = tgl[2]
                            var bulan = tgl[1]
                            var tahun = tgl[0]
                            $('#sampai').val(hari + '-' + bulan + '-' + tahun);
                            $('#alasan').val(res.data.alasan);

                            let option
                            option = new Option(res.data.kode_karyawan, true);


                            readjadwal_detail()
                            $('#tanggal').prop('disabled', true)
                            $('#sampai').prop('disabled', true)
                            $('#btnTambah').hide();
                            $('#btnUpdate,#btnDelete').show();
                        } else {
                            initialize()
                        }


                    }
                })
            }

            function readjadwal_detail() {
                $.ajax({
                    url: "<?= base_url('transaksi/perpal/readjadwal_detail') ?>",
                    type: "POST",
                    data: {
                        no_transaksi: $('#no_transaksi').val(),
                    },
                    dataType: "JSON",
                    success: function(res) {
                        if (res.response === 'success') {
                            var oldid = '';
                            var data = getDatesWithDay(moment($('#tanggal').val(), 'DD-MM-YYYY'), moment($(
                                    '#sampai')
                                .val(), 'DD-MM-YYYY'));
                            datakolom = data;


                            addheader(data);
                            $('.baris-row').remove();
                            res.nama.forEach(function(baris, x) {
                                $('#detail_jam').append(add_row(x, 0, 0));
                                if (oldid !== baris.kode_karyawan) {
                                    $('#kode_karyawan-' + x).val(baris.kode_karyawan);
                                    $('#nama-' + x).val(baris.nama_karyawan);
                                    oldid = baris.kode_karyawan;
                                }
                                if (res.data[baris.kode_karyawan]) {
                                    res.data[baris.kode_karyawan].forEach(function(dt, y) {
                                        listoption('#shift-' + x + '-' + y);
                                        $('#shift-' + x + '-' + y).val(dt.shift).change();
                                    });
                                }
                            });


                        }
                    }
                });

            }

            function read_jamkerja() {
                $.ajax({
                    url: "<?= base_url('master/jamkerja/read_alljamkerja') ?>",
                    type: "POST",
                    dataType: "JSON",
                    success: function(res) {
                        if (res.response === 'success') {
                            // Clear existing options
                            $('.jk-shift').empty();
                            dataoption = res.data;
                            listoption('')
                        }
                    }
                });
            }

            function listoption(id = '') {

                dataoption.forEach(function(item) {

                    var option = $('<option></option>')
                        .attr('value', item.kode)
                        .text(item.kode);

                    if (id != '') {

                        $('' + id + '').append(option);
                    } else {

                        $('.jk-shift').append(option);
                    }
                });
            }

            function listkolom(i) {

                datakolom.forEach(function(dateData, x) {
                    listoption('#shift-' + i + '-' + x);
                });
            }



            function addheader(datesWithData) {
                var table = $('#table_operasi');
                var tableHead = table.find('thead');
                // var tableBody = table.find('tbody');
                var tableHeaderRow = tableHead.find('tr');
                $('.tgl').remove()
                if (datesWithData != '') {
                    datesWithData.forEach(function(dateData) {
                        var th = $('<th class="tgl" style="text-align:center;">').text(dateData.date + ' ' +
                            convertDayToHari(dateData.day));
                        tableHeaderRow.append(th);

                        // Juga tambahkan sel-sel kosong di dalam tbody
                        // tableBody.find('tr').each(function() {
                        //     var td = $('<td>');
                        //     $(this).append(td);
                        // });
                    });


                } else {
                    datakolom = '';
                }

                $('#detail_jam').append(add_row(0, 0, 1))
                listkolom(0)
            }

            function getDatesWithDay(startDate, endDate) {
                var dates = [];
                var currentDate = startDate.clone();
                while (currentDate <= endDate) {
                    var date = {
                        date: currentDate.format('DD-MM-YYYY'),
                        day: convertDayToInt(currentDate.format('dddd'))
                    };
                    dates.push(date);
                    currentDate.add(1, 'days');
                }
                return dates
            }

            function convertDayToInt(day) {
                switch (day) {
                    case 'Sunday':
                        return '7';
                    case 'Monday':
                        return '1';
                    case 'Tuesday':
                        return '2';
                    case 'Wednesday':
                        return '3';
                    case 'Thursday':
                        return '4';
                    case 'Friday':
                        return '5';
                    case 'Saturday':
                        return '6';
                    default:
                        return 'Hari tidak valid';
                }
            }

            function convertDayToHari(day) {
                switch (day) {
                    case '7':
                        return 'Minggu';
                    case '1':
                        return 'Senin';
                    case '2':
                        return 'Selasa';
                    case '3':
                        return 'Rabu';
                    case '4':
                        return 'Kamis';
                    case '5':
                        return 'Jumat';
                    case '6':
                        return 'Sabtu';
                    default:
                        return 'Hari tidak valid';
                }
            }


            function add_row(i, action, tipe) {
                if (tipe == 1) {

                    $('.baris-row').remove()
                }
                let table = '<tr class="baris-row" id="baris-' + i +
                    '"><td hidden><input style="width:150px;" readonly class="form-control form-control-sm kode_karyawan" type="text" name="kode_karyawan-' +
                    i + '" id="kode_karyawan-' + i + '" style="display:block;" /></td>';
                table += '<td><input class="form-control form-control" style="width:200px;" type="text" readonly name="nama-' +
                    i +
                    '" id="nama-' + i + '"  /></td>';
                // table += '<td><input class="form-control form-control-sm" type="text" name="tgl_berangkat[' + i + ']" id="tgl_berangkat-' + i + '" readonly /></td>';

                if (datakolom.length > 0) {
                    $("#baris-hari").val(datakolom.length);
                    datakolom.forEach(function(dateData, x) {
                        // table += '<td><input class="form-control form-control-sm jk-shift" style="width:50px;text-align:center;" type="text" name="shift-' + i + '-' + x + '" id="shift-' + i + '-' + x + '" /></td>';
                        table += '<td><select class="form-control jk-shift" style="width:100px" name="shift-' + i +
                            '-' +
                            x + '" id="shift-' + i + '-' + x + '"> </select></td>';

                        table += '<td hidden><input class="form-control form-control-sm" type="text" name="tgl-' + i +
                            '-' +
                            x + '" value="' + dateData.date + '" id="tgl-' + i + '" /></td>';
                        table += '<td hidden><input class="form-control form-control-sm" type="text" name="hari-' + i +
                            '-' + x + '" value="' + dateData.day + '" id="hari-' + i + '" /></td>';
                    });
                }
                // if (action == 1) {
                table += '<td class="action" id="action-baris-data-' + i +
                    '"><a href="#void()" class="tombol tombol-small hapus-baris-data" id="hapus-baris-data-' + i +
                    '"><i style="color:red;" class="fa fa-trash"></i></a>';
                // } else {
                // table += '<td class="action" id="action-baris-data-' + i + '"><a href="#void()" class="tombol tombol-small tambah-baris-data" id="tambah-baris-data-' + i + '"><svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-plus" width="16" height="16" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg></a>';
                // }
                table += '</tr>';

                $("#baris-data").val(i + 1);
                return table;
            }
            $(document).ready(function() {
                $('.tanggal').daterangepicker({
                    singleDatePicker: true,
                    showDropdowns: true,
                    autoApply: true,
                    startDate: moment(),
                    parentEl: "#modalKeberangkatan .modal-body",
                    locale: {
                        cancelLabel: 'Clear',
                        format: 'DD-MM-YYYY'
                    }
                }).on('apply.daterangepicker', function(ev, picker) {
                    var selectedDate = $(this).val();

                    var startDate = moment(selectedDate, 'DD-MM-YYYY');
                    var enddate = startDate.clone().add(6, 'days');
                    if (darilama != selectedDate) {
                        var data = getDatesWithDay(startDate, enddate);
                        datakolom = data;
                        addheader(data)
                    }
                    darilama = selectedDate;
                    $('.tanggal2').daterangepicker({
                        singleDatePicker: true,
                        showDropdowns: true,
                        autoApply: true,
                        startDate: enddate,
                        // maxDate: moment().add(6, 'days'),
                        locale: {
                            cancelLabel: 'Clear',
                            format: 'DD-MM-YYYY'
                        }
                    }).on('apply.daterangepicker', function(ev, picker) {
                        var selectedDate = $(this).val();
                        var start = $('#tanggal').val()
                        var startdate = moment(start, 'DD-MM-YYYY');
                        var enddate = moment(selectedDate, 'DD-MM-YYYY');

                        if (sampailama != selectedDate) {
                            var data = getDatesWithDay(startdate, enddate);
                            datakolom = data;
                            addheader(data)
                        }
                        sampailama = selectedDate;
                    }).on('cancel.daterangepicker', function(ev, picker) {

                    });

                }).on('cancel.daterangepicker', function(ev, picker) {});
                $('.tanggal2').daterangepicker({
                    singleDatePicker: true,
                    showDropdowns: true,
                    autoApply: true,
                    startDate: moment(),
                    // maxDate: moment().add(6, 'days'),
                    locale: {
                        cancelLabel: 'Clear',
                        format: 'DD-MM-YYYY'
                    }
                }).on('apply.daterangepicker', function(ev, picker) {
                    var selectedDate = $(this).val();
                    var start = $('#tanggal').val()

                    var startdate = moment(start, 'DD-MM-YYYY');
                    var enddate = moment(selectedDate, 'DD-MM-YYYY');

                    var data = getDatesWithDay(startdate, enddate);
                    datakolom = data;
                    addheader(data)
                }).on('cancel.daterangepicker', function(ev, picker) {
                    // $(this).val('');
                });
                initialize();
                $("#showModal").on("hidden.bs.modal", function(e) {
                    cart_array = [];
                    selectedCallback = [];
                    selectedTemp = [];

                    table_karyawan.destroy();


                });
                $('#showModal').on('shown.bs.modal', function(e) {
                    cart_array = [];
                    selectedCallback = [];
                    selectedTemp = [];



                    $("#cari_produk").select2({
                        // allowClear: true,
                        placeholder: 'cari produk',
                        // dropdownParent: $('#select_produk'),
                        // ajax: {
                        //     url: '<?= base_url() ?>transaksi/po_konsumen/read_kategori',
                        //     type: "post",
                        //     dataType: 'json',
                        //     delay: 250,
                        //     data: function(params) {
                        //         return {
                        //             searchTerm: params.term // search term
                        //         };
                        //     },
                        //     processResults: function(response) {
                        //         return {
                        //             results: response
                        //         };
                        //     },
                        //     cache: false
                        // }
                    });

                    table_karyawan = $('#table_karyawan').DataTable({
                        "processing": true,
                        "serverSide": true,
                        "iDisplayLength": 15,
                        "scrollY": "45%",
                        "scrollCollapse": true,
                        "paging": true,
                        "lengthChange": false,
                        "order": [
                            [3, 'asc']
                        ],
                        "ajax": {
                            "url": "<?= base_url('transaksi/perpal/readallkaryawan') ?>",
                            "type": "POST",
                            "dataType": "json",
                            "dataSrc": function(jsonData) {
                                return jsonData.data;
                            },
                            "data": function(data) {
                                data.id = $('#cari_produk').val();
                            }
                        },
                        "columnDefs": [{
                                "targets": [0],
                                "className": 'select-checkbox',
                                // "orderable": false,
                            },
                            {
                                "targets": [1],
                                "visible": false,
                                "searchable": false,
                                "orderable": false,
                            }
                        ],
                        "columns": [{
                                "data": 'id',
                                "render": function(data, type, row, meta) {
                                    return '';
                                }
                            },
                            {
                                "data": 'id'
                            },
                            {
                                "data": "nik"
                            },
                            {
                                "data": "nama_lengkap"
                            }
                        ],
                        "select": {
                            "style": 'multi'
                            // "selector": 'td:first-child' // untuk selector pertama saja
                        },
                        "rowCallback": function(row, data) {

                            if ($.inArray(data.id, selectedTemp) !== -1) {
                                $(row).addClass('selected');
                            }
                        },
                        "dom": '<"top"f>rt<"bottom"lp><"clear">',
                        "language": {
                            "search": "_INPUT_",
                            "searchPlaceholder": "Search"
                        }
                    });

                    $('#addCart').on('click', function(e) {
                        if (cart_array.length > 0) {

                            cart_produk();
                        }
                    })

                    $('#close_cari_lm').on('click', function(e) {

                        var first = $('#transaksi tr:last').attr('id');

                        if (cart_array.length > 0) {
                            $('#' + first + '-disc').focus();
                            $('#' + first + '-disc').select();
                        }
                    })


                    table_karyawan.on('select', function() {

                        var abcd = table_karyawan.rows('.selected').data().toArray();

                        table_karyawan.rows('.selected').every(function(rowIdx) {
                            cart_array.push(table_karyawan.row(rowIdx).data())
                            selectedTemp.push(table_karyawan.row(rowIdx).data()[1])
                            selectedCallback.push(table_karyawan.row(rowIdx).data())
                        })



                    });



                    table_karyawan.on('deselect', function(e, dt, type, indexes) {
                        if (type === 'row') {
                            var data = table_karyawan.rows(indexes).data().pluck('id');
                            var deselect = table_karyawan.rows(indexes).data()[0];

                            for (var i = cart_array.length - 1; i >= 0; i--) {
                                if (cart_array[i] && cart_array[i][3] === deselect[3] && (cart_array[i][
                                        1
                                    ] === deselect[1])) {
                                    cart_array.splice(i, 1);
                                }
                            }

                            for (var i = selectedCallback.length - 1; i >= 0; i--) {
                                if (selectedCallback[i][3] === deselect[3] && selectedCallback[i][1] ===
                                    deselect[1]) {
                                    selectedCallback.splice(i, 1);
                                }
                            }

                            for (var i = selectedTemp.length - 1; i >= 0; i--) {
                                if (selectedTemp[i] === deselect[1]) {
                                    selectedTemp.splice(i, 1);
                                }
                            }

                        }

                    });


                    $("#cari_produk").on('change', function(evt) {


                        $('#temp_brg').val($(this).val());

                        table_karyawan.draw();

                    })

                })









                $('#close_karyawan').on('click', function(e) {
                    $('#showModal').modal('hide');

                })







                function getDatesWithDay(startDate, endDate) {
                    var dates = [];
                    var currentDate = startDate.clone();
                    while (currentDate <= endDate) {
                        var date = {
                            date: currentDate.format('DD-MM-YYYY'),
                            day: convertDayToInt(currentDate.format('dddd'))
                        };
                        dates.push(date);
                        currentDate.add(1, 'days');
                    }
                    return dates
                }





                $(document).on('click', '.tambah-baris-data', function() {
                    var str = $(this).attr('id');
                    var num = str.replace("tambah-baris-data-", "");

                    // Change action
                    $("#action" + str.replace("tambah", "")).html(
                        '<a href="#void()" class="tombol tombol-small hapus-baris hapus-baris-invoice" id="hapus-baris-invoice-' +
                        num +
                        '"><svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-plus" width="16" height="16" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><line x1="5" y1="5" x2="19" y2="19"></line><line x1="5" y1="19" x2="19" y2="5"></line></svg></a>'
                    );

                    // Insert row
                    $('#detail_jam').append(
                        add_row(Number(str.replace('tambah-baris-data-', '')) + 1, 0, 0)
                    );
                    // $('#no_invoice-' + (Number(str.replace('tambah-baris-data-', '')) + 1)).focus();
                    // setfocus(Number(num) + 1, 'kode_paket', 'paket');
                })
                $(document).on('click', '.hapus-baris-data', function() {
                    Swal.fire({
                        title: 'Anda yakin untuk menghapus baris ini?',
                        // text: "You won't be able to revert this!",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Ya!'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            var str = $(this).attr('id');
                            var num = str.split('-')[1];

                            $("#" + str.replace("hapus-baris-data-", "baris-")).remove();

                        }
                    })
                })
                $(document).on('keydown', '#no_transaksi', function(e) {
                    if (e.which === 13) {
                        if ($(this).val() != '') {
                            readjadwal()
                        } else {
                            nomorbaru()
                        }
                    }
                })

                $('#btnKaryawan').on('click', function(e) {
                    $('#showModal').modal('show')
                })


            })

            $(document).on('click', '#btnTambah', function(e) {
                $('#add').show();
                $('#update').hide();
                $('#exampleModalLabel').text('Tambah Jam Kerja')
                $('#showModal').modal('show')
                $('#id').val('');
                $('#awal').val(1);
                $('#akhir').val(1);
                $('#masuk').val('00:00');
                $('#keluar').val('00:00');
            })
            $(document).on('click', '#btnTambah', function(e) {
                e.preventDefault();
                $('#btnTambah').text('Simpan...');
                $('#btnTambah').attr('disabled', true);
                $.ajax({
                    url: "<?= base_url('transaksi/perpal/create') ?>",
                    data: $('#form').serialize(),
                    type: "POST",
                    dataType: "JSON",
                    success: function(res) {
                        if (res.response == 'success') {

                            toastr.success(res.message)
                            location.reload();

                            initialize()

                        } else if (res.response == 'failed') {
                            toastr.error(res.message)
                        } else {
                            toastr.error(res.message)
                        }
                        $('#btnTambah').text('Simpan');
                        $('#btnTambah').attr('disabled', false);

                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        $('#btnTambah').text('Simpan');
                        $('#btnTambah').attr('disabled', false);

                    }

                })
            })

            $(document).on('click', '#btnUpdate', function(e) {


                $('#btnUpdate').text('Update...');
                $('#btnUpdate').attr('disabled', true);
                $('#tanggal').prop('disabled', false)
                $('#sampai').prop('disabled', false)
                $.ajax({
                    url: "<?= base_url('transaksi/perpal/update') ?>",
                    data: $('#form').serialize(),
                    type: "POST",
                    dataType: "JSON",
                    success: function(res) {
                        if (res.response == 'success') {
                            initialize()
                            toastr.success(res.message)

                        } else if (res.response == 'failed') {
                            toastr.error(res.message)

                        } else {
                            toastr.error(res.message)

                        }
                        $('#btnUpdate').text('Update');
                        $('#btnUpdate').attr('disabled', false);
                        $('#tanggal').prop('disabled', false)
                        $('#sampai').prop('disabled', false)
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        $('#btnUpdate').text('Update');
                        $('#btnUpdate').attr('disabled', false);
                        $('#tanggal').prop('disabled', false)
                        $('#sampai').prop('disabled', false)

                    }
                })
            })
            $(document).on('click', '#btnDelete', function(e) {
                $('#btnDelete').text('Hapus...');
                $('#btnDelete').attr('disabled', true);
                Swal.fire({
                    title: 'Apakah anda yakin?',
                    text: "Data yg sudah dihapus tidak dapat di kembalikan !",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url: "<?= base_url('transaksi/perpal/delete') ?>",
                            data: {
                                id: $('#no_transaksi').val(),

                            },
                            type: "POST",
                            dataType: "JSON",
                            success: function(res) {
                                if (res.response == 'success') {
                                    toastr.success(res.messagge)
                                    location.reload();

                                    initialize()
                                } else if (res.response == 'failed') {
                                    toastr.error(res.messagge)
                                } else {
                                    toastr.error('Error', 'Something wrong! please try again', 1);
                                }
                                $('#btnDelete').text('Hapus');
                                $('#btnDelete').attr('disabled', false);
                            },
                            error: function(jqXHR, textStatus, errorThrown) {
                                $('#btnDelete').text('Hapus');
                                $('#btnDelete').attr('disabled', false);

                            }
                        })
                    } else {
                        $('#btnDelete').text('Hapus');
                        $('#btnDelete').attr('disabled', false);
                    }
                })


            })
            $(document).on('click', '#btnBatal', function(e) {
                $('#btnBatal').text('Batal...');
                $('#btnBatal').attr('disabled', true);
                Swal.fire({
                    title: 'Apakah anda yakin?',
                    // text: "Data yg sudah dibatal tidak dapat di kembalikan !",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        location.reload();

                        initialize()
                        $('#btnBatal').text('Batal');
                        $('#btnBatal').attr('disabled', false);
                    } else {
                        $('#btnBatal').text('Batal');
                        $('#btnBatal').attr('disabled', false);
                    }

                })


            })







            function reload_table() {
                tabel.ajax.reload(null, false); //reload datatable ajax 
            }
            $(document).on('click', '#btnKaryawan', function(e) {


                $.ajax({
                    url: "<?= base_url('transaksi/perpal/show') ?>",
                    data: {
                        id: $(this).val(),

                    },
                    type: "POST",
                    dataType: "JSON",
                    success: function(res) {
                        if (res.response == 'success') {
                            $('#showModal').modal('show')
                            $('#nik').val(res.data.nik);
                            $('#nama_lengkap').val(res.data.nama_lengkap);

                            // $('.modal-title').text('Edit Data Jadwal Operasi Bis');
                        } else if (res.response == 'failed') {
                            failedToast(res.response, res.message, 5);
                        } else {
                            warningToast('Error', 'Something wrong! please try again', 1);
                        }
                    }
                })
            })

            $(document).ready(function() {
                $.ajax({
                    url: "<?= base_url('transaksi/perpal') ?>",
                    type: "GET",
                    dataType: "JSON",
                    success: function(res) {
                        if (res) {
                            console.log("cek",
                                res)
                            $('#kode_supir').empty();
                            for (let i = 0; i < res.length; i++) {
                                $('#kode_supir').append("<option value='" + res[i].kode_karyawan + "'>" +
                                    res[i].kode_karyawan + " - " + res[i].nama_karyawan + "</option>");
                            }
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error(xhr.responseText);
                    }
                });
            });




            // Second part: Handle change event of #kode_supir dropdown
            $('#kode_supir').change(function() {
                var selectedKodeSupir = $(this).val();
                console.log(selectedKodeSupir)
                // Make AJAX call to fetch details based on selectedKodeSupir
                $.ajax({
                    url: "<?= base_url('transaksi/perpal/get_driver_details') ?>",
                    data: {
                        kode_supir: selectedKodeSupir
                    },
                    type: "POST",
                    dataType: "JSON",
                    success: function(res) {
                        console.log(res);
                        if (res) {

                            $('#nama').val(res.nama_karyawan); // Update nama input field
                            $('#jabatan').val(res.jabatan); // Update jabatan input field
                        } else {
                            $('#nama').val(''); // Clear nama input field if no data found
                            $('#jabatan').val(''); // Clear jabatan input field if no data found
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error(xhr.responseText); // Handle error if any
                    }
                });
            });
        </script>


        <!-- CSS Select2 -->

        <!-- JS Select2 -->


        <?= $this->endSection() ?>