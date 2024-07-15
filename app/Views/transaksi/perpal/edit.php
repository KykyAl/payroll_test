<?= $this->extend('layout/template') ?>

<?= $this->section('title') ?><?= $title ?><?= $this->endSection() ?>

<?= $this->section('main') ?>




<section class="section">
    <div class="section-header">
        <h1><?= $title ?></h1>
        <div class="section-header-breadcrumb">
            <div class="breadcrumb-item active"><a href="/">Edit</a></div>
            <!-- <div class="breadcrumb-item"><a href="#">Trayek</a></div> -->
            <div class="breadcrumb-item">Perpal</div>
        </div>
    </div>

    <form action="<?= base_url('transaksi/perpal/update') ?>" method="post">
        <input type="hidden" name="id" value="<?= $perpal['no_transaksi'] ?>">
        <div class="form-group">
            <label for="no_transaksi">No Transaksi</label>
            <input type="text" class="form-control" id="no_transaksi" name="no_transaksi" value="<?= $perpal['no_transaksi'] ?>">
        </div>
        <div class="form-group">
            <label for="tanggal">Tanggal Transaksi</label>
            <input type="date" class="form-control" id="tanggal" name="tanggal" value="<?= $perpal['tanggal'] ?>">
        </div>

        <div class="form-group">
            <label for="nama">Nama Supir/Kernet</label>
            <input type="text" class="form-control" id="nama" name="nama" value="<?= $perpal['nama'] ?>">
        </div>

        <div class="form-group">
            <label for="jumlah_hari_perpal">Jumlah Hari Perpal</label>
            <input type="text" class="form-control" id="jlh_hari_perpal" name="jlh_hari_perpal" value="<?= $perpal['jlh_hari_perpal'] ?>">
        </div>

        <div class="form-group">
            <label for="total_">totall</label>
            <input type="text" class="form-control" id="total_" name="total_" value="<?= $perpal['total_'] ?>">
        </div>
        <div class="form-group">
            <label for="hasil_perhitungan_">Hasil</label>
            <input type="text" class="form-control" id="hasil_perhitungan_" name="hasil_perhitungan_" value="<?= $perpal['hasil_perhitungan_'] ?>" readonly>
        </div>
        <div class="form-group">
            <label for="lokasi">Lokasi</label>
            <input type="text" class="form-control" id="lokasi" name="lokasi" value="<?= $perpal['lokasi'] ?>">
        </div>
        <div class="form-group">
            <label for="keterangan">Keterangan</label>
            <textarea class="form-control" id="keterangan" name="keterangan"><?= $perpal['keterangan'] ?></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
        <button type="button" class="btn btn-secondary" id="btnBatal">Batal</button>

    </form>

    <script>
        $(document).ready(function() {
            // Function to calculate the result
            function calculateResult(index) {
                var jlhHariPerpal = parseFloat($(`#jlh_hari_perpal${index}`).val()) || 0;
                var total = parseFloat($(`#total_${index}`).val()) || 0;
                var hasilPerhitungan = jlhHariPerpal * total;
                $(`#hasil_perhitungan_${index}`).val(hasilPerhitungan);
            }

            // Event listener for input changes
            $('[id^="jlh_hari_perpal"], [id^="total_"]').on('input', function() {
                var index = $(this).attr('id').split('_').pop();
                calculateResult(index);
            });
        });



        $(document).on('click', '#btnBatal', function(e) {
            $('#btnBatal').text('Batal...');
            $('#btnBatal').attr('disabled', true);
            Swal.fire({
                title: 'Apakah anda yakin?',
                text: "Data yg sudah dibatal tidak dapat di kembalikan !",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes!'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.history.back();

                } else {
                    $('#btnBatal').text('Batal');
                    $('#btnBatal').attr('disabled', false);
                }

            })


        })
    </script>
    <?= $this->endSection() ?>